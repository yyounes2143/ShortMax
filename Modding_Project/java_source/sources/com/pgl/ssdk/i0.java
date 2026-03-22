package com.pgl.ssdk;

import android.text.TextUtils;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class i0 {
    public static String a(String str) {
        String[] b10 = b(str);
        ArrayList arrayList = new ArrayList();
        if (b10 != null && b10.length > 0) {
            for (String str2 : b10) {
                try {
                    Class.forName(str2);
                    arrayList.add(str2);
                } catch (ClassNotFoundException unused) {
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList.toString();
        }
        return null;
    }

    public static String[] b(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.split("//");
        }
        return null;
    }
}
