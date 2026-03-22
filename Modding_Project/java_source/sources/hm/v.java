package hm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.Waterfall;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
/* compiled from: WaterfallNetworkRequest.java */
/* loaded from: classes7.dex */
public class v extends NetworkRequest<Waterfall.Result, Waterfall.Configuration, fr.a> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f52920a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52921b;

    /* compiled from: WaterfallNetworkRequest.java */
    /* loaded from: classes7.dex */
    private static class b extends NetworkRequest.f<Waterfall.Result, Waterfall.Configuration, fr.a> {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.core.NetworkRequest.f
        /* renamed from: a */
        public Waterfall.Configuration createSuccessResult(NetworkRequest<Waterfall.Result, Waterfall.Configuration, fr.a> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return Waterfall.parseFrom(bArr).getResponse();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.core.NetworkRequest.f
        @Nullable
        /* renamed from: b */
        public byte[] obtainData(NetworkRequest<Waterfall.Result, Waterfall.Configuration, fr.a> networkRequest, URLConnection uRLConnection, @Nullable Waterfall.Result result) throws Exception {
            return Waterfall.newBuilder().setRequest(result).build().toByteArray();
        }

        @Override // io.bidmachine.core.NetworkRequest.f
        protected void prepareHeaders(NetworkRequest<Waterfall.Result, Waterfall.Configuration, fr.a> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, CommonGatewayClient.HEADER_PROTOBUF);
        }
    }

    public v(@NonNull String str, @NonNull Waterfall.Result result, int i10) {
        super(NetworkRequest.Method.Post, null, result);
        this.f52920a = str;
        this.f52921b = i10;
        setDataBinder(new b());
    }

    @Override // io.bidmachine.core.NetworkRequest
    protected String getBaseUrl() throws Exception {
        return this.f52920a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.core.NetworkRequest
    public void prepareRequestParams(URLConnection uRLConnection) {
        super.prepareRequestParams(uRLConnection);
        uRLConnection.setConnectTimeout(this.f52921b);
        uRLConnection.setReadTimeout(this.f52921b);
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
    public fr.a obtainError(@Nullable URLConnection uRLConnection, @Nullable Throwable th2) {
        if (th2 instanceof UnknownHostException) {
            return fr.a.f51909e;
        }
        if (!(th2 instanceof SocketTimeoutException) && !(th2 instanceof ConnectTimeoutException)) {
            return fr.a.l("Unknown api request error", th2);
        }
        return fr.a.f51910f;
    }
}
