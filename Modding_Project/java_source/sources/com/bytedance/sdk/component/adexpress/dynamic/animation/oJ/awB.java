package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class awB extends ex {
    public awB(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        float f10;
        float oJ = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.ba());
        float oJ2 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.cFZ());
        float f11 = 0.0f;
        if ("reverse".equals(this.ZYk.eZI())) {
            f10 = oJ2;
            oJ2 = 0.0f;
            f11 = oJ;
            oJ = 0.0f;
        } else {
            f10 = 0.0f;
        }
        if (com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(this.tB.getContext())) {
            oJ = -oJ;
            f11 = -f11;
        }
        this.tB.setTranslationX(oJ);
        this.tB.setTranslationY(oJ2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationX", oJ, f11).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.tB, "translationY", oJ2, f10).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        arrayList.add(oJ(duration2));
        return arrayList;
    }
}
