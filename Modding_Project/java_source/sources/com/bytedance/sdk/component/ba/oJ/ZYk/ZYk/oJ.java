package com.bytedance.sdk.component.ba.oJ.ZYk.ZYk;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.oJ.oJ.ba;
import com.bytedance.sdk.component.ba.oJ.oJ.oJ.cFZ;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    public static void ZYk() {
        if (so.cFZ().ba() == null) {
            return;
        }
        try {
            ContentResolver tB = tB();
            if (tB != null) {
                tB.getType(Uri.parse(ex() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    private static String ex() {
        return cFZ.ZYk + "/ad_log_event/";
    }

    public static void oJ() {
        if (so.cFZ().ba() == null) {
            return;
        }
        try {
            ContentResolver tB = tB();
            if (tB != null) {
                tB.getType(Uri.parse(ex() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    private static ContentResolver tB() {
        try {
            if (so.cFZ().ba() != null) {
                return so.cFZ().ba().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        try {
            ContentResolver tB = tB();
            if (tB != null) {
                String oJ = ba.oJ(oJVar.ba());
                tB.getType(Uri.parse(ex() + "adLogDispatch?event=" + oJ));
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public static void oJ(String str, List<String> list, boolean z10) {
        if (!TextUtils.isEmpty(str) && list != null && !list.isEmpty()) {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (String str2 : list) {
                    sb2.append(ba.oJ(str2));
                    sb2.append(",");
                }
                String oJ = ba.oJ(sb2.toString());
                String str3 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(oJ) + "&replace=" + String.valueOf(z10);
                ContentResolver tB = tB();
                if (tB == null) {
                    return;
                }
                tB.getType(Uri.parse(ex() + "trackAdUrl" + str3));
            } catch (Throwable unused) {
            }
        }
    }

    public static void oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver tB = tB();
            if (tB != null) {
                tB.getType(Uri.parse(ex() + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }
}
