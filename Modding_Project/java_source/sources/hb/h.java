package hb;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import java.io.File;
/* loaded from: classes5.dex */
public class h {
    public static boolean a(Context context) {
        if (System.currentTimeMillis() - l.a(context, "Privacy_MY", "flashKeyTime", -1L) > 43200000) {
            return true;
        }
        return false;
    }

    public static boolean b(Context context, String str) {
        if (context == null) {
            return true;
        }
        if (context.checkSelfPermission(str) != 0) {
            f1.m("hmsSdk", "not have read phone permission!");
            return true;
        }
        return false;
    }

    @SuppressLint({"DefaultLocale"})
    public static boolean c(Context context, String str, int i10) {
        String str2 = l.h(context, str) + ".xml";
        File file = new File(context.getFilesDir(), "../shared_prefs/" + str2);
        if (!file.exists()) {
            String str3 = context.getPackageName() + "_" + str2;
            file = new File(context.getFilesDir(), "../../shared_prefs/" + str3);
        }
        long length = file.length();
        if (length > i10) {
            f1.h("hmsSdk", String.format("reach local file limited size - file len: %d limitedSize: %d", Long.valueOf(length), Integer.valueOf(i10)));
            return true;
        }
        return false;
    }

    public static boolean d(String str, long j10, long j11) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            if (j10 - Long.parseLong(str) > j11) {
                return true;
            }
            return false;
        } catch (NumberFormatException unused) {
            f1.m("hmsSdk", "isTimeExpired(): Data type conversion error : number format !");
            return true;
        }
    }
}
