package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;
/* loaded from: classes2.dex */
public interface Request<T> {
    Map<String, String> a();

    void b(InputStream inputStream);

    AWSRequestMetrics c();

    @Deprecated
    void d(String str);

    long e();

    void f(AWSRequestMetrics aWSRequestMetrics);

    void g(Map<String, String> map);

    InputStream getContent();

    URI getEndpoint();

    Map<String, String> getParameters();

    String h();

    boolean i();

    HttpMethodName j();

    void k(HttpMethodName httpMethodName);

    @Deprecated
    String l();

    String m();

    String n();

    void o(long j10);

    void p(String str, String str2);

    void q(String str, String str2);

    AmazonWebServiceRequest r();

    void s(boolean z10);

    void t(Map<String, String> map);

    void u(URI uri);
}
