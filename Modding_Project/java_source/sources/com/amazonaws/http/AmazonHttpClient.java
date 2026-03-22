package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.Response;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.TimingInfo;
import com.amazonaws.util.URIBuilder;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class AmazonHttpClient {

    /* renamed from: e  reason: collision with root package name */
    private static final Log f4981e = LogFactory.c("com.amazonaws.request");

    /* renamed from: f  reason: collision with root package name */
    static final Log f4982f = LogFactory.b(AmazonHttpClient.class);

    /* renamed from: a  reason: collision with root package name */
    final HttpClient f4983a;

    /* renamed from: b  reason: collision with root package name */
    final ClientConfiguration f4984b;

    /* renamed from: d  reason: collision with root package name */
    private final HttpRequestFactory f4986d = new HttpRequestFactory();

    /* renamed from: c  reason: collision with root package name */
    private final RequestMetricCollector f4985c = null;

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f4984b = clientConfiguration;
        this.f4983a = httpClient;
    }

    static String c(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + " " + str2.trim();
    }

    private String g(String str) {
        int indexOf;
        int indexOf2 = str.indexOf("(");
        if (str.contains(" + 15")) {
            indexOf = str.indexOf(" + 15");
        } else {
            indexOf = str.indexOf(" - 15");
        }
        return str.substring(indexOf2 + 1, indexOf);
    }

    private <T extends Throwable> T j(T t10, AWSRequestMetrics aWSRequestMetrics) {
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.Exception;
        aWSRequestMetrics.d(field);
        aWSRequestMetrics.a(field, t10);
        return t10;
    }

    private boolean k(HttpResponse httpResponse) {
        int e10 = httpResponse.e();
        if (e10 >= 200 && e10 < 300) {
            return true;
        }
        return false;
    }

    private static boolean l(HttpResponse httpResponse) {
        int e10 = httpResponse.e();
        String str = httpResponse.c().get("Location");
        if (e10 == 307 && str != null && !str.isEmpty()) {
            return true;
        }
        return false;
    }

    private long n(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10, RetryPolicy retryPolicy) {
        int i11 = i10 - 2;
        long a10 = retryPolicy.a().a(amazonWebServiceRequest, amazonClientException, i11);
        Log log = f4982f;
        if (log.i()) {
            log.h("Retriable error detected, will retry in " + a10 + "ms, attempt number: " + i11);
        }
        try {
            Thread.sleep(a10);
            return a10;
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e10.getMessage(), e10);
        }
    }

    private boolean r(AmazonWebServiceRequest amazonWebServiceRequest, InputStream inputStream, AmazonClientException amazonClientException, int i10, RetryPolicy retryPolicy) {
        int i11 = i10 - 1;
        int b10 = this.f4984b.b();
        if (b10 < 0 || !retryPolicy.d()) {
            b10 = retryPolicy.b();
        }
        if (i11 >= b10) {
            return false;
        }
        if (inputStream != null && !inputStream.markSupported()) {
            Log log = f4982f;
            if (log.i()) {
                log.h("Content not repeatable");
            }
            return false;
        }
        return retryPolicy.c().a(amazonWebServiceRequest, amazonClientException, i11);
    }

    void a(Request<?> request, Response<?> response, List<RequestHandler2> list, AmazonClientException amazonClientException) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.b(request, response, amazonClientException);
        }
    }

    <T> void b(Request<?> request, List<RequestHandler2> list, Response<T> response, TimingInfo timingInfo) {
        for (RequestHandler2 requestHandler2 : list) {
            requestHandler2.c(request, response);
        }
    }

    public <T> Response<T> d(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponseHandler<AmazonServiceException> httpResponseHandler2, ExecutionContext executionContext) {
        Response<T> response;
        if (request.h() != null) {
            try {
                URI endpoint = request.getEndpoint();
                request.u(URIBuilder.b(endpoint).c(request.h() + endpoint.getHost()).a());
            } catch (URISyntaxException e10) {
                Log log = f4982f;
                if (log.i()) {
                    log.d("Failed to prepend host prefix: " + e10.getMessage(), e10);
                }
            }
        }
        if (executionContext != null) {
            List<RequestHandler2> o10 = o(request, executionContext);
            AWSRequestMetrics a10 = executionContext.a();
            try {
                response = e(request, httpResponseHandler, httpResponseHandler2, executionContext);
            } catch (AmazonClientException e11) {
                e = e11;
                response = null;
            }
            try {
                b(request, o10, response, a10.c().c());
                return response;
            } catch (AmazonClientException e12) {
                e = e12;
                a(request, response, o10, e);
                throw e;
            }
        }
        throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
    }

    /* JADX WARN: Removed duplicated region for block: B:227:0x03ec A[Catch: all -> 0x03ab, TRY_ENTER, TryCatch #6 {all -> 0x03ab, blocks: (B:224:0x03e2, B:227:0x03ec, B:228:0x0402, B:230:0x0444, B:241:0x0470, B:202:0x03a5, B:203:0x03aa), top: B:253:0x03e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0444 A[Catch: all -> 0x03ab, TRY_LEAVE, TryCatch #6 {all -> 0x03ab, blocks: (B:224:0x03e2, B:227:0x03ec, B:228:0x0402, B:230:0x0444, B:241:0x0470, B:202:0x03a5, B:203:0x03aa), top: B:253:0x03e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0473 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x047b A[Catch: IOException -> 0x0483, TRY_LEAVE, TryCatch #10 {IOException -> 0x0483, blocks: (B:244:0x0475, B:246:0x047b), top: B:254:0x0475 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0470 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    <T> com.amazonaws.Response<T> e(com.amazonaws.Request<?> r27, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonWebServiceResponse<T>> r28, com.amazonaws.http.HttpResponseHandler<com.amazonaws.AmazonServiceException> r29, com.amazonaws.http.ExecutionContext r30) {
        /*
            Method dump skipped, instructions count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.http.AmazonHttpClient.e(com.amazonaws.Request, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.HttpResponseHandler, com.amazonaws.http.ExecutionContext):com.amazonaws.Response");
    }

    public RequestMetricCollector f() {
        return this.f4985c;
    }

    protected void finalize() throws Throwable {
        s();
        super.finalize();
    }

    AmazonServiceException h(Request<?> request, HttpResponseHandler<AmazonServiceException> httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int e10 = httpResponse.e();
        try {
            amazonServiceException = httpResponseHandler.b(httpResponse);
            Log log = f4981e;
            log.h("Received error response: " + amazonServiceException.toString());
        } catch (Exception e11) {
            if (e10 == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.n(request.n());
                amazonServiceException.q(413);
                amazonServiceException.j(AmazonServiceException.ErrorType.Client);
                amazonServiceException.h("Request entity too large");
            } else if (e10 == 503 && "Service Unavailable".equalsIgnoreCase(httpResponse.f())) {
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.n(request.n());
                amazonServiceException.q(503);
                amazonServiceException.j(AmazonServiceException.ErrorType.Service);
                amazonServiceException.h("Service unavailable");
            } else if (e11 instanceof IOException) {
                throw ((IOException) e11);
            } else {
                throw new AmazonClientException("Unable to unmarshall error response (" + e11.getMessage() + "). Response Code: " + e10 + ", Response Text: " + httpResponse.f() + ", Response Headers: " + httpResponse.c(), e11);
            }
        }
        amazonServiceException.q(e10);
        amazonServiceException.n(request.n());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    <T> T i(Request<?> request, HttpResponseHandler<AmazonWebServiceResponse<T>> httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics a10 = executionContext.a();
            AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ResponseProcessingTime;
            a10.g(field);
            try {
                AmazonWebServiceResponse<T> b10 = httpResponseHandler.b(httpResponse);
                a10.b(field);
                if (b10 != null) {
                    Log log = f4981e;
                    if (log.i()) {
                        log.h("Received successful response: " + httpResponse.e() + ", AWS Request ID: " + b10.a());
                    }
                    a10.a(AWSRequestMetrics.Field.AWSRequestID, b10.a());
                    return b10.b();
                }
                throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.f());
            } catch (Throwable th2) {
                a10.b(AWSRequestMetrics.Field.ResponseProcessingTime);
                throw th2;
            }
        } catch (CRC32MismatchException e10) {
            throw e10;
        } catch (IOException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new AmazonClientException("Unable to unmarshall response (" + e12.getMessage() + "). Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.f(), e12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    long m(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        Date i10;
        Date date = new Date();
        String str = httpResponse.c().get("Date");
        try {
            if (str != 0) {
                try {
                    if (!str.isEmpty()) {
                        i10 = DateUtils.i(str);
                        long time = date.getTime() - i10.getTime();
                        str = 1000;
                        return time / 1000;
                    }
                } catch (RuntimeException e10) {
                    e = e10;
                    str = 0;
                    f4982f.f("Unable to parse clock skew offset from response: " + str, e);
                    return 0L;
                }
            }
            i10 = DateUtils.g(g(amazonServiceException.getMessage()));
            long time2 = date.getTime() - i10.getTime();
            str = 1000;
            return time2 / 1000;
        } catch (RuntimeException e11) {
            e = e11;
        }
    }

    List<RequestHandler2> o(Request<?> request, ExecutionContext executionContext) {
        List<RequestHandler2> d10 = executionContext.d();
        if (d10 == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : d10) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).e(executionContext.c());
            }
            requestHandler2.d(request);
        }
        return d10;
    }

    void p(Request<?> request, Exception exc) {
        if (request.getContent() == null) {
            return;
        }
        if (request.getContent().markSupported()) {
            try {
                request.getContent().reset();
                return;
            } catch (IOException unused) {
                throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
            }
        }
        throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
    }

    void q(Request<?> request) {
        String str;
        RequestClientOptions g10;
        String c10;
        String str2 = ClientConfiguration.f4847u;
        AmazonWebServiceRequest r10 = request.r();
        if (r10 != null && (g10 = r10.g()) != null && (c10 = g10.c(RequestClientOptions.Marker.USER_AGENT)) != null) {
            str = c(str2, c10);
        } else {
            str = str2;
        }
        if (!str2.equals(this.f4984b.h())) {
            str = c(str, this.f4984b.h());
        }
        if (this.f4984b.i() != null) {
            str = this.f4984b.i();
        }
        request.q(Command.HTTP_HEADER_USER_AGENT, str);
    }

    public void s() {
        this.f4983a.shutdown();
    }
}
