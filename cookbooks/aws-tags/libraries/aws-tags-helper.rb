module AWSTags
	module Helper

		def service_tag(service)
			log "Adding service tag '#{service}'..."
			machine_tag "ec2:service=#{service}"
		end

		def deployment_tag(deployment)
			log "Adding deployment tag '#{deployment}'..."
			machine_tag "ec2:deployment=#{deployment}"
		end

        def functional_role_tag(functional_role)
            log "Adding functional_role tag '#{functional_role}'..."
            machine_tag "ec2:functional_role=#{functional_role}"
        end

        def technical_role_tag(technical_role)
            log "Adding technical_role tag '#{technical_role}'..."
            machine_tag "ec2:technical_role=#{technical_role}"
        end

	end
end
