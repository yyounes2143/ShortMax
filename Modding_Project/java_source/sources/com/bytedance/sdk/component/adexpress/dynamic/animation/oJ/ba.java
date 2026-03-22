package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ba extends ex {
    public ba(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        float f10 = this.tB.getLayoutParams().width;
        this.tB.setTranslationX(f10);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationX", f10, 0.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.tB, "alpha", 0.0f, 1.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        arrayList.add(oJ(duration2));
        return arrayList;
    }
}
