

#include <iostream>
#include <string>
#include <curl/curl.h>

int main(){
    // std::cout << "hello curl" << std::endl;
    CURL *curl = curl_easy_init();
    if(curl == nullptr){
        throw std::runtime_error("curl create failed!");
        return -1;
    }

    curl_easy_setopt(curl , CURLOPT_URL , "www.baidu.com");
    auto resp = curl_easy_perform(curl);
    
    return 0;
}
