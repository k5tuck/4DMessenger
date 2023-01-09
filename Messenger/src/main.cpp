#include <starpch.h>
#include <Star.h>

//namespace SM {
//
//	class Test : public Application {};
//
//	Application* StartApp() { return new Test(); }
//}


int main() {

	//auto app = StartApp();

	SM::Log::Init();

	SM_CORE_Info("Testing STAR Logger");
	SM_CORE_Error("Error Testing STAR Logger");

	SM_Warn("Testing WARN MESSENGER Logger");
	SM_Info("Testing MESSENGER Logger");

	SM_BIO_Error("Testing WARNING BIOSYS Logger");
	SM_BIO_Critical("Testing CRITICAL BIOSYS　Logger");

	//app->Close();

	//std::cin.get();

	return 0;
}