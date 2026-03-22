package nb;

import android.os.Build;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import pb.f;
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f62873a = {"TLS_DHE_DSS_WITH_AES_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f62874b = {"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f62875c = {"TLS_RSA", "CBC", "TEA", "SHA0", "MD2", "MD4", "RIPEMD", "NULL", "RC4", "DES", "DESX", "DES40", "RC2", SameMD5.TAG, "ANON", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"};

    public static boolean a(SSLSocket sSLSocket) {
        if (sSLSocket == null) {
            return false;
        }
        return b(sSLSocket, f62875c);
    }

    public static boolean b(SSLSocket sSLSocket, String[] strArr) {
        if (sSLSocket == null) {
            return false;
        }
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        ArrayList arrayList = new ArrayList();
        for (String str : enabledCipherSuites) {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            int length = strArr.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    if (upperCase.contains(strArr[i10].toUpperCase(Locale.ENGLISH))) {
                        break;
                    }
                    i10++;
                } else {
                    arrayList.add(str);
                    break;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
        return true;
    }

    public static void c(SSLSocket sSLSocket) {
        if (sSLSocket != null && !g(sSLSocket)) {
            a(sSLSocket);
        }
    }

    public static void d(SSLSocket sSLSocket) {
        if (sSLSocket == null) {
            return;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            sSLSocket.setEnabledProtocols(new String[]{"TLSv1.3", "TLSv1.2"});
        }
        if (i10 < 29) {
            sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2"});
        }
    }

    public static boolean e(SSLSocket sSLSocket, String[] strArr) {
        if (sSLSocket != null && strArr != null) {
            try {
                sSLSocket.setEnabledProtocols(strArr);
                return true;
            } catch (Exception e10) {
                f.d("SSLUtil", "setEnabledProtocols: exception : " + e10.getMessage());
            }
        }
        return false;
    }

    public static SSLContext f() throws NoSuchAlgorithmException {
        if (Build.VERSION.SDK_INT >= 29) {
            return SSLContext.getInstance("TLSv1.3");
        }
        return SSLContext.getInstance("TLSv1.2");
    }

    public static boolean g(SSLSocket sSLSocket) {
        if (sSLSocket == null) {
            return false;
        }
        return h(sSLSocket, f62874b);
    }

    public static boolean h(SSLSocket sSLSocket, String[] strArr) {
        if (sSLSocket == null) {
            return false;
        }
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        ArrayList arrayList = new ArrayList();
        List asList = Arrays.asList(strArr);
        for (String str : enabledCipherSuites) {
            if (asList.contains(str.toUpperCase(Locale.ENGLISH))) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
        return true;
    }
}
