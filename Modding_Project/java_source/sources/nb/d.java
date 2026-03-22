package nb;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import pb.f;
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f62895a = "SecureX509SingleInstance";

    /* renamed from: b  reason: collision with root package name */
    private static volatile e f62896b;

    private d() {
    }

    @SuppressLint({"NewApi"})
    public static e a(Context context) throws CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException {
        InputStream inputStream;
        long currentTimeMillis = System.currentTimeMillis();
        if (context != null) {
            pb.b.b(context);
            if (f62896b == null) {
                synchronized (d.class) {
                    if (f62896b == null) {
                        try {
                            inputStream = pb.a.n(context);
                        } catch (RuntimeException unused) {
                            f.d(f62895a, "get files bks error");
                            inputStream = null;
                        }
                        if (inputStream == null) {
                            f.e(f62895a, "get assets bks");
                            inputStream = context.getAssets().open("hmsrootcas.bks");
                        } else {
                            f.e(f62895a, "get files bks");
                        }
                        f62896b = new e(inputStream, "");
                    }
                }
            }
            String str = f62895a;
            f.b(str, "SecureX509TrustManager getInstance: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return f62896b;
        }
        throw new NullPointerException("context is null");
    }
}
