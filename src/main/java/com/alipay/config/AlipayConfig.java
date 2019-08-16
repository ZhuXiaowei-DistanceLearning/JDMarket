package com.alipay.config;
/*ejcbsx6100@sandbox.com*/
public class AlipayConfig {
    // 商户appid
    public static String APPID = "2016101000650017";
    // 私钥 pkcs8格式的
    public static String RSA_PRIVATE_KEY = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCFt/z6gV/3L8xDrttp+ROnr1PMpdt/djXS3j7N1IPXpbHDRXiEFlGMpFEza8MWTI/RYV4BDeaF3MnCsWkR0Ano3f8oaTjdbmiXE2lY/EP6eQFFNEaAamWeFY3w5/OgwUo8prL+zZRoCsKlldWzuMg+kkdxGSRF3+p38PmYgqw8vl/ROwf8v1af7hEAgQ1D5dWTGvaiWTpHLhowztIuChwCNJu2Rin3C80LFOx87Q3fbx/7TzCJ6AHLmllM6W/Sdb8x84O4CRi+Ct7RtyCwZvnugP7aYA5D/Qx0Wbg2x7fKTWOc3rBvjmoE2m+0Dkd6Qpkqe2mPXKxezn7I9LOzxEKrAgMBAAECggEAbOhyWZD/mTLL2iBTQleEI6HPzbEUOhcMNWefnULF8uBYDOPLCUGoP7UhEZFmPgYzaGQ2DQPGSiaOCU03dzOKrqgIhmBU2TxwYQOFXN1xfFILr9KozTRa+Usy5Q/1xGtJTGa1CIRlp+uDpxuHBy6roRLAryO8AFEkBXY1w3pCT+G9D/1yCLjG2XIvMopLQ8F1d4HvBsEsg495EF9pI+P5WdS956jEU5ZoEyBbpCqz3Q06YXisiB8ym+tQ8VpGgkYDDpCt4jEgoPKJMIwMVTyfryGepJ6I3XtVLGOWIxFHWh9S4FJ8wLeTIGzjkWv61z0DeNXGo7HbXuaqGzxWD8yM+QKBgQD+guRjH0Wj1+cNuHQWH4rrf2WfNf1pOpV35s78wBHpGJ7r5UMsGHPiXnr9UBLQjpyycDwD/p7N2X+mDSZ3PPhpxHmCsz8X0zVjrstbAe6uz1naMyXYQG5raxbCafpjBHCzUxD3lhq9gqobqqP2PxENTHjGvp2c7xgubwYfsR0KpQKBgQCGgDhQQviF4l4FJMXug33KU7+XyvmBYgYhTeCJcGt2NQMZ0ndqmrh+RVSG0J9TDEL9Wt6KuIOjuiw/62NWhtvrlwV8bBsk+BM4XrBCH7XO6gZ84DfgtfrOXrgaCnGqpQjU6a3QPSflix+w0y293HoBvu9zDcnShwQgFYc55XOnDwKBgEuQjUKozEJjHeTC+SSAZPyarI9itkSB8lLRIm+Ej0zH1JdxUEpNUErLhnSjS5LEZN3N2OPOu1Oe2flxOhR488BjZzhZA8iNGvLnuNTic/1O7vyL5xaXurEF8JH0aTTw4o07gnQgCvxtSRhBx8Ca5PMv20QW4DDyBBn1OLo8GcVJAoGAXGRZyrCmfXnJcikXmkdTMpgjBYeVq04Fvfz8IA1MlG/ICIXuKBnOYFcJwG4w8+B5aAZy1sH3E5JA8Uul+ns7OPON/jFY2CVdNpy84T9dKZzTBhcT61W2yup/9stz12/0yCUZk/FepazTASmfw0tfuDFL1TIEkIzUxaFkOd4nevsCgYEAs2ynFu2/afNN+KwcRG+6+CHrnCfOuQp2jyalyjCP6zib4hOKmScL4relkZCD1rcNTTqb+OCSSkscpuZ9gdq7Kc8RTiinqKUQElBrQzn7blS/3bKZnxA0OpkK4ReyZOSjrY3jDqcCU+YPgMH6UclaPecqsL6FV29TQdv5R9AtIZg=";
    // 服务器异步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/purse_updatePurse";
    // 页面跳转同步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问 商户可以自定义同步跳转地址
    public static String return_url = "http://localhost:8080/purse_updatePurse";
    // 请求网关地址
    public static String URL = "https://openapi.alipaydev.com/gateway.do";
    // 编码
    public static String CHARSET = "UTF-8";
    // 返回格式
    public static String FORMAT = "json";
    // 支付宝公钥
    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkRjWjIlrLPbVRlNxCEO6Nt9rNNAeaOqioDzWesn/Le+I/DzuGlujaz1/1Oi910oIPsjXpVkEhzGCeTuo+WpMNwvuMFCx9edDL1oCMEjCipmHQVUWPLJN2HihRkkbwbztwTIvGFY8DPwb0eyguiCoWupstnvu65zN2Z87ez21WHjOkd8HQjz1K3Gayxz91hqSWbKaFhQIYSss3fK+zRzS//adUgCIr/SotFJ2rIoPDVUo0raZ/HJtGUHLnMSxT7ZhsOpJRTcQS9y2ZPyFN/D3QMKU/wDF+SzX6ab4x1KF4dMF24SBhjm+VwuQoqRfhvq/lFOnYN+4qUyseYlyo8nvFQIDAQAB";
    // 日志记录目录
    public static String log_path = "/log";
    // RSA2
    public static String SIGNTYPE = "RSA2";
}
