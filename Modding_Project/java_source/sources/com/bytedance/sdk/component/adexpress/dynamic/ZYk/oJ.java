package com.bytedance.sdk.component.adexpress.dynamic.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ;
/* loaded from: classes3.dex */
public class oJ {
    public static int oJ(cFZ cfz) {
        if (cfz == null) {
            return 0;
        }
        String ofl = cfz.ofl();
        String jr2 = cfz.jr();
        if (TextUtils.isEmpty(jr2) || TextUtils.isEmpty(ofl) || !jr2.equals("creative")) {
            return 0;
        }
        if (ofl.equals("shake")) {
            return 2;
        }
        if (ofl.equals("twist")) {
            return 3;
        }
        if (!ofl.equals("slide")) {
            return 0;
        }
        return 1;
    }
}
