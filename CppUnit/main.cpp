#include <cppunit/extensions/TestFactoryRegistry.h>
#include <cppunit/ui/text/TestRunner.h>

int main(int argc, char* argv[])
{
    CppUnit::TextUi::TestRunner runner;
   
    // 从注册的TestSuite中获取特定的TestSuite, 没有参数获取未命名的TestSuite.
    CppUnit::TestFactoryRegistry &registry = 
        CppUnit::TestFactoryRegistry::getRegistry("alltest");
    
    // 添加这个TestSuite到TestRunner中
    runner.addTest( registry.makeTest() );
    
    // 运行测试
    return runner.run();
}