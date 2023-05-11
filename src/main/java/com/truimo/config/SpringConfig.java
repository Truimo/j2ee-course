package com.truimo.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@ComponentScan("com.truimo.service")
@Import({JdbcConfig.class, MyBatisConfig.class})
public class SpringConfig {
}
