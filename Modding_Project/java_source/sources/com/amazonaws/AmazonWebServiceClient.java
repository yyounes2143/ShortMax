package com.amazonaws;

import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public abstract class AmazonWebServiceClient {

    /* renamed from: k  reason: collision with root package name */
    private static final Log f4829k = LogFactory.b(AmazonWebServiceClient.class);

    /* renamed from: a  reason: collision with root package name */
    protected volatile URI f4830a;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f4831b;

    /* renamed from: c  reason: collision with root package name */
    protected ClientConfiguration f4832c;

    /* renamed from: d  reason: collision with root package name */
    protected AmazonHttpClient f4833d;

    /* renamed from: e  reason: collision with root package name */
    protected final List<RequestHandler2> f4834e = new CopyOnWriteArrayList();

    /* renamed from: f  reason: collision with root package name */
    protected long f4835f;

    /* renamed from: g  reason: collision with root package name */
    private volatile Signer f4836g;

    /* renamed from: h  reason: collision with root package name */
    private volatile String f4837h;

    /* renamed from: i  reason: collision with root package name */
    protected volatile String f4838i;

    /* renamed from: j  reason: collision with root package name */
    private volatile Region f4839j;

    /* JADX INFO: Access modifiers changed from: protected */
    public AmazonWebServiceClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f4832c = clientConfiguration;
        this.f4833d = new AmazonHttpClient(clientConfiguration, httpClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public static boolean E() {
        if (System.getProperty("com.amazonaws.sdk.enableRuntimeProfiling") != null) {
            return true;
        }
        return false;
    }

    @Deprecated
    private boolean F() {
        RequestMetricCollector H = H();
        if (H != null && H.b()) {
            return true;
        }
        return false;
    }

    private URI I(String str) {
        if (!str.contains("://")) {
            str = this.f4832c.c().toString() + "://" + str;
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    private String r() {
        int i10;
        String simpleName = Classes.childClassOf(AmazonWebServiceClient.class, this).getSimpleName();
        String serviceName = ServiceNameFactory.getServiceName(simpleName);
        if (serviceName != null) {
            return serviceName;
        }
        int indexOf = simpleName.indexOf("JavaClient");
        if (indexOf == -1 && (indexOf = simpleName.indexOf("Client")) == -1) {
            throw new IllegalStateException("Unrecognized suffix for the AWS http client class name " + simpleName);
        }
        int indexOf2 = simpleName.indexOf("Amazon");
        if (indexOf2 == -1) {
            indexOf2 = simpleName.indexOf("AWS");
            if (indexOf2 != -1) {
                i10 = 3;
            } else {
                throw new IllegalStateException("Unrecognized prefix for the AWS http client class name " + simpleName);
            }
        } else {
            i10 = 6;
        }
        if (indexOf2 < indexOf) {
            return StringUtils.b(simpleName.substring(indexOf2 + i10, indexOf));
        }
        throw new IllegalStateException("Unrecognized AWS http client class name " + simpleName);
    }

    private Signer s(String str, String str2, String str3, boolean z10) {
        Signer c10;
        String e10 = this.f4832c.e();
        if (e10 == null) {
            c10 = SignerFactory.b(str, str2);
        } else {
            c10 = SignerFactory.c(e10, str);
        }
        if (c10 instanceof RegionAwareSigner) {
            RegionAwareSigner regionAwareSigner = (RegionAwareSigner) c10;
            if (str3 != null) {
                regionAwareSigner.setRegionName(str3);
            } else if (str2 != null && z10) {
                regionAwareSigner.setRegionName(str2);
            }
        }
        synchronized (this) {
            this.f4839j = Region.f(str2);
        }
        return c10;
    }

    private Signer t(URI uri, String str, boolean z10) {
        if (uri != null) {
            String B = B();
            return s(B, AwsHostNameUtils.a(uri.getHost(), B), str, z10);
        }
        throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
    }

    @Deprecated
    public RequestMetricCollector A() {
        return this.f4833d.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String B() {
        if (this.f4837h == null) {
            synchronized (this) {
                try {
                    if (this.f4837h == null) {
                        this.f4837h = r();
                        return this.f4837h;
                    }
                } finally {
                }
            }
        }
        return this.f4837h;
    }

    public Signer C(URI uri) {
        return t(uri, this.f4831b, true);
    }

    public final String D() {
        return this.f4831b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final boolean G(AmazonWebServiceRequest amazonWebServiceRequest) {
        RequestMetricCollector j10 = amazonWebServiceRequest.j();
        if (j10 != null && j10.b()) {
            return true;
        }
        return F();
    }

    @Deprecated
    protected RequestMetricCollector H() {
        RequestMetricCollector f10 = this.f4833d.f();
        if (f10 == null) {
            return AwsSdkMetrics.getRequestMetricCollector();
        }
        return f10;
    }

    public void a(Region region) {
        String format;
        if (region != null) {
            String B = B();
            if (region.i(B)) {
                format = region.g(B);
                int indexOf = format.indexOf("://");
                if (indexOf >= 0) {
                    format = format.substring(indexOf + 3);
                }
            } else {
                format = String.format("%s.%s.%s", y(), region.d(), region.a());
            }
            URI I = I(format);
            Signer s10 = s(B, region.d(), this.f4831b, false);
            synchronized (this) {
                this.f4830a = I;
                this.f4836g = s10;
            }
            return;
        }
        throw new IllegalArgumentException("No region provided");
    }

    public void b(String str) {
        URI I = I(str);
        Signer t10 = t(I, this.f4831b, false);
        synchronized (this) {
            this.f4830a = I;
            this.f4836g = t10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExecutionContext u(AmazonWebServiceRequest amazonWebServiceRequest) {
        boolean z10;
        if (!G(amazonWebServiceRequest) && !E()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return new ExecutionContext(this.f4834e, z10, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final void v(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response) {
        w(aWSRequestMetrics, request, response, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public final void w(AWSRequestMetrics aWSRequestMetrics, Request<?> request, Response<?> response, boolean z10) {
        if (request != null) {
            aWSRequestMetrics.b(AWSRequestMetrics.Field.ClientExecuteTime);
            aWSRequestMetrics.c().c();
            x(request).a(request, response);
        }
        if (z10) {
            aWSRequestMetrics.e();
        }
    }

    @Deprecated
    protected final RequestMetricCollector x(Request<?> request) {
        RequestMetricCollector j10 = request.r().j();
        if (j10 != null) {
            return j10;
        }
        RequestMetricCollector A = A();
        if (A == null) {
            return AwsSdkMetrics.getRequestMetricCollector();
        }
        return A;
    }

    public String y() {
        return this.f4838i;
    }

    public Regions z() {
        Regions fromName;
        synchronized (this) {
            fromName = Regions.fromName(this.f4839j.d());
        }
        return fromName;
    }
}
