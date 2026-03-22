package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PiB extends ex {
    public PiB(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        View view = this.tB;
        if ((view instanceof ImageView) && (view.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dLZ)) {
            View view2 = (View) this.tB.getParent();
            this.tB = view2;
            ((ViewGroup) view2).setClipChildren(true);
            ((ViewGroup) this.tB.getParent()).setClipChildren(true);
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "stretchValue", 0.0f, 1.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
