package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class PiB {
    private boolean Pfn = false;
    com.bytedance.sdk.component.adexpress.dynamic.ex ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12998ba;
    private final oJ ex;
    com.bytedance.sdk.openadsdk.component.reward.top.tB oJ;
    private final Activity tB;

    public PiB(oJ oJVar) {
        this.tB = oJVar.HyG;
        this.ex = oJVar;
    }

    public void Pfn(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setSkipEnable(z10);
    }

    public void ZYk(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.setSoundMute(z10);
        }
        com.bytedance.sdk.component.adexpress.dynamic.ex exVar = this.ZYk;
        if (exVar != null) {
            exVar.setSoundMute(z10);
        }
    }

    public void ex(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setShowSkip(z10);
    }

    public void oJ() {
        if (this.Pfn) {
            return;
        }
        this.Pfn = true;
        oJ oJVar = this.ex;
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = oJVar.bD;
        if (tBVar != null) {
            this.oJ = tBVar;
            this.f12998ba = true;
        } else {
            this.oJ = (com.bytedance.sdk.openadsdk.component.reward.top.tB) oJVar.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.yV);
        }
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar2 = this.oJ;
        if (tBVar2 != null) {
            tBVar2.oJ(this.ex.ZYk);
            if (this.ex.ZYk.Br()) {
                oJ(false);
            } else {
                oJ(this.ex.ZYk.LTg());
            }
        }
    }

    public void tB(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setShowSound(z10);
    }

    public void Pfn() {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setSkipInvisiable();
    }

    public void ex() {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.clickSkip();
        }
    }

    public void tB() {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.showSkipButton();
    }

    public void ZYk() {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.showCountDownText();
    }

    public void oJ(boolean z10) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setShowDislike(z10);
    }

    public void oJ(String str, CharSequence charSequence) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setTime(String.valueOf(str), charSequence);
    }

    public void oJ(CharSequence charSequence) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar;
        if (this.f12998ba || (tBVar = this.oJ) == null) {
            return;
        }
        tBVar.setSkipText(charSequence);
    }

    public void oJ(String str) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.clickSound(str);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.top.ZYk zYk) {
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.setListener(zYk);
        }
    }

    public void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex exVar) {
        this.ZYk = exVar;
    }

    public void oJ(int i10) {
        View findViewById;
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.oJ;
        if (tBVar == null || tBVar.getITopLayout() == null || i10 == 0 || (findViewById = this.oJ.getITopLayout().findViewById(520093713)) == null || !(findViewById.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || findViewById.getWidth() <= 0 || findViewById.getVisibility() != 0) {
            return;
        }
        int[] iArr = new int[2];
        findViewById.getLocationOnScreen(iArr);
        int width = i10 - (iArr[0] + findViewById.getWidth());
        if (width < cdg.ZYk(this.tB, 16.0f)) {
            ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).rightMargin += cdg.ZYk(this.tB, 16.0f) - width;
            findViewById.requestLayout();
        }
    }
}
