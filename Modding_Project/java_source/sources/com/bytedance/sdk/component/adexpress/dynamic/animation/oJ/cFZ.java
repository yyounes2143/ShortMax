package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class cFZ extends ex {
    public cFZ(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> oJ() {
        this.tB.setTag(2097610709, Integer.valueOf(this.ZYk.tB()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "marqueeValue", 0.0f, 1.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
