#include "utils.h"

char* toCharPtr(std::string str){
    int len = sizeof(char)*(str.length() + 1);
    char* res = (char*)malloc(len);
    memcpy(res, str.c_str(), len);
    return res;
}