package com.truimo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan({"com.truimo.controller", "com.truimo.handler"})
@EnableWebMvc
public class SpringMvcConfig {
}
