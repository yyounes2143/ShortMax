package com.bytedance.sdk.openadsdk.core.kkU.ZYk;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.cY;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.jFA.ba.ZYk {
    public oJ(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk
    public void dLZ(String str) {
        super.dLZ(str);
        if (TextUtils.isEmpty(str) || TextUtils.equals("null", str)) {
            return;
        }
        try {
            String format = String.format(cY.oJ(this.ZYk, "tt_comment_num"), Integer.valueOf(Integer.parseInt(str)));
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setText("(" + format + ")");
        } catch (Exception unused) {
        }
    }
}
