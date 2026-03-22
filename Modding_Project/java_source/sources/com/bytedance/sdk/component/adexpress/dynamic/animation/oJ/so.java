package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class so extends ex {
    public so(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    @SuppressLint({"ObjectAnimatorBinding"})
    List<ObjectAnimator> oJ() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "rippleValue", 0.0f, 1.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ((ViewGroup) this.tB.getParent()).setClipChildren(false);
        ((ViewGroup) this.tB.getParent().getParent()).setClipChildren(false);
        ((ViewGroup) this.tB.getParent().getParent().getParent()).setClipChildren(false);
        this.tB.setTag(2097610712, this.ZYk.so());
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        return arrayList;
    }
}
