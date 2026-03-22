package kk;

import android.annotation.SuppressLint;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionSpec;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnsafeOkHttpClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f60762a = new h();

    /* compiled from: UnsafeOkHttpClient.kt */
    @Metadata
    @SuppressLint({"CustomX509TrustManager"})
    /* loaded from: classes7.dex */
    public static final class a implements X509TrustManager {
        a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkClientTrusted(X509Certificate[] chain, String authType) {
            Intrinsics.checkNotNullParameter(chain, "chain");
            Intrinsics.checkNotNullParameter(authType, "authType");
        }

        @Override // javax.net.ssl.X509TrustManager
        @SuppressLint({"TrustAllX509TrustManager"})
        public void checkServerTrusted(X509Certificate[] chain, String authType) {
            Intrinsics.checkNotNullParameter(chain, "chain");
            Intrinsics.checkNotNullParameter(authType, "authType");
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    private h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(String str, SSLSession sSLSession) {
        return true;
    }

    @NotNull
    public final OkHttpClient b() {
        try {
            TrustManager[] trustManagerArr = {new a()};
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            Intrinsics.checkNotNullExpressionValue(socketFactory, "getSocketFactory(...)");
            TrustManager trustManager = trustManagerArr[0];
            Intrinsics.checkNotNull(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            return builder.X(socketFactory, (X509TrustManager) trustManager).S(new HostnameVerifier() { // from class: kk.g
                @Override // javax.net.ssl.HostnameVerifier
                public final boolean verify(String str, SSLSession sSLSession) {
                    boolean c10;
                    c10 = h.c(str, sSLSession);
                    return c10;
                }
            }).h(CollectionsKt.q(ConnectionSpec.f63396i, ConnectionSpec.f63397j, ConnectionSpec.f63398k)).c();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
