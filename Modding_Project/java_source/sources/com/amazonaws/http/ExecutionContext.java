package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;
/* loaded from: classes2.dex */
public class ExecutionContext {

    /* renamed from: a  reason: collision with root package name */
    private final AWSRequestMetrics f4987a;

    /* renamed from: b  reason: collision with root package name */
    private final List<RequestHandler2> f4988b;

    /* renamed from: c  reason: collision with root package name */
    private String f4989c;

    /* renamed from: d  reason: collision with root package name */
    private final AmazonWebServiceClient f4990d;

    /* renamed from: e  reason: collision with root package name */
    private AWSCredentials f4991e;

    public ExecutionContext(List<RequestHandler2> list, boolean z10, AmazonWebServiceClient amazonWebServiceClient) {
        AWSRequestMetrics aWSRequestMetrics;
        this.f4988b = list;
        if (z10) {
            aWSRequestMetrics = new AWSRequestMetricsFullSupport();
        } else {
            aWSRequestMetrics = new AWSRequestMetrics();
        }
        this.f4987a = aWSRequestMetrics;
        this.f4990d = amazonWebServiceClient;
    }

    @Deprecated
    public AWSRequestMetrics a() {
        return this.f4987a;
    }

    public String b() {
        return this.f4989c;
    }

    public AWSCredentials c() {
        return this.f4991e;
    }

    public List<RequestHandler2> d() {
        return this.f4988b;
    }

    public Signer e(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.f4990d;
        if (amazonWebServiceClient == null) {
            return null;
        }
        return amazonWebServiceClient.C(uri);
    }

    public void f(AWSCredentials aWSCredentials) {
        this.f4991e = aWSCredentials;
    }

    public void g(Signer signer) {
    }
}
