package com.docker.deploy.controllers;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.web.bind.annotation.RestController
public class RestController
{
	@RequestMapping("/rest/test")
	public String start()
	{
		return "Hello, server";
	}
}
