package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class dLZ extends ex {
    public dLZ(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null && (viewGroup2 instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn)) {
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
                ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
                if (viewGroup3 != null && (viewGroup3 instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn)) {
                    viewGroup3.setClipChildren(false);
                    viewGroup3.setClipToPadding(false);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        float f10;
        float dLZ = (float) this.ZYk.dLZ();
        float BTZ = (float) this.ZYk.BTZ();
        String eZI = this.ZYk.eZI();
        float f11 = 1.0f;
        if (!"reverse".equals(eZI) && !"alternate-reverse".equals(eZI)) {
            f10 = BTZ;
            BTZ = 1.0f;
            f11 = dLZ;
            dLZ = 1.0f;
        } else {
            f10 = 1.0f;
        }
        this.tB.setTag(2097610710, this.ZYk.ZYk());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "scaleX", dLZ, f11).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.tB, "scaleY", BTZ, f10).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        arrayList.add(oJ(duration2));
        return arrayList;
    }
}
