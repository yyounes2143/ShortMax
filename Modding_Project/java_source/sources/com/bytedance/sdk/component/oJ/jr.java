package com.bytedance.sdk.component.oJ;

import android.text.TextUtils;
/* loaded from: classes3.dex */
class jr {
    private static boolean oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String oJ(Throwable th2) {
        StringBuilder sb2 = new StringBuilder("{\"code\":");
        sb2.append(th2 instanceof Ry ? ((Ry) th2).oJ : 0);
        sb2.append("}");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String oJ(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "{\"code\":1}";
        }
        if (oJ) {
            str2 = str.substring(1, str.length() - 1);
        } else {
            str2 = "";
        }
        String concat = "{\"code\":1,\"__data\":".concat(String.valueOf(str));
        if (!str2.isEmpty()) {
            return concat + "," + str2 + "}";
        }
        return concat + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String oJ() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void oJ(boolean z10) {
        oJ = z10;
    }
}
