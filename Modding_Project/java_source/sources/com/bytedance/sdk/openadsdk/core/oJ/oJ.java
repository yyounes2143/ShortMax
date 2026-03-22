package com.bytedance.sdk.openadsdk.core.oJ;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.si.ex;
import com.bytedance.sdk.openadsdk.si.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.vungle.ads.internal.Constants;
/* loaded from: classes3.dex */
public class oJ implements Id.oJ {
    private final AdSlot ZYk;
    private final Id.oJ oJ;
    private final boolean tB;

    public oJ(Id.oJ oJVar, AdSlot adSlot, boolean z10) {
        this.oJ = oJVar;
        this.ZYk = adSlot;
        this.tB = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
    public void oJ(final int i10, final String str) {
        AdSlot adSlot;
        if (this.oJ != null) {
            if (!ofl.ba() && ((adSlot = this.ZYk) == null || adSlot.getDurationSlotType() == 5 || com.bytedance.sdk.openadsdk.oq.oJ.oJ("getads_callback_async", 0) != 1)) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.oJ.oJ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        oJ.this.oJ.oJ(i10, str);
                    }
                });
            } else {
                this.oJ.oJ(i10, str);
            }
            if (!this.tB || this.ZYk == null) {
                return;
            }
            tB.tB(new ex() { // from class: com.bytedance.sdk.openadsdk.core.oJ.oJ.2
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar.ZYk(Constants.LOAD_AD);
                    oJVar.tB(oJ.this.ZYk.getCodeId());
                    oJVar.ex(HyG.tB(oJ.this.ZYk.getDurationSlotType()));
                    oJVar.oJ(BuildConfig.VERSION_NAME);
                    oJVar.cFZ(HyG.oJ(oJ.this.ZYk).toString());
                    return oJVar;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
    public void oJ(final com.bytedance.sdk.openadsdk.core.model.oJ oJVar, final com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
        AdSlot adSlot;
        if (this.oJ != null) {
            if (!ofl.ba() && ((adSlot = this.ZYk) == null || adSlot.getDurationSlotType() == 5 || com.bytedance.sdk.openadsdk.oq.oJ.oJ("getads_callback_async", 0) != 1)) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.oJ.oJ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        oJ.this.oJ.oJ(oJVar, tBVar);
                    }
                });
            } else {
                this.oJ.oJ(oJVar, tBVar);
            }
            if (!this.tB || this.ZYk == null) {
                return;
            }
            tB.ZYk(new ex() { // from class: com.bytedance.sdk.openadsdk.core.oJ.oJ.4
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar2.ZYk(Constants.LOAD_AD);
                    oJVar2.tB(oJ.this.ZYk.getCodeId());
                    oJVar2.ex(HyG.tB(oJ.this.ZYk.getDurationSlotType()));
                    oJVar2.oJ(BuildConfig.VERSION_NAME);
                    oJVar2.cFZ(HyG.oJ(oJ.this.ZYk).toString());
                    return oJVar2;
                }
            });
        }
    }
}
