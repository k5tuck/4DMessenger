#pragma once

#include "Star.h"
#include <GLFW/glfw3.h>

namespace SM {

	class Application
	{
		public: 
			Application();
			virtual ~Application();

			Application* GetApplication() { return app_Instance; }
			void Close();

		private:
			void Run();

		private:	
			static Application* app_Instance;
	};

	//extern Application* StartApp();
}
