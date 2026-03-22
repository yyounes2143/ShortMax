package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BTZ extends ex {
    public BTZ(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> oJ() {
        int i10;
        int i11;
        this.tB.setTag(2097610711, Integer.valueOf(this.ZYk.ex()));
        View view = this.tB;
        if (view != null && com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(view.getContext())) {
            i11 = 0;
            i10 = 1;
        } else {
            i10 = 0;
            i11 = 1;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "shineValue", i10, i11).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
