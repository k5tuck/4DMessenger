#pragma once

#include <spdlog/spdlog.h>


namespace SM {
	
	class Log
	{
		public:
			static void Init();

			static std::shared_ptr<spdlog::logger>& GetCoreLogger() { return Core_Logger; }
			static std::shared_ptr<spdlog::logger>& GetClientLogger() { return Client_Logger; }
			static std::shared_ptr<spdlog::logger>& GetBioLogger() { return Bio_Logger; }

		private:   
			static std::shared_ptr<spdlog::logger> Core_Logger;
			static std::shared_ptr<spdlog::logger> Client_Logger;
			static std::shared_ptr<spdlog::logger> Log::Bio_Logger;

	};

}

#define SM_CORE_Info(...)          ::SM::Log::GetCoreLogger()->info(__VA_ARGS__);
#define SM_CORE_Warn(...)          ::SM::Log::GetCoreLogger()->warn(__VA_ARGS__);
#define SM_CORE_Error(...)         ::SM::Log::GetCoreLogger()->error(__VA_ARGS__);
#define SM_CORE_Critical(...)      ::SM::Log::GetCoreLogger()->critical(__VA_ARGS__);

#define SM_Info(...)        ::SM::Log::GetClientLogger()->info(__VA_ARGS__);
#define SM_Warn(...)        ::SM::Log::GetClientLogger()->warn(__VA_ARGS__);
#define SM_Error(...)       ::SM::Log::GetClientLogger()->error(__VA_ARGS__);
#define SM_Critical(...)    ::SM::Log::GetClientLogger()->critical(__VA_ARGS__);

#define SM_BIO_Info(...)          ::SM::Log::GetBioLogger()->info(__VA_ARGS__);
#define SM_BIO_Warn(...)          ::SM::Log::GetBioLogger()->warn(__VA_ARGS__);
#define SM_BIO_Error(...)         ::SM::Log::GetBioLogger()->error(__VA_ARGS__);
#define SM_BIO_Critical(...)      ::SM::Log::GetBioLogger()->critical(__VA_ARGS__);