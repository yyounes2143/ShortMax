package z8;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.stats.CodePackage;
import com.google.firebase.f;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: IidStore.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f71523c = {ProxyConfig.MATCH_ALL_SCHEMES, "FCM", CodePackage.GCM, ""};
    @GuardedBy("iidPrefs")

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f71524a;

    /* renamed from: b  reason: collision with root package name */
    private final String f71525b;

    public a(@NonNull f fVar) {
        this.f71524a = fVar.l().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f71525b = b(fVar);
    }

    private String a(@NonNull String str, @NonNull String str2) {
        return "|T|" + str + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + str2;
    }

    private static String b(f fVar) {
        String d10 = fVar.p().d();
        if (d10 != null) {
            return d10;
        }
        String c10 = fVar.p().c();
        if (!c10.startsWith("1:") && !c10.startsWith("2:")) {
            return c10;
        }
        String[] split = c10.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Nullable
    private static String c(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private String d(String str) {
        try {
            return new JSONObject(str).getString(BidResponsed.KEY_TOKEN);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private PublicKey e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.w("ContentValues", "Invalid key stored " + e10);
            return null;
        }
    }

    @Nullable
    private String g() {
        String string;
        synchronized (this.f71524a) {
            string = this.f71524a.getString("|S|id", null);
        }
        return string;
    }

    @Nullable
    private String h() {
        synchronized (this.f71524a) {
            try {
                String string = this.f71524a.getString("|S||P|", null);
                if (string == null) {
                    return null;
                }
                PublicKey e10 = e(string);
                if (e10 == null) {
                    return null;
                }
                return c(e10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public String f() {
        synchronized (this.f71524a) {
            try {
                String g10 = g();
                if (g10 != null) {
                    return g10;
                }
                return h();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public String i() {
        synchronized (this.f71524a) {
            try {
                for (String str : f71523c) {
                    String string = this.f71524a.getString(a(this.f71525b, str), null);
                    if (string != null && !string.isEmpty()) {
                        if (string.startsWith("{")) {
                            string = d(string);
                        }
                        return string;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
