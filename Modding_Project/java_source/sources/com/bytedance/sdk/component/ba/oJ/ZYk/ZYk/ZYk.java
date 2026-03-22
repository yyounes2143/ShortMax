package com.bytedance.sdk.component.ba.oJ.ZYk.ZYk;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.ba;
import com.bytedance.sdk.component.ba.oJ.oJ.oJ.cFZ;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk {
    public static ba oJ;

    public static void ZYk() {
        if (so.cFZ().ba() == null) {
            return;
        }
        try {
            ba oJ2 = oJ(so.cFZ().ba());
            if (oJ2 != null) {
                oJ2.oJ(Uri.parse(ex() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    private static String ex() {
        return cFZ.ZYk + "/ad_log_event/";
    }

    public int oJ(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public String tB() {
        return "ad_log_event";
    }

    public int oJ(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public Cursor oJ(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public Uri oJ(Uri uri, ContentValues contentValues) {
        return null;
    }

    public static ba oJ(Context context) {
        try {
            if (oJ == null) {
                oJ = so.cFZ().eZI().dLZ();
            }
        } catch (Exception unused) {
        }
        return oJ;
    }

    public static void oJ() {
        if (so.cFZ().ba() == null) {
            return;
        }
        try {
            ba oJ2 = oJ(so.cFZ().ba());
            if (oJ2 != null) {
                oJ2.oJ(Uri.parse(ex() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void oJ(com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        try {
            ba oJ2 = oJ(so.cFZ().ba());
            if (oJ2 != null) {
                String oJ3 = com.bytedance.sdk.component.ba.oJ.oJ.oJ.ba.oJ(oJVar.ba());
                oJ2.oJ(Uri.parse(ex() + "adLogDispatch?event=" + oJ3));
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public static void oJ(String str, List<String> list, boolean z10, int i10, String str2) {
        if (list != null && !list.isEmpty()) {
            try {
                StringBuilder sb2 = new StringBuilder();
                for (String str3 : list) {
                    sb2.append(com.bytedance.sdk.component.ba.oJ.oJ.oJ.ba.oJ(str3));
                    sb2.append(",");
                }
                String oJ2 = com.bytedance.sdk.component.ba.oJ.oJ.oJ.ba.oJ(sb2.toString());
                String str4 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(oJ2) + "&replace=" + String.valueOf(z10) + "&urlType=" + String.valueOf(i10) + "&adId=" + str2;
                ba oJ3 = oJ(so.cFZ().ba());
                if (oJ3 == null) {
                    return;
                }
                oJ3.oJ(Uri.parse(ex() + "trackAdUrl" + str4));
            } catch (Throwable unused) {
            }
        }
    }

    public static void oJ(String str, boolean z10) {
        if (so.cFZ().eZI().ba() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ba oJ2 = oJ(so.cFZ().ba());
            if (oJ2 != null) {
                oJ2.oJ(Uri.parse(ex() + "trackAdFailed?did=" + String.valueOf(str) + "&triggerOnInit=" + z10));
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r1.equals("adLogStop") == false) goto L3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String oJ(android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ba.oJ.ZYk.ZYk.ZYk.oJ(android.net.Uri):java.lang.String");
    }
}
