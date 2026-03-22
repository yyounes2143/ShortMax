package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.analytics.events.SDKEvent;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
/* loaded from: classes7.dex */
public class ApiRequest<RequestDataType, ResponseType> extends NetworkRequest<RequestDataType, ResponseType, fr.a> {
    @VisibleForTesting
    static int REQUEST_TIMEOUT = 10000;
    @VisibleForTesting
    String requiredUrl;
    @VisibleForTesting
    int timeOut;

    /* loaded from: classes7.dex */
    public static class ApiAuctionDataBinder extends ApiResponseAuctionDataBinder {
        @Override // io.bidmachine.ApiRequest.ApiResponseAuctionDataBinder, io.bidmachine.core.NetworkRequest.f
        @Nullable
        protected /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, @Nullable Object obj) throws Exception {
            return obtainData((NetworkRequest<Request, Response, fr.a>) networkRequest, uRLConnection, (Request) obj);
        }

        @Override // io.bidmachine.ApiRequest.ApiResponseAuctionDataBinder
        @Nullable
        protected byte[] obtainData(NetworkRequest<Request, Response, fr.a> networkRequest, URLConnection uRLConnection, @Nullable Request request) throws Exception {
            Openrtb.Builder newBuilder = Openrtb.newBuilder();
            newBuilder.setRequest(request);
            newBuilder.setVer("3.0");
            newBuilder.setDomainspec("adcom");
            newBuilder.setDomainver("1.0");
            z4.f("Auction Request", newBuilder);
            return newBuilder.build().toByteArray();
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class ApiDataBinder<RequestDataType, ResponseDataType> extends NetworkRequest.f<RequestDataType, ResponseDataType, fr.a> {
    }

    /* loaded from: classes7.dex */
    public static class ApiEventDataBinder extends ApiDataBinder<SDKEvent, Void> {
        @Override // io.bidmachine.core.NetworkRequest.f
        protected Void createSuccessResult(NetworkRequest<SDKEvent, Void, fr.a> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        @Nullable
        protected /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, @Nullable Object obj) throws Exception {
            return obtainData((NetworkRequest<SDKEvent, Void, fr.a>) networkRequest, uRLConnection, (SDKEvent) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected void prepareHeaders(NetworkRequest<SDKEvent, Void, fr.a> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<SDKEvent, Void, fr.a>) networkRequest, uRLConnection, bArr);
        }

        @Nullable
        protected byte[] obtainData(NetworkRequest<SDKEvent, Void, fr.a> networkRequest, URLConnection uRLConnection, @Nullable SDKEvent sDKEvent) throws Exception {
            if (sDKEvent != null) {
                return sDKEvent.toByteArray();
            }
            return null;
        }
    }

    /* loaded from: classes7.dex */
    public static class ApiInitDataBinder extends ApiDataBinder<InitRequest, InitResponse> {
        @Override // io.bidmachine.core.NetworkRequest.f
        protected /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<InitRequest, InitResponse, fr.a>) networkRequest, uRLConnection, bArr);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        @Nullable
        protected /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, @Nullable Object obj) throws Exception {
            return obtainData((NetworkRequest<InitRequest, InitResponse, fr.a>) networkRequest, uRLConnection, (InitRequest) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected void prepareHeaders(NetworkRequest<InitRequest, InitResponse, fr.a> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected InitResponse createSuccessResult(NetworkRequest<InitRequest, InitResponse, fr.a> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            InitResponse parseFrom = InitResponse.parseFrom(bArr);
            z4.f("Init Response", parseFrom);
            return parseFrom;
        }

        @Nullable
        protected byte[] obtainData(NetworkRequest<InitRequest, InitResponse, fr.a> networkRequest, URLConnection uRLConnection, @Nullable InitRequest initRequest) throws Exception {
            z4.f("Init Request", initRequest);
            if (initRequest != null) {
                return initRequest.toByteArray();
            }
            return null;
        }
    }

    /* loaded from: classes7.dex */
    public static class ApiResponseAuctionDataBinder extends ApiDataBinder<Request, Response> {
        @Override // io.bidmachine.core.NetworkRequest.f
        protected /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<Request, Response, fr.a>) networkRequest, uRLConnection, bArr);
        }

        @Nullable
        protected byte[] obtainData(NetworkRequest<Request, Response, fr.a> networkRequest, URLConnection uRLConnection, @Nullable Request request) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected void prepareHeaders(NetworkRequest<Request, Response, fr.a> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected Response createSuccessResult(NetworkRequest<Request, Response, fr.a> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            Openrtb parseFrom = Openrtb.parseFrom(bArr);
            if (parseFrom != null) {
                z4.f("Auction Response", parseFrom);
                return parseFrom.getResponse();
            }
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        @Nullable
        protected /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, @Nullable Object obj) throws Exception {
            return obtainData((NetworkRequest<Request, Response, fr.a>) networkRequest, uRLConnection, (Request) obj);
        }
    }

    /* loaded from: classes7.dex */
    public static class ApiTrackerDataBinder extends ApiDataBinder<Object, String> {
        @Override // io.bidmachine.core.NetworkRequest.f
        protected String createSuccessResult(NetworkRequest<Object, String, fr.a> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        @Nullable
        protected byte[] obtainData(NetworkRequest<Object, String, fr.a> networkRequest, URLConnection uRLConnection, @Nullable Object obj) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected void prepareHeaders(NetworkRequest<Object, String, fr.a> networkRequest, URLConnection uRLConnection) {
            String userAgent = UserAgentManager.getUserAgent();
            if (!TextUtils.isEmpty(userAgent)) {
                uRLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, userAgent);
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<Object, String, fr.a>) networkRequest, uRLConnection, bArr);
        }
    }

    /* loaded from: classes7.dex */
    public static class Builder<RequestDataType, ResponseDataType> {
        private NetworkRequest.b<ResponseDataType, fr.a> callback;
        private NetworkRequest.c cancelCallback;
        private ApiDataBinder<RequestDataType, ResponseDataType> dataBinder;
        private RequestDataType requestData;
        private String url;
        private int timeOut = ApiRequest.REQUEST_TIMEOUT;
        private NetworkRequest.Method method = NetworkRequest.Method.Post;

        public ApiRequest<RequestDataType, ResponseDataType> build() {
            ApiRequest<RequestDataType, ResponseDataType> apiRequest = new ApiRequest<>(this.method, null, this.requestData);
            apiRequest.setCallback((NetworkRequest.b<ResponseDataType, fr.a>) this.callback);
            apiRequest.setCancelCallback(this.cancelCallback);
            apiRequest.setDataBinder(this.dataBinder);
            apiRequest.requiredUrl = this.url;
            apiRequest.timeOut = this.timeOut;
            return apiRequest;
        }

        public String getUrl() {
            return this.url;
        }

        public ApiRequest<RequestDataType, ResponseDataType> request() {
            ApiRequest<RequestDataType, ResponseDataType> build = build();
            build.request();
            return build;
        }

        public Builder<RequestDataType, ResponseDataType> setCallback(NetworkRequest.b<ResponseDataType, fr.a> bVar) {
            this.callback = bVar;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setCancelCallback(NetworkRequest.c cVar) {
            this.cancelCallback = cVar;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setDataBinder(ApiDataBinder<RequestDataType, ResponseDataType> apiDataBinder) {
            this.dataBinder = apiDataBinder;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setLoadingTimeOut(int i10) {
            if (i10 <= 0) {
                i10 = ApiRequest.REQUEST_TIMEOUT;
            }
            this.timeOut = i10;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setMethod(@NonNull NetworkRequest.Method method) {
            this.method = method;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setRequestData(RequestDataType requestdatatype) {
            this.requestData = requestdatatype;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> url(String str) {
            this.url = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$obtainError$0(Throwable th2, URLConnection uRLConnection) {
        return "obtainError: " + th2 + "(" + uRLConnection + ")";
    }

    @Override // io.bidmachine.core.NetworkRequest
    protected String getBaseUrl() {
        return this.requiredUrl;
    }

    @Override // io.bidmachine.core.NetworkRequest
    protected void prepareRequestParams(URLConnection uRLConnection) {
        super.prepareRequestParams(uRLConnection);
        uRLConnection.setConnectTimeout(this.timeOut);
        uRLConnection.setReadTimeout(this.timeOut);
    }

    private ApiRequest(@NonNull NetworkRequest.Method method, @Nullable String str, @Nullable RequestDataType requestdatatype) {
        super(method, str, requestdatatype);
        addContentEncoder(new NetworkRequest.d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.core.NetworkRequest
    @NonNull
    public fr.a obtainError(@Nullable URLConnection uRLConnection, int i10) {
        fr.a i11;
        if (i10 >= 200 && i10 < 300) {
            return fr.a.f51923s;
        }
        if (i10 >= 400 && i10 < 500) {
            i11 = fr.a.f51911g;
        } else if (i10 >= 500 && i10 < 600) {
            i11 = fr.a.f51912h;
        } else {
            i11 = fr.a.i("Unknown server error");
        }
        return new fr.a(i11, i10, "Server returned " + i10 + " code");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.core.NetworkRequest
    @NonNull
    public fr.a obtainError(@Nullable final URLConnection uRLConnection, @Nullable final Throwable th2) {
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.x0
            @Override // hr.b
            public final Object get() {
                String lambda$obtainError$0;
                lambda$obtainError$0 = ApiRequest.lambda$obtainError$0(th2, uRLConnection);
                return lambda$obtainError$0;
            }
        });
        if (th2 instanceof UnknownHostException) {
            return fr.a.f51909e;
        }
        if (!(th2 instanceof SocketTimeoutException) && !(th2 instanceof ConnectTimeoutException)) {
            return fr.a.l("Unknown api request error", th2);
        }
        return fr.a.f51910f;
    }
}
