package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.WcQ.dLZ;
import com.bytedance.sdk.openadsdk.activity.ZYk;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.WcQ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.jFA;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jFA extends tB {
    private ZYk.AbstractC0189ZYk BTZ;
    public WcQ Pfn;
    private int PiB;
    private Pfn WcQ;
    private so awB;

    /* renamed from: ba  reason: collision with root package name */
    private final List<so> f12924ba;
    private com.bytedance.sdk.openadsdk.component.reward.top.tB cFZ;
    private com.bytedance.sdk.openadsdk.core.Pfn.so dLZ;
    private int eZI;
    private com.bytedance.sdk.openadsdk.core.Pfn.tB jFA;
    private com.bytedance.sdk.openadsdk.core.Pfn.tB kkU;

    /* renamed from: so  reason: collision with root package name */
    private dLZ f12925so;

    public jFA(Activity activity, cY cYVar, ZYk zYk) {
        super(activity, cYVar, zYk);
        this.f12924ba = new ArrayList();
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(activity);
        this.jFA = tBVar;
        if (Build.VERSION.SDK_INT >= 35) {
            tBVar.setFitsSystemWindows(true);
        }
        activity.setContentView(this.jFA);
    }

    private void QSm() {
        boolean PiB = PiB.ib().PiB(String.valueOf(this.ZYk.uv()));
        int i10 = 0;
        if (this.ex.tB()) {
            i10 = ZYk(0, PiB);
        }
        if (this.f12924ba.isEmpty() && !Ln.tB(this.ZYk)) {
            int i11 = i10 + 1;
            this.f12924ba.add(oJ(this.ex, this.ZYk, i10, i11, true));
            i10 = i11;
        }
        oJ(i10, PiB);
    }

    private int ZYk(int i10, boolean z10) {
        List<cY> list;
        boolean z11;
        int i11;
        cY cYVar;
        int i12;
        cY cYVar2;
        List<cY> BnM = this.ZYk.BnM();
        if (BnM.isEmpty()) {
            return i10;
        }
        int size = BnM.size();
        this.PiB = size;
        int i13 = i10;
        int i14 = 0;
        while (i14 < size) {
            boolean z12 = i14 == size + (-1);
            cY cYVar3 = BnM.get(i14);
            if (Ln.ZYk(cYVar3)) {
                if (Ln.tB(cYVar3)) {
                    this.f12924ba.add(new Pfn(this.ex, cYVar3, i13, i14, true, z12, false));
                    z11 = z12;
                    i12 = i13 + 1;
                    list = BnM;
                    i11 = i14;
                    cYVar = cYVar3;
                } else {
                    this.f12924ba.add(oJ(this.ex, cYVar3, i13, i14, z12));
                    z11 = z12;
                    list = BnM;
                    i11 = i14;
                    this.f12924ba.add(new Pfn(this.ex, cYVar3, i13 + 1, i14, true, z12, false));
                    i12 = i13 + 2;
                    cYVar = cYVar3;
                }
            } else {
                list = BnM;
                z11 = z12;
                i11 = i14;
                cYVar = cYVar3;
                this.f12924ba.add(oJ(this.ex, cYVar, i13, i11, z11));
                i12 = i13 + 1;
            }
            if (z10) {
                boolean oJ = this.ex.oJ(cYVar);
                if (!z11) {
                    if (this.ex.ZYk() && oJ) {
                        this.f12924ba.add(new Pfn(this.ex, cYVar, i12, i11, false, z11, false));
                        i13 = i12 + 1;
                    }
                } else {
                    if (this.ex.oJ() && oJ && !Ln.ZYk(cYVar)) {
                        cYVar2 = cYVar;
                        this.f12924ba.add(new Pfn(this.ex, cYVar, i12, i11, false, z11, false));
                        i12++;
                    } else {
                        cYVar2 = cYVar;
                    }
                    if (!TextUtils.isEmpty(this.ZYk.ba())) {
                        Pfn pfn = new Pfn(this.ex, cYVar2, i12, i11, false, z11, true);
                        this.WcQ = pfn;
                        this.f12924ba.add(pfn);
                        i13 = i12 + 1;
                    }
                }
                i14 = i11 + 1;
                BnM = list;
            }
            i13 = i12;
            i14 = i11 + 1;
            BnM = list;
        }
        return i13;
    }

    private void oq() {
        this.Pfn = com.bytedance.sdk.openadsdk.utils.jFA.oJ(this.oJ, new jFA.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.jFA.1
            @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
            public void ZYk() {
                if (jFA.this.cFZ != null) {
                    jFA.this.cFZ.setSkipInvisiable();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.utils.jFA.oJ
            public View oJ() {
                if (jFA.this.cFZ != null) {
                    return jFA.this.cFZ.getCloseButton();
                }
                return null;
            }
        });
    }

    private void tB(so soVar) {
        dLZ dlz = this.f12925so;
        if (dlz != null) {
            cdg.cFZ(dlz);
            this.f12925so = null;
        }
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar = this.cFZ;
        if (tBVar != null) {
            cdg.cFZ(tBVar);
            cdg.cFZ(this.cFZ.getITopLayout());
            this.cFZ = null;
        }
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk != null) {
            abstractC0189ZYk.tB();
        }
        if (soVar instanceof cFZ) {
            ((cFZ) soVar).nQI();
        }
        WcQ wcQ = this.Pfn;
        if (wcQ != null) {
            wcQ.tB();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public so BTZ() {
        return this.awB;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public boolean Pfn() {
        if (this.f12924ba.isEmpty()) {
            return false;
        }
        List<so> list = this.f12924ba;
        so soVar = list.get(list.size() - 1);
        if (!(soVar instanceof Pfn) || !((Pfn) soVar).oJ) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public com.bytedance.sdk.openadsdk.component.reward.top.tB PiB() {
        return this.cFZ;
    }

    public int RZ() {
        so soVar = this.awB;
        if (soVar != null) {
            return soVar.dLZ;
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public so WcQ() {
        so soVar = this.awB;
        if (soVar == null) {
            return null;
        }
        int i10 = soVar.dLZ;
        while (true) {
            i10++;
            if (i10 >= this.f12924ba.size()) {
                return null;
            }
            so soVar2 = this.f12924ba.get(i10);
            if (soVar2 instanceof oJ) {
                return soVar2;
            }
            if ((soVar2 instanceof Pfn) && Ln.tB(soVar2.jFA) && soVar2.f12931si) {
                return soVar2;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public Pfn awB() {
        int i10;
        Pfn pfn = this.WcQ;
        if (pfn != null) {
            return pfn;
        }
        so soVar = this.awB;
        if (soVar != null) {
            i10 = soVar.dLZ;
        } else {
            i10 = -1;
        }
        int size = this.f12924ba.size() - 1;
        while (true) {
            if (size <= i10) {
                break;
            }
            so soVar2 = this.f12924ba.get(size);
            if (soVar2 instanceof Pfn) {
                Pfn pfn2 = (Pfn) soVar2;
                if (pfn2.oJ) {
                    this.WcQ = pfn2;
                    break;
                }
            }
            size--;
        }
        return this.WcQ;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void cFZ() {
        super.cFZ();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.BTZ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public int dLZ() {
        return this.eZI;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public List<cY> eZI() {
        return this.ZYk.BnM();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ex() {
        super.ex();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.Rl();
        }
        int RZ = RZ();
        for (so soVar2 : this.f12924ba) {
            if (soVar2.dLZ >= RZ) {
                soVar2.QSm();
            }
        }
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk != null) {
            abstractC0189ZYk.tB();
        }
        WcQ wcQ = this.Pfn;
        if (wcQ != null) {
            wcQ.tB();
        }
        so soVar3 = this.awB;
        if (soVar3 != null && !soVar3.cY() && !this.ZYk.cMS()) {
            com.bytedance.sdk.openadsdk.core.WcQ.ZYk().post(new ZYk.tB(this.ZYk));
        }
        this.awB = null;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public int jFA() {
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk != null) {
            return abstractC0189ZYk.oJ();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void kkU() {
        super.kkU();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.oq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void so() {
        super.so();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.ex();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ() {
        super.oJ();
        QSm();
    }

    private static so oJ(ZYk zYk, cY cYVar, int i10, int i11, boolean z10) {
        boolean kO = cYVar.kO();
        AdSlot BHY = cYVar.BHY();
        if (BHY != null) {
            kO = BHY.getDurationSlotType() == 7;
        }
        if (kO) {
            return new cFZ(zYk, cYVar, i10, i11, z10);
        }
        return new ba(zYk, cYVar, i10, i11, z10);
    }

    private void oJ(int i10, boolean z10) {
        if (awB() == null && this.ex.tB()) {
            oq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(Bundle bundle) {
        super.oJ(bundle);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(this.oJ);
        this.kkU = tBVar;
        this.jFA.addView(tBVar, new FrameLayout.LayoutParams(-1, -1));
        this.f12925so = new dLZ(this.oJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, cdg.ZYk(this.oJ, 2.0f));
        layoutParams.gravity = 80;
        this.jFA.addView(this.f12925so, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(this.oJ);
        this.dLZ = soVar;
        soVar.setTextColor(-1);
        this.dLZ.setTextSize(15.0f);
        this.dLZ.setShadowLayer(1.0f, 0.0f, 1.0f, ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = cdg.ZYk(this.oJ, 60.0f);
        layoutParams2.rightMargin = cdg.ZYk(this.oJ, 16.0f);
        layoutParams2.gravity = 8388661;
        this.jFA.addView(this.dLZ, layoutParams2);
        com.bytedance.sdk.openadsdk.component.reward.top.tB tBVar2 = new com.bytedance.sdk.openadsdk.component.reward.top.tB(this.oJ);
        this.cFZ = tBVar2;
        this.jFA.addView(tBVar2, new FrameLayout.LayoutParams(-1, -2));
        this.cFZ.oJ(this.ZYk);
        this.cFZ.setShowDislike(true);
        oJ(null, null, new ZYk.Pfn(1, null));
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void tB() {
        super.tB();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.PiB();
        }
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk != null) {
            abstractC0189ZYk.oJ(-1);
        }
        WcQ wcQ = this.Pfn;
        if (wcQ != null) {
            wcQ.ZYk();
        }
    }

    private void ZYk(so soVar, so soVar2, ZYk.Pfn pfn) {
        cY cYVar;
        cY cYVar2;
        if (this.BTZ == null) {
            if (soVar2 instanceof ba) {
                this.BTZ = new ZYk.oJ(this.ex, this.ZYk, this.cFZ);
            } else {
                this.BTZ = new ZYk.ex(this.ex, this.ZYk, this.cFZ);
            }
        }
        this.BTZ.ZYk();
        int i10 = 0;
        for (int i11 = soVar2.dLZ; i11 < this.f12924ba.size(); i11++) {
            so soVar3 = this.f12924ba.get(i11);
            boolean z10 = soVar3.f12931si;
            if (soVar3.ofl() && !z10) {
                break;
            }
            if (soVar3 instanceof oJ) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = soVar3.jFA.ib();
                i10 = ib2 != null ? (int) (i10 + ib2.ba()) : (int) (i10 + 10);
            } else if (soVar3 instanceof Pfn) {
                if (z10) {
                    i10 += Ln.cY(soVar3.jFA) + Ln.HL(soVar3.jFA);
                } else if (this.ex.ZYk() && (cYVar2 = soVar3.jFA) != null && !cYVar2.kZ()) {
                    i10 += soVar3.jFA.na().tB();
                }
            }
        }
        boolean z11 = soVar2 instanceof Pfn;
        if (z11 && !((Pfn) soVar2).oJ && !soVar2.f12931si && (cYVar = soVar2.jFA) != null && cYVar.kZ()) {
            this.BTZ.ex();
        } else {
            this.BTZ.oJ(i10, soVar2.jFA);
            if (z11) {
                if (soVar2.ofl() && !soVar2.f12931si) {
                    tB(soVar);
                } else if (!soVar2.f12931si) {
                    this.BTZ.tB(soVar2.jFA.na().tB());
                } else {
                    this.BTZ.oJ(soVar2.jFA, soVar2.Ry);
                }
            }
        }
        WcQ wcQ = this.Pfn;
        if (wcQ != null && soVar == null) {
            wcQ.oJ(i10 * 1000);
        }
        if (soVar2 instanceof oJ) {
            this.eZI++;
            oJ(0.0f);
            ZYk(soVar2);
        } else if (z11) {
            if (soVar2.f12931si) {
                this.dLZ.setVisibility(8);
                int i12 = soVar2.BTZ;
                int i13 = this.eZI;
                if (i12 >= i13) {
                    this.eZI = i13 + 1;
                }
            } else if (!((Pfn) soVar2).oJ) {
                ZYk(soVar2);
            } else {
                this.dLZ.setVisibility(8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(so soVar, so soVar2, ZYk.Pfn pfn) {
        so soVar3 = this.awB;
        if ((soVar3 == null || soVar3 == soVar) && !com.bytedance.sdk.component.utils.ZYk.oJ(this.oJ)) {
            RZ();
            if (soVar2 == null) {
                so soVar4 = this.awB;
                int i10 = soVar4 != null ? soVar4.dLZ + 1 : 0;
                if (i10 < this.f12924ba.size()) {
                    soVar2 = this.f12924ba.get(i10);
                }
                if (soVar2 == null) {
                    this.ex.ex();
                    return;
                }
            }
            so soVar5 = this.awB;
            if (soVar5 != null) {
                if (soVar5 == soVar2) {
                    return;
                }
                soVar5.PiB();
                this.awB.ex();
                com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ = this.awB.oJ();
                if (oJ != null) {
                    this.kkU.removeView(oJ);
                }
                this.awB.QSm();
                this.awB.PiB = false;
                if (this.ex.ZYk()) {
                    so soVar6 = this.awB;
                    if (soVar6 instanceof oJ) {
                        int i11 = soVar6.dLZ + 1;
                        so soVar7 = i11 < this.f12924ba.size() ? this.f12924ba.get(i11) : null;
                        if ((soVar7 instanceof Pfn) && soVar7 != soVar2) {
                            com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ2 = soVar7.oJ();
                            if (oJ2 != null && oJ2.getParent() != null && (oJ2.getParent() instanceof ViewGroup)) {
                                ((ViewGroup) oJ2.getParent()).removeView(oJ2);
                            }
                            soVar7.QSm();
                        }
                    }
                }
            }
            soVar2.PiB = true;
            so soVar8 = this.awB;
            this.awB = soVar2;
            ZYk(soVar8, soVar2, pfn);
            soVar2.ZYk(this.oJ, pfn);
            com.bytedance.sdk.openadsdk.component.reward.view.jFA oJ3 = soVar2.oJ();
            if (oJ3 != null) {
                ViewParent parent = oJ3.getParent();
                if (parent != null) {
                    if (parent == this.kkU) {
                        oJ3.setVisibility(0);
                    } else if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(oJ3);
                    }
                }
                if (oJ3.getParent() == null) {
                    this.kkU.addView(oJ3, new ViewGroup.LayoutParams(-1, -1));
                }
            }
            for (int i12 = soVar8 != null ? soVar8.dLZ : 0; i12 < this.f12924ba.size(); i12++) {
                this.f12924ba.get(i12).oJ(soVar8, this.awB, pfn);
            }
            this.ex.ZYk(this.awB);
        }
    }

    private void ZYk(so soVar) {
        try {
            this.dLZ.setText(this.oJ.getString(com.bytedance.sdk.component.utils.cY.ZYk(si.oJ(), "tt_multiple_ad_indicator"), Integer.valueOf(soVar.BTZ + 1), Integer.valueOf(this.PiB)));
            this.dLZ.setVisibility(0);
        } catch (Throwable th2) {
            QSm.oJ("SeqSwitchLayoutManager", "updateCurrentAdIndex: ", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ZYk() {
        super.ZYk();
        so soVar = this.awB;
        if (soVar != null) {
            soVar.tB();
        }
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk != null) {
            abstractC0189ZYk.ZYk(-1);
        }
        WcQ wcQ = this.Pfn;
        if (wcQ != null) {
            wcQ.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void ZYk(so soVar, int i10) {
        ZYk.AbstractC0189ZYk abstractC0189ZYk = this.BTZ;
        if (abstractC0189ZYk == null) {
            return;
        }
        if (i10 == 2) {
            abstractC0189ZYk.oJ(i10);
            WcQ wcQ = this.Pfn;
            if (wcQ != null) {
                wcQ.ZYk();
            }
        } else if (i10 == 1) {
            abstractC0189ZYk.ZYk(i10);
            WcQ wcQ2 = this.Pfn;
            if (wcQ2 != null) {
                wcQ2.oJ();
            }
        } else if (i10 == 3 || i10 == 4) {
            try {
                this.awB.tb().cY.LpP();
            } catch (Throwable th2) {
                QSm.tB("SeqSwitchLayoutManager", th2);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(int i10, int i11) {
        super.oJ(i10, i11);
        if (i10 >= 0) {
            if (TextUtils.isEmpty(this.tB)) {
                this.dLZ.setText(this.oJ.getString(com.bytedance.sdk.component.utils.cY.ZYk(si.oJ(), "tt_multiple_playable_wait_tips"), Integer.valueOf(i10)));
            } else {
                this.dLZ.setText(String.format(this.tB, Integer.valueOf(i10)));
            }
            this.dLZ.setVisibility(0);
            return;
        }
        this.dLZ.setVisibility(8);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(float f10) {
        dLZ dlz = this.f12925so;
        if (dlz == null) {
            return;
        }
        dlz.setProgress(f10);
        int i10 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        if (i10 == 0 && this.f12925so.getVisibility() == 0) {
            this.f12925so.setVisibility(4);
        } else if (i10 <= 0 || this.f12925so.getVisibility() == 0) {
        } else {
            this.f12925so.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(so soVar, ZYk.Pfn pfn) {
        so soVar2 = this.awB;
        if (soVar2 == null || soVar2 == soVar) {
            if (soVar2 != null && (soVar2 instanceof oJ)) {
                final long PiB = (soVar2.tb() == null || this.awB.tb().cY == null) ? 0L : this.awB.tb().cY.PiB();
                final int i10 = this.awB.BTZ + 1;
                long currentTimeMillis = System.currentTimeMillis();
                so soVar3 = this.awB;
                com.bytedance.sdk.openadsdk.ex.tB.oJ(currentTimeMillis, soVar3.jFA, soVar3.b_(), "dislike_skip", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.jFA.2
                    @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                    public JSONObject oJ() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("duration", PiB);
                            JSONObject jSONObject2 = new JSONObject();
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(i10, jSONObject2);
                            jSONObject.put("ad_extra_data", jSONObject2.toString());
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        return jSONObject;
                    }
                });
            }
            so WcQ = WcQ();
            if (WcQ == null) {
                WcQ = awB();
            }
            oJ(this.awB, WcQ, pfn);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(so soVar, boolean z10, boolean z11, boolean z12, int i10) {
        Pfn awB;
        so soVar2 = this.awB;
        if ((soVar2 == null || soVar2 == soVar) && (awB = awB()) != null) {
            ZYk.Pfn pfn = new ZYk.Pfn(i10, soVar != null ? soVar.tb() : null);
            pfn.oJ.putBoolean("isSkip", z10);
            pfn.oJ.putBoolean("force", z11);
            pfn.oJ.putBoolean("isFromLandingPage", z12);
            oJ(this.awB, awB, pfn);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(oJ oJVar, boolean z10) {
        ZYk.AbstractC0189ZYk abstractC0189ZYk;
        super.oJ(oJVar, z10);
        if (oJVar == null || oJVar != this.awB || (abstractC0189ZYk = this.BTZ) == null) {
            return;
        }
        abstractC0189ZYk.ZYk(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(so soVar) {
        ZYk.AbstractC0189ZYk abstractC0189ZYk;
        super.oJ(soVar);
        if (soVar == null) {
            return;
        }
        QSm.oJ("SeqSwitchLayoutManager", "onPlayableLoadingDismiss [scene=]" + soVar + ",isActive=" + soVar.PiB);
        if (soVar.PiB && (abstractC0189ZYk = this.BTZ) != null) {
            abstractC0189ZYk.ba();
        }
        so WcQ = WcQ();
        if (WcQ instanceof oJ) {
            ((oJ) WcQ).Id();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(so soVar, boolean z10) {
        ZYk.AbstractC0189ZYk abstractC0189ZYk;
        super.oJ(soVar, z10);
        if (soVar == null) {
            return;
        }
        QSm.oJ("SeqSwitchLayoutManager", "setIsHappenInteraction [scene=]" + soVar + ",isActive=" + soVar.PiB + ",isHappenInteraction=" + z10);
        if (!soVar.PiB || (abstractC0189ZYk = this.BTZ) == null) {
            return;
        }
        abstractC0189ZYk.oJ(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(View view) {
        super.oJ(view);
        if (view.getParent() != null) {
            return;
        }
        view.setVisibility(4);
        this.kkU.addView(view, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(View view, boolean z10) {
        super.oJ(view, z10);
        if (view.getParent() == null && this.kkU != null) {
            view.setVisibility(4);
            int childCount = this.kkU.getChildCount();
            if (z10) {
                this.kkU.addView(view, 0);
            } else {
                this.kkU.addView(view, childCount - 1);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public boolean oJ(so soVar, int i10) {
        return i10 == this.f12924ba.size() - 1 && this.f12924ba.get(i10) != null && (this.f12924ba.get(i10) instanceof Pfn);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(boolean z10) {
        super.oJ(z10);
        so soVar = this.awB;
        if (soVar != null) {
            soVar.tB(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.tB
    public void oJ(Activity activity) {
        super.oJ(activity);
        so soVar = this.awB;
        if (soVar != null) {
            soVar.oJ(activity);
        }
    }
}
