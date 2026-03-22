package com.amazonaws;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class DefaultRequest<T> implements Request<T> {

    /* renamed from: a  reason: collision with root package name */
    private String f4869a;

    /* renamed from: e  reason: collision with root package name */
    private URI f4873e;

    /* renamed from: f  reason: collision with root package name */
    private String f4874f;

    /* renamed from: g  reason: collision with root package name */
    private final AmazonWebServiceRequest f4875g;

    /* renamed from: i  reason: collision with root package name */
    private InputStream f4877i;

    /* renamed from: j  reason: collision with root package name */
    private long f4878j;

    /* renamed from: k  reason: collision with root package name */
    private AWSRequestMetrics f4879k;

    /* renamed from: l  reason: collision with root package name */
    private String f4880l;

    /* renamed from: m  reason: collision with root package name */
    private String f4881m;

    /* renamed from: b  reason: collision with root package name */
    private boolean f4870b = false;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f4871c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f4872d = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    private HttpMethodName f4876h = HttpMethodName.POST;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f4874f = str;
        this.f4875g = amazonWebServiceRequest;
    }

    @Override // com.amazonaws.Request
    public Map<String, String> a() {
        return this.f4872d;
    }

    @Override // com.amazonaws.Request
    public void b(InputStream inputStream) {
        this.f4877i = inputStream;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public AWSRequestMetrics c() {
        return this.f4879k;
    }

    @Override // com.amazonaws.Request
    public void d(String str) {
        this.f4869a = str;
    }

    @Override // com.amazonaws.Request
    public long e() {
        return this.f4878j;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public void f(AWSRequestMetrics aWSRequestMetrics) {
        if (this.f4879k == null) {
            this.f4879k = aWSRequestMetrics;
            return;
        }
        throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
    }

    @Override // com.amazonaws.Request
    public void g(Map<String, String> map) {
        this.f4872d.clear();
        this.f4872d.putAll(map);
    }

    @Override // com.amazonaws.Request
    public InputStream getContent() {
        return this.f4877i;
    }

    @Override // com.amazonaws.Request
    public URI getEndpoint() {
        return this.f4873e;
    }

    @Override // com.amazonaws.Request
    public Map<String, String> getParameters() {
        return this.f4871c;
    }

    @Override // com.amazonaws.Request
    public String h() {
        return this.f4880l;
    }

    @Override // com.amazonaws.Request
    public boolean i() {
        return this.f4870b;
    }

    @Override // com.amazonaws.Request
    public HttpMethodName j() {
        return this.f4876h;
    }

    @Override // com.amazonaws.Request
    public void k(HttpMethodName httpMethodName) {
        this.f4876h = httpMethodName;
    }

    @Override // com.amazonaws.Request
    public String l() {
        return this.f4869a;
    }

    @Override // com.amazonaws.Request
    public String m() {
        return this.f4881m;
    }

    @Override // com.amazonaws.Request
    public String n() {
        return this.f4874f;
    }

    @Override // com.amazonaws.Request
    public void o(long j10) {
        this.f4878j = j10;
    }

    @Override // com.amazonaws.Request
    public void p(String str, String str2) {
        this.f4871c.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public void q(String str, String str2) {
        this.f4872d.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public AmazonWebServiceRequest r() {
        return this.f4875g;
    }

    @Override // com.amazonaws.Request
    public void s(boolean z10) {
        this.f4870b = z10;
    }

    @Override // com.amazonaws.Request
    public void t(Map<String, String> map) {
        this.f4871c.clear();
        this.f4871c.putAll(map);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j());
        sb2.append(" ");
        sb2.append(getEndpoint());
        sb2.append(" ");
        String l10 = l();
        if (l10 == null) {
            sb2.append(DomExceptionUtils.SEPARATOR);
        } else {
            if (!l10.startsWith(DomExceptionUtils.SEPARATOR)) {
                sb2.append(DomExceptionUtils.SEPARATOR);
            }
            sb2.append(l10);
        }
        sb2.append(" ");
        if (!getParameters().isEmpty()) {
            sb2.append("Parameters: (");
            for (String str : getParameters().keySet()) {
                sb2.append(str);
                sb2.append(": ");
                sb2.append(getParameters().get(str));
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        if (!a().isEmpty()) {
            sb2.append("Headers: (");
            for (String str2 : a().keySet()) {
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(a().get(str2));
                sb2.append(", ");
            }
            sb2.append(") ");
        }
        return sb2.toString();
    }

    @Override // com.amazonaws.Request
    public void u(URI uri) {
        this.f4873e = uri;
    }
}
