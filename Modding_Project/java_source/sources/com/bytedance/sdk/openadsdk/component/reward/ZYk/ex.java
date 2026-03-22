package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.component.reward.view.BTZ;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.kkU;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class ex extends ZYk {
    public ex(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    private static LinearLayout ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setId(eZI.Id);
        pfn.setOrientation(1);
        pfn.setVisibility(8);
        pfn.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return pfn;
    }

    public static boolean oJ(cY cYVar) {
        return QSm.ZYk(cYVar) || QSm.ex(cYVar) || QSm.Pfn(cYVar);
    }

    private static ImageView tB(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setScaleType(ImageView.ScaleType.FIT_XY);
        exVar.setImageResource(com.bytedance.sdk.component.utils.cY.ex(context, "tt_up_slide"));
        exVar.setId(eZI.cY);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(cdg.ZYk(context, 18.0f), cdg.ZYk(context, 16.0f));
        layoutParams.gravity = 17;
        layoutParams.topMargin = cdg.ZYk(context, 45.0f);
        exVar.setLayoutParams(layoutParams);
        return exVar;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean Pfn() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void PiB() {
        BTZ btz;
        QSm qSm;
        if (QSm.ZYk(this.oJ.ZYk) && (btz = this.oJ.ofl) != null && (qSm = btz.awB) != null) {
            if (qSm.ex()) {
                this.oJ.ofl.ZYk(0);
                this.oJ.eZI.set(true);
            } else {
                this.oJ.f13024si.set(true);
                oJ(true, false, true, 80);
            }
        }
        if (QSm.ex(this.oJ.ZYk) || QSm.Pfn(this.oJ.ZYk)) {
            oJ(true, false, true, 70);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean ba() {
        if (QSm.ZYk(this.oJ.ZYk)) {
            return true;
        }
        if (!QSm.ex(this.oJ.ZYk) && !QSm.Pfn(this.oJ.ZYk)) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public RFEndCardBackUpLayout so() {
        return null;
    }

    public static void oJ(cY cYVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        if (QSm.ZYk(cYVar)) {
            oJ(frameLayout, cYVar);
        } else if (!QSm.ex(cYVar) && !QSm.Pfn(cYVar)) {
            ZYk.oJ(frameLayout, oJVar);
        } else {
            ZYk(frameLayout, cYVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void ZYk(FrameLayout frameLayout, cY cYVar) {
        Context context = frameLayout.getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar.setId(eZI.QSm);
        frameLayout.addView(tBVar, new FrameLayout.LayoutParams(-1, -1));
        tBVar.addView(oJ(context, cYVar));
        LinearLayout ZYk = ZYk(context);
        ZYk.setBackgroundColor(Color.parseColor("#99161823"));
        tBVar.addView(ZYk);
        ZYk.addView(tB(context));
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar2.setId(eZI.UN);
        frameLayout.addView(tBVar2, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar3.setId(eZI.kkU);
        tBVar2.addView(tBVar3, new FrameLayout.LayoutParams(-1, -1));
        tBVar3.addView(ZYk.oJ(context));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar4.setId(eZI.Ry);
        tBVar4.setVisibility(8);
        tBVar4.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        tBVar3.addView(tBVar4, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(eZI.RZ);
        exVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        tBVar4.addView(exVar, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar2);
        View kku = new kkU(context);
        kku.setId(eZI.f13412mu);
        kku.setClickable(true);
        kku.setFocusable(true);
        frameLayout.addView(kku, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void oJ(FrameLayout frameLayout, cY cYVar) {
        Context context = frameLayout.getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(1);
        frameLayout.addView(pfn, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar.setId(eZI.UN);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        pfn.addView(tBVar, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar2.setId(eZI.kkU);
        tBVar.addView(tBVar2, new FrameLayout.LayoutParams(-1, -1));
        tBVar2.addView(ZYk.oJ(context));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar3.setId(eZI.Ry);
        tBVar3.setVisibility(8);
        tBVar3.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        tBVar2.addView(tBVar3, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(eZI.RZ);
        exVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        tBVar3.addView(exVar, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar4.setId(eZI.QSm);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.0f;
        pfn.addView(tBVar4, layoutParams3);
        tBVar4.addView(oJ(context, cYVar));
        LinearLayout ZYk = ZYk(context);
        ZYk.setBackgroundColor(Color.parseColor("#70161823"));
        tBVar4.addView(ZYk);
        ZYk.addView(tB(context));
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar4, cYVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void cFZ() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static com.bytedance.sdk.component.jFA.ba oJ(Context context, cY cYVar) {
        com.bytedance.sdk.component.jFA.ba ZYk = com.bytedance.sdk.openadsdk.PiB.oJ.oJ().ZYk(cYVar);
        if (ZYk != null) {
            ZYk.setLpPreRender(true);
            ViewGroup viewGroup = (ViewGroup) ZYk.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(ZYk);
            }
        } else {
            ZYk = new com.bytedance.sdk.component.jFA.ba(context, true);
            ZYk.setLayerType(2, null);
        }
        cdg.oJ((View) ZYk, 0);
        ZYk.setId(eZI.f13414oq);
        ZYk.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.component.reward.view.jFA jfa) {
        oJ(this.ZYk, jfa, this.oJ);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(FrameLayout frameLayout) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar;
        WcQ wcQ;
        if (!QSm.ex(this.oJ.ZYk) || (wcQ = (oJVar = this.oJ).jXJ) == null) {
            return;
        }
        wcQ.oJ(oJVar.ZYk.RZ().ZYk() * 1000);
    }
}
