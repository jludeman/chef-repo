module aws_tags
	module helper

		def service_tag(service)
			log "Adding service tag '#{service}'..."
			machine_tag "ec2:service=#{service}"
		end

		def deployment_tag(deployment)
			log "Adding deployment tag '#{deployment}'..."
			machine_tag "ec2:deployment=#{deployment}"
		end

	end
end
