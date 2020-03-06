/**
 * 系统内置库: io
 * 系统内置库: math
 */

import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() async {
  var result = await _getApiInfo();
  print(result);

  print(min(1, 2));
}

_getApiInfo() async {
  // 1. 创建http client对象
  var httpClient = new HttpClient();
  // 2. 创建Uri对象
  var uri = new Uri.https('m.douban.com', '/rexxar/api/v2/muzzy/columns/10018/items?start=0&count=3');
  // 3. 发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  // 4. 关闭请求，等待响应
  var response = await request.close();
  // 5. 解码响应的内容
  return await response.transform(utf8.decoder).join();
}