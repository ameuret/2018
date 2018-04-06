# frozen_string_literal: true

# This module helps beautify the log entries for key/value pairs
module LogPyramid
  BORING = %w[HTTP_UPGRADE_INSECURE_REQUESTS].freeze

  def logSlice(left, right, color = :default)
    return if right.to_s.empty?
    LOG.info("#{Paint[left.rjust(20), color]} : " \
             "#{Paint[right.to_s.dump.ljust(40), color]}")
  end

  def logEnv(req)
    %w[rack.url_scheme
       SERVER_NAME
       SERVER_PORT].each { |v| logSlice(v, req.env[v]) }

    logSlice(req.env['REQUEST_METHOD'],
             "#{req.env['SCRIPT_NAME']}<+>#{req.env['PATH_INFO']}", :green)

    logSlice('', req.env['QUERY_STRING'])

    req.env.each do |k, v|
      next if BORING.include? k
      next unless k.start_with?('HTTP_')
      logSlice(k, v)
    end
  end
end
