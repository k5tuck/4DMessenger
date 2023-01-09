#include <starpch.h>
#include "Log.h"

#include <spdlog/sinks/stdout_color_sinks.h>

namespace SM {

	void Log::Init() 
	{
		//spdlog::set_pattern("%^[%T] %n: %v%$");
		spdlog::set_pattern("%n [%x %R]: %^%l%$ - %v");

		Core_Logger = spdlog::stdout_color_mt("ENGINE");
		Core_Logger->set_level(spdlog::level::trace);

		Client_Logger = spdlog::stdout_color_mt("CLIENT");
		Client_Logger->set_level(spdlog::level::trace);

		Bio_Logger = spdlog::stdout_color_mt("BIOSYS");
		Bio_Logger->set_level(spdlog::level::trace);
	};
	
	std::shared_ptr<spdlog::logger> Log::Core_Logger;
	std::shared_ptr<spdlog::logger> Log::Client_Logger;
	std::shared_ptr<spdlog::logger> Log::Bio_Logger;
}