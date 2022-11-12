package com.watermonitor.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages="com.watermonitor.repository")
@EntityScan(basePackages="com.watermonitor.entity")
public class ApplicationConfig {

}
