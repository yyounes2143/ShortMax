package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes3.dex */
public class awB extends ba {
    com.bytedance.sdk.component.adexpress.dynamic.ex.so ZYk;
    String oJ;

    public awB(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar, String str) {
        super(context, dynamicRootView, soVar);
        this.oJ = str;
        this.ZYk = soVar;
        com.bytedance.sdk.component.adexpress.ba.kkU lottieView = getLottieView();
        if (lottieView != null) {
            addView(lottieView, getWidgetLayoutParams());
        }
    }

    private com.bytedance.sdk.component.adexpress.ba.kkU getLottieView() {
        String str;
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB;
        if (soVar == null || soVar.kkU() == null || this.dLZ == null || TextUtils.isEmpty(this.oJ)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn = this.PiB.kkU().Pfn();
        if (Pfn != null) {
            str = Pfn.UK();
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.ba.kkU kku = new com.bytedance.sdk.component.adexpress.ba.kkU(this.dLZ);
        kku.setImageLottieTosPath(this.oJ + "static/lotties/" + str + ".json");
        kku.so();
        return kku;
    }
}
