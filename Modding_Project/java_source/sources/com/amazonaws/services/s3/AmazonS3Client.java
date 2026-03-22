package com.amazonaws.services.s3;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AbortedException;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressReportingInputStream;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.RegionUtils;
import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.internal.AWSS3V4Signer;
import com.amazonaws.services.s3.internal.BucketNameUtils;
import com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition;
import com.amazonaws.services.s3.internal.InputSubstream;
import com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler;
import com.amazonaws.services.s3.internal.RepeatableFileInputStream;
import com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain;
import com.amazonaws.services.s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.s3.internal.S3ExecutionContext;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3MetadataResponseHandler;
import com.amazonaws.services.s3.internal.S3ObjectResponseHandler;
import com.amazonaws.services.s3.internal.S3RequesterChargedHeaderHandler;
import com.amazonaws.services.s3.internal.S3Signer;
import com.amazonaws.services.s3.internal.S3VersionHeaderHandler;
import com.amazonaws.services.s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.s3.internal.ServerSideEncryptionHeaderHandler;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.HeadBucketRequest;
import com.amazonaws.services.s3.model.HeadBucketResult;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.SSECustomerKey;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.HeadBucketResultHandler;
import com.amazonaws.services.s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.RequestXmlFactory;
import com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.services.s3.util.Mimetypes;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.LengthCheckInputStream;
import com.amazonaws.util.Md5Utils;
import com.amazonaws.util.RuntimeHttpUtils;
import com.amazonaws.util.ServiceClientHolderInputStream;
import com.amazonaws.util.ValidationUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
/* loaded from: classes2.dex */
public class AmazonS3Client extends AmazonWebServiceClient implements AmazonS3 {

    /* renamed from: s  reason: collision with root package name */
    private static Log f5888s = LogFactory.b(AmazonS3Client.class);

    /* renamed from: t  reason: collision with root package name */
    private static final BucketConfigurationXmlFactory f5889t;

    /* renamed from: u  reason: collision with root package name */
    private static final RequestPaymentConfigurationXmlFactory f5890u;

    /* renamed from: v  reason: collision with root package name */
    private static final Map<String, String> f5891v;

    /* renamed from: l  reason: collision with root package name */
    private final S3ErrorResponseHandler f5892l;

    /* renamed from: m  reason: collision with root package name */
    private final S3XmlResponseHandler<Void> f5893m;

    /* renamed from: n  reason: collision with root package name */
    protected S3ClientOptions f5894n;

    /* renamed from: o  reason: collision with root package name */
    private final AWSCredentialsProvider f5895o;

    /* renamed from: p  reason: collision with root package name */
    volatile String f5896p;

    /* renamed from: q  reason: collision with root package name */
    private int f5897q;

    /* renamed from: r  reason: collision with root package name */
    private final CompleteMultipartUploadRetryCondition f5898r;

    static {
        AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.b()));
        SignerFactory.e("AWSS3V4SignerType", AWSS3V4Signer.class);
        f5889t = new BucketConfigurationXmlFactory();
        f5890u = new RequestPaymentConfigurationXmlFactory();
        f5891v = Collections.synchronizedMap(new LinkedHashMap<String, String>(300, 1.1f, true) { // from class: com.amazonaws.services.s3.AmazonS3Client.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, String> entry) {
                if (size() > 300) {
                    return true;
                }
                return false;
            }
        });
    }

    @Deprecated
    public AmazonS3Client() {
        this(new DefaultAWSCredentialsProviderChain());
    }

    private static void J(Request<? extends AmazonWebServiceRequest> request, AccessControlList accessControlList) {
        Permission[] values;
        Set<Grant> e10 = accessControlList.e();
        HashMap hashMap = new HashMap();
        for (Grant grant : e10) {
            if (!hashMap.containsKey(grant.b())) {
                hashMap.put(grant.b(), new LinkedList());
            }
            ((Collection) hashMap.get(grant.b())).add(grant.a());
        }
        for (Permission permission : Permission.values()) {
            if (hashMap.containsKey(permission)) {
                StringBuilder sb2 = new StringBuilder();
                boolean z10 = false;
                for (Grantee grantee : (Collection) hashMap.get(permission)) {
                    if (!z10) {
                        z10 = true;
                    } else {
                        sb2.append(", ");
                    }
                    sb2.append(grantee.getTypeIdentifier());
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append("\"");
                    sb2.append(grantee.getIdentifier());
                    sb2.append("\"");
                }
                request.q(permission.getHeaderName(), sb2.toString());
            }
        }
    }

    private static void K(Request<?> request, String str, Date date) {
        if (date != null) {
            request.q(str, ServiceUtils.a(date));
        }
    }

    private static void L(Request<?> request, String str, String str2) {
        if (str2 != null) {
            request.q(str, str2);
        }
    }

    private static void N(Request<?> request, String str, List<String> list) {
        if (list != null && !list.isEmpty()) {
            request.q(str, ServiceUtils.b(list));
        }
    }

    private long O(InputStream inputStream) {
        byte[] bArr = new byte[8192];
        inputStream.mark(-1);
        long j10 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    j10 += read;
                } else {
                    inputStream.reset();
                    return j10;
                }
            } catch (IOException e10) {
                throw new AmazonClientException("Could not calculate content length.", e10);
            }
        }
    }

    private URI P(URI uri, String str) {
        try {
            return new URI(uri.getScheme() + "://" + str + "." + uri.getAuthority());
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException("Invalid bucket name: " + str, e10);
        }
    }

    @Deprecated
    private S3Signer S(Request<?> request, String str, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(DomExceptionUtils.SEPARATOR);
        if (str == null) {
            str3 = "";
        } else {
            str3 = str + DomExceptionUtils.SEPARATOR;
        }
        sb2.append(str3);
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        return new S3Signer(request.j().toString(), sb2.toString());
    }

    private String U(String str) {
        Map<String, String> map = f5891v;
        String str2 = map.get(str);
        if (str2 == null) {
            if (f5888s.i()) {
                Log log = f5888s;
                log.h("Bucket region cache doesn't have an entry for " + str + ". Trying to get bucket region from Amazon S3.");
            }
            str2 = W(str);
            if (str2 != null) {
                map.put(str, str2);
            }
        }
        if (f5888s.i()) {
            Log log2 = f5888s;
            log2.h("Region for " + str + " is " + str2);
        }
        return str2;
    }

    private void V(ProgressListenerCallbackExecutor progressListenerCallbackExecutor, int i10) {
        if (progressListenerCallbackExecutor == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.c(i10);
        progressListenerCallbackExecutor.c(progressEvent);
    }

    private String W(String str) {
        String str2 = null;
        try {
            str2 = ((HeadBucketResult) d0(R(str, null, new HeadBucketRequest(str), HttpMethodName.HEAD, new URI("https://s3-us-west-1.amazonaws.com")), new HeadBucketResultHandler(), str, null)).a();
        } catch (AmazonS3Exception e10) {
            if (e10.r() != null) {
                str2 = e10.r().get("x-amz-bucket-region");
            }
        } catch (URISyntaxException unused) {
            f5888s.g("Error while creating URI");
        }
        if (str2 == null && f5888s.i()) {
            Log log = f5888s;
            log.h("Not able to derive region of the " + str + " from the HEAD Bucket requests.");
        }
        return str2;
    }

    private String X(String str) {
        if (str != null && str.startsWith(DomExceptionUtils.SEPARATOR)) {
            return DomExceptionUtils.SEPARATOR + str;
        }
        return str;
    }

    private String Y(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(DomExceptionUtils.SEPARATOR);
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        return sb2.toString();
    }

    private String a0() {
        String D = D();
        if (D == null) {
            return this.f5896p;
        }
        return D;
    }

    @Deprecated
    private void b0() {
        b("s3.amazonaws.com");
        this.f4838i = "s3";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f4834e.addAll(handlerChainFactory.c("/com/amazonaws/services/s3/request.handlers"));
        this.f4834e.addAll(handlerChainFactory.b("/com/amazonaws/services/s3/request.handler2s"));
    }

    private void c0(Region region, ClientConfiguration clientConfiguration) {
        if (this.f5895o != null) {
            if (region != null) {
                this.f4832c = clientConfiguration;
                this.f4838i = "s3";
                b("s3.amazonaws.com");
                a(region);
                HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
                this.f4834e.addAll(handlerChainFactory.c("/com/amazonaws/services/s3/request.handlers"));
                this.f4834e.addAll(handlerChainFactory.b("/com/amazonaws/services/s3/request.handler2s"));
                Log log = f5888s;
                log.h("initialized with endpoint = " + this.f4830a);
                return;
            }
            throw new IllegalArgumentException("Region cannot be null. Region is required to sign the request");
        }
        throw new IllegalArgumentException("Credentials cannot be null. Credentials is required to sign the request");
    }

    private <X, Y extends AmazonWebServiceRequest> X d0(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, String str, String str2) {
        AmazonWebServiceRequest r10 = request.r();
        ExecutionContext u10 = u(r10);
        AWSRequestMetrics a10 = u10.a();
        request.f(a10);
        a10.g(AWSRequestMetrics.Field.ClientExecuteTime);
        Response<?> response = null;
        try {
            try {
                request.o(this.f4835f);
                if (!request.a().containsKey(CommonGatewayClient.HEADER_CONTENT_TYPE)) {
                    request.q(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/octet-stream");
                }
                if (str != null) {
                    request.r();
                    if (h0(request)) {
                        U(str);
                    }
                }
                AWSCredentials credentials = this.f5895o.getCredentials();
                if (r10.i() != null) {
                    credentials = r10.i();
                }
                u10.g(T(request, str, str2));
                u10.f(credentials);
                response = this.f4833d.d(request, httpResponseHandler, this.f5892l, u10);
                X x10 = (X) response.a();
                v(a10, request, response);
                return x10;
            } catch (AmazonS3Exception e10) {
                if (e10.g() == 301 && e10.r() != null) {
                    String str3 = e10.r().get("x-amz-bucket-region");
                    f5891v.put(str, str3);
                    e10.i("The bucket is in this region: " + str3 + ". Please use this region to retry the request");
                }
                throw e10;
            }
        } catch (Throwable th2) {
            v(a10, request, response);
            throw th2;
        }
    }

    private boolean e0() {
        ClientConfiguration clientConfiguration = this.f4832c;
        if (clientConfiguration != null && clientConfiguration.e() != null) {
            return true;
        }
        return false;
    }

    private boolean f0(URI uri) {
        return uri.getHost().endsWith("s3.amazonaws.com");
    }

    static boolean g0(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split("\\.");
        if (split.length != 4) {
            return false;
        }
        for (String str2 : split) {
            try {
                int parseInt = Integer.parseInt(str2);
                if (parseInt >= 0 && parseInt <= 255) {
                }
            } catch (NumberFormatException unused) {
            }
            return false;
        }
        return true;
    }

    private boolean h0(Request<?> request) {
        if (f0(request.getEndpoint()) && a0() == null) {
            return true;
        }
        return false;
    }

    protected static void i0(Request<?> request, ObjectMetadata objectMetadata) {
        Map<String, Object> E = objectMetadata.E();
        if (E.get("x-amz-server-side-encryption-aws-kms-key-id") != null && !ObjectMetadata.f6110i.equals(E.get("x-amz-server-side-encryption"))) {
            throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
        }
        for (Map.Entry<String, Object> entry : E.entrySet()) {
            request.q(entry.getKey(), entry.getValue().toString());
        }
        Date C = objectMetadata.C();
        if (C != null) {
            request.q("Expires", DateUtils.d(C));
        }
        Map<String, String> L = objectMetadata.L();
        if (L != null) {
            for (Map.Entry<String, String> entry2 : L.entrySet()) {
                String key = entry2.getKey();
                String value = entry2.getValue();
                if (key != null) {
                    key = key.trim();
                }
                if (value != null) {
                    value = value.trim();
                }
                if (!"x-amz-tagging".equals(key)) {
                    request.q("x-amz-meta-" + key, value);
                }
            }
        }
    }

    protected static void j0(Request<?> request, boolean z10) {
        if (z10) {
            request.q("x-amz-request-payer", "requester");
        }
    }

    private static void l0(Request<?> request, SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        if (sSEAwsKeyManagementParams != null) {
            L(request, "x-amz-server-side-encryption", sSEAwsKeyManagementParams.d());
            L(request, "x-amz-server-side-encryption-aws-kms-key-id", sSEAwsKeyManagementParams.b());
        }
    }

    private void n0(AWSS3V4Signer aWSS3V4Signer, String str) {
        aWSS3V4Signer.setServiceName(B());
        aWSS3V4Signer.setRegionName(str);
    }

    private void o0(Request<?> request) {
        request.q("Content-Length", String.valueOf(0));
    }

    private boolean p0(AmazonWebServiceRequest amazonWebServiceRequest, AmazonS3Exception amazonS3Exception, int i10) {
        RetryPolicy d10 = this.f4832c.d();
        if (d10 == null || d10.c() == null || d10 == PredefinedRetryPolicies.f5779a) {
            return false;
        }
        return this.f5898r.a(amazonWebServiceRequest, amazonS3Exception, i10);
    }

    private boolean q0(URI uri, String str) {
        if (!this.f5894n.e() && BucketNameUtils.isDNSBucketName(str) && !g0(uri.getHost())) {
            return true;
        }
        return false;
    }

    private ByteArrayInputStream r0(InputStream inputStream) {
        int i10 = 262144;
        byte[] bArr = new byte[262144];
        int i11 = 0;
        while (i10 > 0) {
            try {
                int read = inputStream.read(bArr, i11, i10);
                if (read == -1) {
                    break;
                }
                i11 += read;
                i10 -= read;
            } catch (IOException e10) {
                throw new AmazonClientException("Failed to read from inputstream", e10);
            }
        }
        if (inputStream.read() == -1) {
            inputStream.close();
            return new ByteArrayInputStream(bArr, 0, i11);
        }
        throw new AmazonClientException("Input stream exceeds 256k buffer.");
    }

    private String s0(ObjectTagging objectTagging) {
        if (objectTagging != null && objectTagging.b() != null) {
            StringBuilder sb2 = new StringBuilder();
            Iterator<Tag> it = objectTagging.b().iterator();
            while (it.hasNext()) {
                Tag next = it.next();
                sb2.append(S3HttpUtils.b(next.b(), false));
                sb2.append('=');
                sb2.append(S3HttpUtils.b(next.d(), false));
                if (it.hasNext()) {
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                }
            }
            return sb2.toString();
        }
        return null;
    }

    protected <X extends AmazonWebServiceRequest> Request<X> Q(String str, String str2, X x10, HttpMethodName httpMethodName) {
        return R(str, str2, x10, httpMethodName, null);
    }

    protected <X extends AmazonWebServiceRequest> Request<X> R(String str, String str2, X x10, HttpMethodName httpMethodName, URI uri) {
        DefaultRequest defaultRequest = new DefaultRequest(x10, "Amazon S3");
        if (this.f5894n.b()) {
            defaultRequest.r();
            if (this.f5894n.d()) {
                uri = RuntimeHttpUtils.a("s3-accelerate.dualstack.amazonaws.com", this.f4832c);
            } else {
                uri = RuntimeHttpUtils.a("s3-accelerate.amazonaws.com", this.f4832c);
            }
        } else if (this.f5894n.d()) {
            uri = RuntimeHttpUtils.a(String.format("s3.dualstack.%s.amazonaws.com", Z()), this.f4832c);
        }
        defaultRequest.k(httpMethodName);
        m0(defaultRequest, str, str2, uri);
        return defaultRequest;
    }

    protected Signer T(Request<?> request, String str, String str2) {
        URI endpoint;
        String D;
        String str3;
        if (this.f5894n.b()) {
            endpoint = this.f4830a;
        } else {
            endpoint = request.getEndpoint();
        }
        Signer C = C(endpoint);
        if (!e0()) {
            if ((C instanceof AWSS3V4Signer) && h0(request)) {
                if (this.f5896p == null) {
                    str3 = f5891v.get(str);
                } else {
                    str3 = this.f5896p;
                }
                if (str3 != null) {
                    m0(request, str, str2, RuntimeHttpUtils.a(RegionUtils.a(str3).g("s3"), this.f4832c));
                    AWSS3V4Signer aWSS3V4Signer = (AWSS3V4Signer) C;
                    n0(aWSS3V4Signer, str3);
                    return aWSS3V4Signer;
                }
                request.r();
            }
            if (D() == null) {
                if (this.f5896p == null) {
                    D = f5891v.get(str);
                } else {
                    D = this.f5896p;
                }
            } else {
                D = D();
            }
            if (D != null) {
                AWSS3V4Signer aWSS3V4Signer2 = new AWSS3V4Signer();
                n0(aWSS3V4Signer2, D);
                return aWSS3V4Signer2;
            }
        }
        if (C instanceof S3Signer) {
            return S(request, str, str2);
        }
        return C;
    }

    public String Z() {
        String authority = this.f4830a.getAuthority();
        if ("s3.amazonaws.com".equals(authority)) {
            return "us-east-1";
        }
        Matcher matcher = com.amazonaws.services.s3.model.Region.S3_REGIONAL_ENDPOINT_PATTERN.matcher(authority);
        try {
            matcher.matches();
            return RegionUtils.a(matcher.group(1)).d();
        } catch (Exception e10) {
            throw new IllegalStateException("No valid region has been specified. Unable to return region name", e10);
        }
    }

    @Override // com.amazonaws.AmazonWebServiceClient, com.amazonaws.services.s3.AmazonS3
    public void a(Region region) {
        super.a(region);
        this.f5896p = region.d();
    }

    @Override // com.amazonaws.AmazonWebServiceClient, com.amazonaws.services.s3.AmazonS3
    public void b(String str) {
        if (!str.endsWith("s3-accelerate.amazonaws.com")) {
            super.b(str);
            if (!str.endsWith("s3.amazonaws.com")) {
                this.f5896p = AwsHostNameUtils.a(this.f4830a.getHost(), "s3");
                return;
            }
            return;
        }
        throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.s3.AmazonS3
    public S3Object g(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(getObjectRequest, "The GetObjectRequest parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.r(), "The bucket name parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.s(), "The key parameter must be specified when requesting an object");
        Request Q = Q(getObjectRequest.r(), getObjectRequest.s(), getObjectRequest, HttpMethodName.GET);
        if (getObjectRequest.C() != null) {
            Q.p("versionId", getObjectRequest.C());
        }
        long[] y10 = getObjectRequest.y();
        if (y10 != null) {
            String str = "bytes=" + Long.toString(y10[0]) + "-";
            if (y10[1] >= 0) {
                str = str + Long.toString(y10[1]);
            }
            Q.q(Command.HTTP_HEADER_RANGE, str);
        }
        j0(Q, getObjectRequest.D());
        getObjectRequest.z();
        M(Q, null);
        K(Q, "If-Modified-Since", getObjectRequest.u());
        K(Q, "If-Unmodified-Since", getObjectRequest.B());
        N(Q, "If-Match", getObjectRequest.t());
        N(Q, "If-None-Match", getObjectRequest.v());
        getObjectRequest.A();
        k0(Q, null);
        ProgressListenerCallbackExecutor d10 = ProgressListenerCallbackExecutor.d(getObjectRequest.f());
        try {
            S3Object s3Object = (S3Object) d0(Q, new S3ObjectResponseHandler(), getObjectRequest.r(), getObjectRequest.s());
            s3Object.r(getObjectRequest.r());
            s3Object.s(getObjectRequest.s());
            ServiceClientHolderInputStream serviceClientHolderInputStream = new ServiceClientHolderInputStream(s3Object.k(), this);
            if (d10 != null) {
                ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(serviceClientHolderInputStream, d10);
                progressReportingInputStream.p(true);
                progressReportingInputStream.q(this.f5897q);
                V(d10, 2);
                serviceClientHolderInputStream = progressReportingInputStream;
            }
            s3Object.t(new S3ObjectInputStream(new LengthCheckInputStream(serviceClientHolderInputStream, s3Object.q().u(), true)));
            return s3Object;
        } catch (AmazonS3Exception e10) {
            if (e10.g() != 412 && e10.g() != 304) {
                V(d10, 8);
                throw e10;
            }
            V(d10, 16);
            return null;
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public UploadPartResult h(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        ProgressReportingInputStream inputSubstream;
        ValidationUtils.a(uploadPartRequest, "The request parameter must be specified when uploading a part");
        String r10 = uploadPartRequest.r();
        String y10 = uploadPartRequest.y();
        String E = uploadPartRequest.E();
        int B = uploadPartRequest.B();
        long C = uploadPartRequest.C();
        ValidationUtils.a(r10, "The bucket name parameter must be specified when uploading a part");
        ValidationUtils.a(y10, "The key parameter must be specified when uploading a part");
        ValidationUtils.a(E, "The upload ID parameter must be specified when uploading a part");
        ValidationUtils.a(Integer.valueOf(B), "The part number parameter must be specified when uploading a part");
        ValidationUtils.a(Long.valueOf(C), "The part size parameter must be specified when uploading a part");
        Request Q = Q(r10, y10, uploadPartRequest, HttpMethodName.PUT);
        Q.p("uploadId", E);
        Q.p("partNumber", Integer.toString(B));
        ObjectMetadata A = uploadPartRequest.A();
        if (A != null) {
            i0(Q, A);
        }
        Q.q("Content-Length", Long.toString(C));
        j0(Q, uploadPartRequest.F());
        uploadPartRequest.D();
        k0(Q, null);
        if (uploadPartRequest.v() != null) {
            inputSubstream = uploadPartRequest.v();
        } else if (uploadPartRequest.s() != null) {
            try {
                inputSubstream = new InputSubstream(new RepeatableFileInputStream(uploadPartRequest.s()), uploadPartRequest.t(), C, true);
            } catch (FileNotFoundException e10) {
                throw new IllegalArgumentException("The specified file doesn't exist", e10);
            }
        } else {
            throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
        }
        if (uploadPartRequest.z() == null && !ServiceUtils.f(uploadPartRequest, this.f5894n) && inputSubstream.markSupported()) {
            try {
                L(Q, "Content-MD5", Md5Utils.d(inputSubstream));
                inputSubstream.reset();
            } catch (Exception e11) {
                throw new AmazonClientException("Unable to calculate MD5 hash: " + e11.getMessage(), e11);
            }
        }
        ProgressListenerCallbackExecutor d10 = ProgressListenerCallbackExecutor.d(uploadPartRequest.f());
        if (d10 != null) {
            ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(inputSubstream, d10);
            progressReportingInputStream.q(this.f5897q);
            V(d10, 1024);
            inputSubstream = progressReportingInputStream;
        }
        try {
            try {
                Q.b(inputSubstream);
                ObjectMetadata objectMetadata = (ObjectMetadata) d0(Q, new S3MetadataResponseHandler(), r10, y10);
                V(d10, 2048);
                UploadPartResult uploadPartResult = new UploadPartResult();
                uploadPartResult.g(objectMetadata.z());
                uploadPartResult.n(B);
                uploadPartResult.e(objectMetadata.G());
                uploadPartResult.h(objectMetadata.I());
                uploadPartResult.k(objectMetadata.J());
                uploadPartResult.b(objectMetadata.N());
                if (inputSubstream != null) {
                    try {
                        inputSubstream.close();
                    } catch (Exception unused) {
                    }
                }
                return uploadPartResult;
            } catch (AmazonClientException e12) {
                V(d10, 4096);
                throw e12;
            }
        } catch (Throwable th2) {
            if (inputSubstream != null) {
                try {
                    inputSubstream.close();
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public PutObjectResult i(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException {
        ProgressReportingInputStream progressReportingInputStream;
        boolean z10;
        ValidationUtils.a(putObjectRequest, "The PutObjectRequest parameter must be specified when uploading an object");
        String u10 = putObjectRequest.u();
        String A = putObjectRequest.A();
        ObjectMetadata B = putObjectRequest.B();
        InputStream z11 = putObjectRequest.z();
        ProgressListenerCallbackExecutor d10 = ProgressListenerCallbackExecutor.d(putObjectRequest.f());
        if (B == null) {
            B = new ObjectMetadata();
        }
        ValidationUtils.a(u10, "The bucket name parameter must be specified when uploading an object");
        ValidationUtils.a(A, "The key parameter must be specified when uploading an object");
        boolean f10 = ServiceUtils.f(putObjectRequest, this.f5894n);
        if (putObjectRequest.y() != null) {
            File y10 = putObjectRequest.y();
            B.S(y10.length());
            if (B.v() == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (B.y() == null) {
                B.V(Mimetypes.a().b(y10));
            }
            if (z10 && !f10) {
                try {
                    B.U(Md5Utils.c(y10));
                } catch (Exception e10) {
                    throw new AmazonClientException("Unable to calculate MD5 hash: " + e10.getMessage(), e10);
                }
            }
            try {
                z11 = new RepeatableFileInputStream(y10);
            } catch (FileNotFoundException e11) {
                throw new AmazonClientException("Unable to find file to upload", e11);
            }
        }
        Request<?> Q = Q(u10, A, putObjectRequest, HttpMethodName.PUT);
        if (putObjectRequest.t() != null) {
            J(Q, putObjectRequest.t());
        } else if (putObjectRequest.v() != null) {
            Q.q("x-amz-acl", putObjectRequest.v().toString());
        }
        if (putObjectRequest.F() != null) {
            Q.q("x-amz-storage-class", putObjectRequest.F());
        }
        ByteArrayInputStream byteArrayInputStream = z11;
        if (putObjectRequest.C() != null) {
            Q.q("x-amz-website-redirect-location", putObjectRequest.C());
            byteArrayInputStream = z11;
            if (z11 == null) {
                o0(Q);
                byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
            }
        }
        L(Q, "x-amz-tagging", s0(putObjectRequest.G()));
        j0(Q, putObjectRequest.k0());
        putObjectRequest.E();
        k0(Q, null);
        Long l10 = (Long) B.F("Content-Length");
        if (l10 == null) {
            if (!byteArrayInputStream.markSupported()) {
                f5888s.g("No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors.");
                ByteArrayInputStream r02 = r0(byteArrayInputStream);
                Q.q("Content-Length", String.valueOf(r02.available()));
                Q.s(true);
                progressReportingInputStream = r02;
            } else {
                Q.q("Content-Length", String.valueOf(O(byteArrayInputStream)));
                progressReportingInputStream = byteArrayInputStream;
            }
        } else {
            long longValue = l10.longValue();
            progressReportingInputStream = byteArrayInputStream;
            if (longValue >= 0) {
                LengthCheckInputStream lengthCheckInputStream = new LengthCheckInputStream(byteArrayInputStream, longValue, false);
                Q.q("Content-Length", l10.toString());
                progressReportingInputStream = lengthCheckInputStream;
            }
        }
        if (d10 != null) {
            ProgressReportingInputStream progressReportingInputStream2 = new ProgressReportingInputStream(progressReportingInputStream, d10);
            progressReportingInputStream2.q(this.f5897q);
            V(d10, 2);
            progressReportingInputStream = progressReportingInputStream2;
        }
        if (B.y() == null) {
            B.V("application/octet-stream");
        }
        i0(Q, B);
        l0(Q, putObjectRequest.D());
        Q.b(progressReportingInputStream);
        try {
            try {
                ObjectMetadata objectMetadata = (ObjectMetadata) d0(Q, new S3MetadataResponseHandler(), u10, A);
                try {
                    progressReportingInputStream.close();
                } catch (AbortedException unused) {
                } catch (Exception e12) {
                    f5888s.d("Unable to cleanly close input stream: " + e12.getMessage(), e12);
                }
                V(d10, 4);
                PutObjectResult putObjectResult = new PutObjectResult();
                putObjectResult.d(objectMetadata.M());
                putObjectResult.e(objectMetadata.G());
                putObjectResult.h(objectMetadata.I());
                putObjectResult.k(objectMetadata.J());
                putObjectResult.j(objectMetadata.A());
                putObjectResult.i(objectMetadata.B());
                putObjectResult.g(objectMetadata.z());
                putObjectResult.n(objectMetadata);
                putObjectResult.b(objectMetadata.N());
                putObjectResult.f(objectMetadata.v());
                return putObjectResult;
            } catch (AmazonClientException e13) {
                V(d10, 8);
                throw e13;
            }
        } catch (Throwable th2) {
            try {
                progressReportingInputStream.close();
            } catch (AbortedException unused2) {
            } catch (Exception e14) {
                f5888s.d("Unable to cleanly close input stream: " + e14.getMessage(), e14);
            }
            throw th2;
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public CompleteMultipartUploadResult k(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(completeMultipartUploadRequest, "The request parameter must be specified when completing a multipart upload");
        String r10 = completeMultipartUploadRequest.r();
        String s10 = completeMultipartUploadRequest.s();
        String u10 = completeMultipartUploadRequest.u();
        ValidationUtils.a(r10, "The bucket name parameter must be specified when completing a multipart upload");
        ValidationUtils.a(s10, "The key parameter must be specified when completing a multipart upload");
        ValidationUtils.a(u10, "The upload ID parameter must be specified when completing a multipart upload");
        ValidationUtils.a(completeMultipartUploadRequest.t(), "The part ETags parameter must be specified when completing a multipart upload");
        int i10 = 0;
        while (true) {
            Request Q = Q(r10, s10, completeMultipartUploadRequest, HttpMethodName.POST);
            Q.p("uploadId", u10);
            j0(Q, completeMultipartUploadRequest.v());
            byte[] a10 = RequestXmlFactory.a(completeMultipartUploadRequest.t());
            Q.q(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/xml");
            Q.q("Content-Length", String.valueOf(a10.length));
            Q.b(new ByteArrayInputStream(a10));
            XmlResponsesSaxParser.CompleteMultipartUploadHandler completeMultipartUploadHandler = (XmlResponsesSaxParser.CompleteMultipartUploadHandler) d0(Q, new ResponseHeaderHandlerChain(new Unmarshaller<XmlResponsesSaxParser.CompleteMultipartUploadHandler, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$CompleteMultipartUploadResultUnmarshaller
                @Override // com.amazonaws.transform.Unmarshaller
                /* renamed from: b */
                public XmlResponsesSaxParser.CompleteMultipartUploadHandler a(InputStream inputStream) throws Exception {
                    return new XmlResponsesSaxParser().i(inputStream);
                }
            }, new ServerSideEncryptionHeaderHandler(), new ObjectExpirationHeaderHandler(), new S3VersionHeaderHandler(), new S3RequesterChargedHeaderHandler()), r10, s10);
            if (completeMultipartUploadHandler.o() != null) {
                return completeMultipartUploadHandler.o();
            }
            int i11 = i10 + 1;
            if (p0(completeMultipartUploadRequest, completeMultipartUploadHandler.n(), i10)) {
                i10 = i11;
            } else {
                throw completeMultipartUploadHandler.n();
            }
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public InitiateMultipartUploadResult l(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(initiateMultipartUploadRequest, "The request parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.s(), "The bucket name parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.u(), "The key parameter must be specified when initiating a multipart upload");
        Request<?> Q = Q(initiateMultipartUploadRequest.s(), initiateMultipartUploadRequest.u(), initiateMultipartUploadRequest, HttpMethodName.POST);
        Q.p("uploads", null);
        if (initiateMultipartUploadRequest.A() != null) {
            Q.q("x-amz-storage-class", initiateMultipartUploadRequest.A().toString());
        }
        if (initiateMultipartUploadRequest.v() != null) {
            Q.q("x-amz-website-redirect-location", initiateMultipartUploadRequest.v());
        }
        if (initiateMultipartUploadRequest.r() != null) {
            J(Q, initiateMultipartUploadRequest.r());
        } else if (initiateMultipartUploadRequest.t() != null) {
            Q.q("x-amz-acl", initiateMultipartUploadRequest.t().toString());
        }
        ObjectMetadata objectMetadata = initiateMultipartUploadRequest.f6064h;
        if (objectMetadata != null) {
            i0(Q, objectMetadata);
        }
        L(Q, "x-amz-tagging", s0(initiateMultipartUploadRequest.B()));
        j0(Q, initiateMultipartUploadRequest.C());
        initiateMultipartUploadRequest.z();
        k0(Q, null);
        l0(Q, initiateMultipartUploadRequest.y());
        o0(Q);
        Q.b(new ByteArrayInputStream(new byte[0]));
        return (InitiateMultipartUploadResult) d0(Q, new ResponseHeaderHandlerChain(new Unmarshaller<InitiateMultipartUploadResult, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$InitiateMultipartUploadResultUnmarshaller
            @Override // com.amazonaws.transform.Unmarshaller
            /* renamed from: b */
            public InitiateMultipartUploadResult a(InputStream inputStream) throws Exception {
                return new XmlResponsesSaxParser().j(inputStream).m();
            }
        }, new ServerSideEncryptionHeaderHandler()), initiateMultipartUploadRequest.s(), initiateMultipartUploadRequest.u());
    }

    public void m0(Request<?> request, String str, String str2, URI uri) {
        if (uri == null) {
            uri = this.f4830a;
        }
        if (q0(uri, str)) {
            Log log = f5888s;
            log.h("Using virtual style addressing. Endpoint = " + uri);
            request.u(P(uri, str));
            request.d(X(str2));
        } else {
            Log log2 = f5888s;
            log2.h("Using path style addressing. Endpoint = " + uri);
            request.u(uri);
            if (str != null) {
                request.d(Y(str, str2));
            }
        }
        Log log3 = f5888s;
        log3.h("Key: " + str2 + "; Request: " + request);
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public void o(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException {
        ValidationUtils.a(abortMultipartUploadRequest, "The request parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.r(), "The bucket name parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.s(), "The key parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.t(), "The upload ID parameter must be specified when aborting a multipart upload");
        String r10 = abortMultipartUploadRequest.r();
        String s10 = abortMultipartUploadRequest.s();
        Request Q = Q(r10, s10, abortMultipartUploadRequest, HttpMethodName.DELETE);
        Q.p("uploadId", abortMultipartUploadRequest.t());
        j0(Q, abortMultipartUploadRequest.u());
        d0(Q, this.f5893m, r10, s10);
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public void p(S3ClientOptions s3ClientOptions) {
        this.f5894n = new S3ClientOptions(s3ClientOptions);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazonaws.AmazonWebServiceClient
    public final ExecutionContext u(AmazonWebServiceRequest amazonWebServiceRequest) {
        boolean z10;
        if (!G(amazonWebServiceRequest) && !AmazonWebServiceClient.E()) {
            z10 = false;
        } else {
            z10 = true;
        }
        return new S3ExecutionContext(this.f4834e, z10, this);
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    @Deprecated
    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f5892l = new S3ErrorResponseHandler();
        this.f5893m = new S3XmlResponseHandler<>(null);
        this.f5894n = new S3ClientOptions();
        this.f5897q = 1024;
        this.f5898r = new CompleteMultipartUploadRetryCondition();
        this.f5895o = aWSCredentialsProvider;
        b0();
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region) {
        this(aWSCredentialsProvider, region, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, region, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f5892l = new S3ErrorResponseHandler();
        this.f5893m = new S3XmlResponseHandler<>(null);
        this.f5894n = new S3ClientOptions();
        this.f5897q = 1024;
        this.f5898r = new CompleteMultipartUploadRetryCondition();
        this.f5895o = aWSCredentialsProvider;
        c0(region, clientConfiguration);
    }

    private static void M(Request<?> request, ResponseHeaderOverrides responseHeaderOverrides) {
    }

    private static void k0(Request<?> request, SSECustomerKey sSECustomerKey) {
    }
}
