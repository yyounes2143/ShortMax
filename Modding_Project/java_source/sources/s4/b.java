package s4;

import android.util.Base64;
import android.util.Log;
import com.facebook.v;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import ws.n;
/* compiled from: OidcSecurityUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOidcSecurityUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OidcSecurityUtil.kt\ncom/facebook/internal/security/OidcSecurityUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f66306a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f66307b = "/.well-known/oauth/openid/keys/";

    private b() {
    }

    @NotNull
    public static final PublicKey b(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        byte[] decode = Base64.decode(StringsKt.P(StringsKt.P(StringsKt.P(key, "\n", "", false, 4, null), "-----BEGIN PUBLIC KEY-----", "", false, 4, null), "-----END PUBLIC KEY-----", "", false, 4, null), 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(pubKeyString, Base64.DEFAULT)");
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(decode));
        Intrinsics.checkNotNullExpressionValue(generatePublic, "kf.generatePublic(x509publicKey)");
        return generatePublic;
    }

    @Nullable
    public static final String c(@NotNull final String kid) {
        Intrinsics.checkNotNullParameter(kid, "kid");
        final URL url = new URL("https", "www." + v.v(), f66307b);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        v.u().execute(new Runnable() { // from class: s4.a
            @Override // java.lang.Runnable
            public final void run() {
                b.d(url, objectRef, kid, reentrantLock, newCondition);
            }
        });
        reentrantLock.lock();
        try {
            newCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) objectRef.element;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [kotlin.Unit] */
    /* JADX WARN: Type inference failed for: r3v4, types: [kotlin.Unit] */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.String] */
    public static final void d(URL openIdKeyUrl, Ref.ObjectRef result, String kid, ReentrantLock lock, Condition condition) {
        Intrinsics.checkNotNullParameter(openIdKeyUrl, "$openIdKeyUrl");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(kid, "$kid");
        Intrinsics.checkNotNullParameter(lock, "$lock");
        URLConnection openConnection = openIdKeyUrl.openConnection();
        Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        try {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "connection.inputStream");
                String h10 = n.h(new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8), 8192));
                httpURLConnection.getInputStream().close();
                result.element = new JSONObject(h10).optString(kid);
                httpURLConnection.disconnect();
                lock.lock();
                try {
                    condition.signal();
                    httpURLConnection = Unit.f60915a;
                } finally {
                }
            } catch (Throwable th2) {
                httpURLConnection.disconnect();
                lock.lock();
                try {
                    condition.signal();
                    Unit unit = Unit.f60915a;
                    throw th2;
                } finally {
                }
            }
        } catch (Exception e10) {
            String name = f66306a.getClass().getName();
            String message = e10.getMessage();
            if (message == null) {
                message = "Error getting public key";
            }
            Log.d(name, message);
            httpURLConnection.disconnect();
            lock.lock();
            try {
                condition.signal();
                httpURLConnection = Unit.f60915a;
            } finally {
            }
        }
    }

    public static final boolean e(@NotNull PublicKey publicKey, @NotNull String data, @NotNull String signature) {
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(signature, "signature");
        try {
            Signature signature2 = Signature.getInstance("SHA256withRSA");
            signature2.initVerify(publicKey);
            byte[] bytes = data.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            signature2.update(bytes);
            byte[] decode = Base64.decode(signature, 8);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(signature, Base64.URL_SAFE)");
            return signature2.verify(decode);
        } catch (Exception unused) {
            return false;
        }
    }
}
