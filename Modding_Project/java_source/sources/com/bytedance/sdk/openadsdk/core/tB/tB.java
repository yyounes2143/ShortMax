package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
/* loaded from: classes3.dex */
public class tB extends ex {
    private int jFA;
    private int kkU;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.oJ.oJ.ZYk f13296so;

    public tB(@NonNull Context context, cY cYVar, AdSlot adSlot, boolean z10) {
        super(context, cYVar, adSlot, z10);
        this.jFA = 1;
        this.kkU = -1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.tB.ex
    public void ex() {
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB videoController;
        QSm qSm = this.ZYk;
        if ((qSm instanceof RZ) && (videoController = ((RZ) qSm).getVideoController()) != null) {
            this.jFA = videoController.cdg();
        }
        super.ex();
    }

    public com.bytedance.sdk.openadsdk.multipro.ZYk.oJ getVideoModel() {
        QSm qSm = this.ZYk;
        if (qSm != null) {
            return ((RZ) qSm).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.tB.ex
    protected void tB() {
        RZ rz = new RZ(this.oJ, this.tB, this.ex, this.f13290ba, this.cFZ) { // from class: com.bytedance.sdk.openadsdk.core.tB.tB.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.openadsdk.core.so.QSm
            public Pfn.oJ tB(int i10) {
                return tB.this.oJ(super.tB(i10));
            }
        };
        this.ZYk = rz;
        com.bytedance.sdk.openadsdk.core.BTZ.ZYk.tB videoController = rz.getVideoController();
        if (videoController != null) {
            videoController.ex(this.jFA);
        }
        addView(this.ZYk, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.Pfn;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
        QSm qSm = this.ZYk;
        if (qSm != null) {
            ((RZ) qSm).setVideoAdListener(new com.bytedance.sdk.openadsdk.oJ.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.core.tB.tB.2
                @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
                public void oJ(int i10, int i11) {
                }

                @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
                public void tB(PAGNativeAd pAGNativeAd) {
                    if (tB.this.f13296so != null) {
                        tB.this.f13296so.oJ();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
                public void oJ(PAGNativeAd pAGNativeAd) {
                    if (tB.this.kkU != 3) {
                        if (tB.this.kkU == 2) {
                            tB.this.oJ();
                            return;
                        }
                        return;
                    }
                    tB tBVar = tB.this;
                    tBVar.oJ(tBVar.f13296so);
                }

                @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.tB
                public void ZYk(PAGNativeAd pAGNativeAd) {
                }
            });
        }
    }

    public void ZYk() {
        QSm qSm = this.ZYk;
        if (qSm != null) {
            ((RZ) qSm).si();
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.oJ.oJ.ZYk zYk) {
        QSm qSm = this.ZYk;
        if (qSm != null) {
            ((RZ) qSm).eZI();
            this.f13296so = zYk;
            this.kkU = 3;
        }
    }

    public void oJ() {
        QSm qSm = this.ZYk;
        if (qSm != null) {
            ((RZ) qSm).awB();
            this.kkU = 2;
        }
    }
}
