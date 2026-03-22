package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.content.Context;
import com.bytedance.sdk.openadsdk.utils.HyG;
/* loaded from: classes3.dex */
public class cFZ {
    public static ba oJ(Context context, String str) {
        if (tB.oJ()) {
            return new Pfn(context, str);
        }
        if (HyG.ex(context)) {
            return new ex(context, str);
        }
        return new oJ(context, str);
    }
}
