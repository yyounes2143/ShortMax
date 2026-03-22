package pb;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64849a = "f";

    public static String a(String str) {
        Context a10 = b.a();
        if (a10 == null) {
            return "";
        }
        try {
            return a10.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            String str2 = f64849a;
            f.d(str2, "getVersion NameNotFoundException : " + e10.getMessage());
            return "";
        } catch (Exception e11) {
            String str3 = f64849a;
            f.d(str3, "getVersion: " + e11.getMessage());
            return "";
        } catch (Throwable unused) {
            f.d(f64849a, "throwable");
            return "";
        }
    }
}
