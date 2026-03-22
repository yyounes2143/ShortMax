package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class cFZ extends ZYk {
    private String Ry;
    private final int awB;
    private ViewGroup eZI;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.reward.view.cFZ f12991si;

    public cFZ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
        this.Ry = "fullscreen_interstitial_ad";
        this.awB = this.ZYk.Dc();
    }

    private boolean Jc() {
        cY cYVar = this.ZYk;
        if (cYVar == null || cYVar.oIC() != 2) {
            return false;
        }
        return true;
    }

    private void Ln() {
        FrameLayout.LayoutParams layoutParams;
        FrameLayout frameLayout = new FrameLayout(this.oJ.HyG);
        this.eZI = frameLayout;
        frameLayout.setId(eZI.Du);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        this.eZI.setLayoutParams(layoutParams2);
        View dLZ = this.oJ.ofl.dLZ();
        if (dLZ != null) {
            layoutParams2.bottomMargin = dLZ.getHeight();
        }
        com.bytedance.sdk.openadsdk.component.reward.view.cFZ cfz = new com.bytedance.sdk.openadsdk.component.reward.view.cFZ(this.oJ.HyG);
        this.f12991si = cfz;
        cfz.setId(eZI.oG);
        if (this.oJ.ZYk.Tt() == 1) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -1);
        }
        layoutParams.gravity = 17;
        this.f12991si.setLayoutParams(layoutParams);
        this.eZI.addView(this.f12991si);
        LpP();
    }

    private void LpP() {
        if (this.eZI == null) {
            return;
        }
        oJ((View) this.f12991si);
    }

    private void ZYk(cY cYVar) {
        if (cYVar != null && this.f12991si != null) {
            nke();
            oJ((ImageView) this.f12991si);
        }
    }

    private void nke() {
        Ry ry;
        List<Ry> yB = this.ZYk.yB();
        if (yB != null && yB.size() > 0 && (ry = yB.get(0)) != null) {
            try {
                int ZYk = ry.ZYk();
                int tB = ry.tB();
                if (ZYk != 0 && tB != 0) {
                    this.f12991si.setRatio(ZYk / tB);
                    return;
                }
                int i10 = this.awB;
                if (i10 == 33) {
                    this.f12991si.setRatio(1.0f);
                } else if (i10 == 3) {
                    this.f12991si.setRatio(1.91f);
                } else {
                    this.f12991si.setRatio(0.56f);
                }
            } catch (Exception e10) {
                QSm.tB("TTAD.RFTI", e10.getMessage());
            }
        }
    }

    private void oJ(ImageView imageView) {
        List<Ry> yB;
        Ry ry;
        cY cYVar = this.ZYk;
        if (cYVar == null || (yB = cYVar.yB()) == null || yB.size() <= 0 || (ry = yB.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(yB.get(0)).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(this.ZYk, ry.oJ(), imageView));
    }

    private com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba tB(cY cYVar) {
        if (cYVar.sQ() == 4) {
            return new com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex(si.oJ(), this.Ry);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean Pfn() {
        if (!Jc() && !Ln.cFZ(this.ZYk)) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean ba() {
        return Jc();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void cFZ() {
        if (com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(this.ZYk)) {
            this.f12992ba.ZYk(8);
        }
        this.f12993so.tB(false);
        this.f12993so.ex(false);
        if (this.ZYk.oIC() == 2) {
            this.f12993so.oJ(false);
            this.f12992ba.ba(8);
            return;
        }
        this.f12993so.oJ(this.ZYk.LTg());
        if (this.oJ.VSB) {
            Message obtain = Message.obtain();
            obtain.what = 900;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            int XAo = (int) (oJVar.cY.XAo() * 1000.0d);
            oJVar.jFA = XAo;
            obtain.arg1 = XAo;
            this.oJ.Jm.sendMessage(obtain);
        }
    }

    protected void oJ(View view) {
        if (view == null || this.oJ.HyG == null || this.ZYk == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk = this.BTZ;
        if (zYk == null) {
            Activity activity = this.oJ.HyG;
            cY cYVar = this.ZYk;
            String str = this.Ry;
            zYk = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(activity, cYVar, str, HyG.oJ(str));
            zYk.oJ(tB(this.ZYk));
            HashMap hashMap = new HashMap();
            if (Ln.si(this.ZYk)) {
                hashMap.put("click_scence", 3);
            } else {
                hashMap.put("click_scence", 1);
            }
            zYk.oJ(hashMap);
        }
        Activity activity2 = this.oJ.HyG;
        if (activity2 != null) {
            zYk.oJ(activity2);
        }
        view.setOnTouchListener(zYk);
        view.setOnClickListener(zYk);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(FrameLayout frameLayout) {
        try {
            Ln();
            ZYk(this.ZYk);
            frameLayout.addView(this.eZI);
        } catch (Exception e10) {
            Log.e("TTAD.RFTI", "bindAd: ", e10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.component.reward.view.jFA jfa) {
        if (com.bytedance.sdk.openadsdk.core.model.QSm.ZYk(this.ZYk)) {
            ex.oJ(jfa, this.ZYk);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.oJ;
            oJVar.jXJ.oJ((long) (oJVar.cY.XAo() * 1000.0d));
        } else if (!com.bytedance.sdk.openadsdk.core.model.QSm.ex(this.ZYk) && !com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(this.ZYk)) {
            super.oJ(jfa);
        } else {
            ex.ZYk(jfa, this.ZYk);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.oJ;
            oJVar2.jXJ.oJ((long) (oJVar2.cY.XAo() * 1000.0d));
        }
    }

    public static boolean oJ(cY cYVar) {
        return !cY.Pfn(cYVar) && cYVar.dzr() == 100.0f;
    }
}
