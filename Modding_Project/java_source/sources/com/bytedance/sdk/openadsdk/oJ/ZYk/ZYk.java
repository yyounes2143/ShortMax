package com.bytedance.sdk.openadsdk.oJ.ZYk;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.eZI;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ZYk.oJ;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk extends so implements tB.ex, tB.InterfaceC0134tB, oJ.InterfaceC0236oJ {
    private AdSlot BTZ;
    private long PiB;
    private boolean dLZ;
    private final com.bytedance.sdk.openadsdk.multipro.ZYk.oJ jFA;
    private boolean kkU;

    /* renamed from: so  reason: collision with root package name */
    private tB f13375so;

    public ZYk(@NonNull Context context, @NonNull cY cYVar, int i10, AdSlot adSlot) {
        super(context, cYVar, i10, true);
        this.kkU = false;
        this.dLZ = true;
        this.Pfn = i10;
        this.BTZ = adSlot;
        this.jFA = new com.bytedance.sdk.openadsdk.multipro.ZYk.oJ();
        oJ(this.f13379ba);
        oJ("embeded_ad");
        this.ex.oJ(this);
    }

    public View Pfn() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba baVar;
        boolean z10;
        cY cYVar = this.ZYk;
        if (cYVar != null && this.tB != null) {
            if (cY.Pfn(cYVar)) {
                try {
                    baVar = new com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba(this.tB, this.ZYk, this.oJ.oJ());
                    cY cYVar2 = this.ZYk;
                    if (cYVar2 != null && cYVar2.Br()) {
                        com.bytedance.sdk.openadsdk.core.dLZ.ba oJ = baVar.oJ((List<Pair<View, FriendlyObstructionPurpose>>) null);
                        oJ oJVar = this.ex;
                        if (oJVar != null) {
                            oJVar.oJ(oJ);
                        }
                    }
                    this.oJ.oJ(baVar.getNativeVideoController());
                    oJ oJVar2 = this.ex;
                    if (oJVar2 != null) {
                        oJVar2.oJ(baVar);
                    }
                    baVar.setVideoAdClickListenerTTNativeAd(this);
                    baVar.setAdCreativeClickListener(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk.1
                        @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.oJ
                        public void oJ(View view, int i10) {
                            eZI ezi = ZYk.this.oJ;
                            if (ezi != null) {
                                ezi.oJ(view, i10);
                            }
                        }
                    });
                    baVar.setControllerStatusCallBack(new ba.ZYk() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk.2
                        @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.ZYk
                        public void oJ(boolean z11, long j10, long j11, long j12, boolean z12) {
                            ZYk.this.jFA.oJ = z11;
                            ZYk.this.jFA.Pfn = j10;
                            ZYk.this.jFA.f13372ba = j11;
                            ZYk.this.jFA.cFZ = j12;
                            ZYk.this.jFA.ex = z12;
                        }
                    });
                    baVar.setVideoAdLoadListener(this);
                    baVar.setVideoAdInteractionListener(this);
                    if (5 == this.Pfn) {
                        if (this.kkU) {
                            z10 = this.BTZ.isAutoPlay();
                        } else {
                            z10 = this.dLZ;
                        }
                        baVar.setIsAutoPlay(z10);
                    } else {
                        baVar.setIsAutoPlay(this.dLZ);
                    }
                    baVar.oJ(si.ex().ZYk(String.valueOf(this.f13379ba)), "feedGetAdView");
                } catch (Exception e10) {
                    ApmHelper.reportCustomError("", "getAdView null", e10);
                }
                if (!cY.Pfn(this.ZYk) && baVar != null && baVar.oJ(0L, true, false)) {
                    return baVar;
                }
                ApmHelper.reportCustomError(this.ZYk.Dc() + "," + baVar, "getAdView null", new RuntimeException());
            }
            baVar = null;
            if (!cY.Pfn(this.ZYk)) {
            }
            ApmHelper.reportCustomError(this.ZYk.Dc() + "," + baVar, "getAdView null", new RuntimeException());
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.ZYk.oJ.InterfaceC0236oJ
    public com.bytedance.sdk.openadsdk.multipro.ZYk.oJ ba() {
        return this.jFA;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void g_() {
        tB tBVar = this.f13375so;
        if (tBVar != null) {
            tBVar.oJ(this);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void h_() {
        tB tBVar = this.f13375so;
        if (tBVar != null) {
            tBVar.ZYk(this);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void j_() {
        tB tBVar = this.f13375so;
        if (tBVar != null) {
            tBVar.tB(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.so, com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
        oJ oJVar = this.ex;
        if (oJVar != null) {
            oJVar.BTZ();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        if (com.bytedance.sdk.openadsdk.utils.HyG.ba(r0) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(int r5) {
        /*
            r4 = this;
            com.bytedance.sdk.openadsdk.core.settings.ba r0 = com.bytedance.sdk.openadsdk.core.si.ex()
            int r5 = r0.ZYk(r5)
            android.content.Context r0 = com.bytedance.sdk.openadsdk.core.si.oJ()
            int r0 = com.bytedance.sdk.component.utils.Ry.tB(r0)
            r1 = 3
            r2 = 0
            if (r1 != r5) goto L19
            r4.kkU = r2
            r4.dLZ = r2
            goto L54
        L19:
            r1 = 1
            if (r1 != r5) goto L25
            boolean r3 = com.bytedance.sdk.openadsdk.utils.HyG.ex(r0)
            if (r3 == 0) goto L25
            r4.kkU = r2
            goto L52
        L25:
            r3 = 2
            if (r3 != r5) goto L3d
            boolean r5 = com.bytedance.sdk.openadsdk.utils.HyG.Pfn(r0)
            if (r5 != 0) goto L3a
            boolean r5 = com.bytedance.sdk.openadsdk.utils.HyG.ex(r0)
            if (r5 != 0) goto L3a
            boolean r5 = com.bytedance.sdk.openadsdk.utils.HyG.ba(r0)
            if (r5 == 0) goto L54
        L3a:
            r4.kkU = r2
            goto L52
        L3d:
            r2 = 4
            if (r2 != r5) goto L43
            r4.kkU = r1
            goto L54
        L43:
            r2 = 5
            if (r2 != r5) goto L54
            boolean r5 = com.bytedance.sdk.openadsdk.utils.HyG.ex(r0)
            if (r5 != 0) goto L52
            boolean r5 = com.bytedance.sdk.openadsdk.utils.HyG.ba(r0)
            if (r5 == 0) goto L54
        L52:
            r4.dLZ = r1
        L54:
            com.bytedance.sdk.openadsdk.oJ.ZYk.oJ r5 = r4.ex
            if (r5 == 0) goto L5d
            boolean r0 = r4.kkU
            r5.oJ(r0)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk.oJ(int):void");
    }

    public ZYk(@NonNull Context context, @NonNull cY cYVar, int i10, AdSlot adSlot, oJ oJVar, eZI ezi) {
        super(context, cYVar, i10, false);
        this.kkU = false;
        this.dLZ = true;
        this.ex = oJVar;
        this.oJ = ezi;
        this.Pfn = i10;
        this.BTZ = adSlot;
        this.jFA = new com.bytedance.sdk.openadsdk.multipro.ZYk.oJ();
        oJ(this.f13379ba);
        oJ("embeded_ad");
        oJVar.oJ(this);
    }

    public void oJ(tB tBVar) {
        this.f13375so = tBVar;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.ex
    public void oJ(int i10, int i11) {
        tB tBVar = this.f13375so;
        if (tBVar != null) {
            tBVar.oJ(i10, i11);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void i_() {
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB.InterfaceC0134tB
    public void oJ(long j10, long j11) {
        this.PiB = j10;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.so
    protected void oJ(String str) {
        super.oJ(str);
    }
}
