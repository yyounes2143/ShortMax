package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class jFA extends ex {
    public jFA(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "rotation", 0.0f, 360.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
