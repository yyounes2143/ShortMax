package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ extends ex {
    public oJ(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        float Ry = this.ZYk.Ry() / 100.0f;
        float RZ = this.ZYk.RZ() / 100.0f;
        if ("reverse".equals(this.ZYk.eZI()) && this.ZYk.WcQ() <= 0.0d) {
            RZ = Ry;
            Ry = RZ;
        }
        this.tB.setAlpha(Ry);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "alpha", Ry, RZ).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
