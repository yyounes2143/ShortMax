package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class ex extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    protected PAGBannerAdWrapperListener Pfn;
    protected QSm ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected String f13290ba;
    protected boolean cFZ;
    protected AdSlot ex;
    private boolean jFA;
    protected final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f13291so;
    protected cY tB;

    public ex(@NonNull Context context, cY cYVar, AdSlot adSlot, boolean z10) {
        super(context);
        this.f13290ba = "banner_ad";
        this.cFZ = false;
        this.f13291so = -1;
        this.jFA = false;
        if (cYVar != null && cYVar.oIC() != 2) {
            cYVar.awB(1);
        }
        this.cFZ = z10;
        this.oJ = context;
        this.tB = cYVar;
        this.ex = adSlot;
        tB();
        AdSlot adSlot2 = this.ex;
        if (adSlot2 != null) {
            oJ(adSlot2.getExpressViewAcceptedWidth(), this.ex.getExpressViewAcceptedHeight());
        }
    }

    public void Pfn() {
        QSm qSm = this.ZYk;
        if (qSm != null) {
            qSm.RZ();
        }
    }

    public void ex() {
        if (this.ZYk != null) {
            com.bytedance.sdk.openadsdk.core.jFA.ZYk().ba(this.ZYk.getClosedListenerKey());
            removeView(this.ZYk);
            this.ZYk.BTZ();
            this.ZYk = null;
        }
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().oq();
    }

    public QSm getCurView() {
        return this.ZYk;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.ZYk == null) {
            tB();
        }
        com.bytedance.sdk.openadsdk.utils.ex.oJ(this, this.tB);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setCurrentIndex(int i10) {
        this.f13291so = i10;
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.Pfn = pAGBannerAdWrapperListener;
        QSm qSm = this.ZYk;
        if (qSm != null) {
            qSm.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.core.tB.ex.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
                public void oJ() {
                    ex.this.Pfn.onAdClicked();
                }
            });
            this.ZYk.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ex.3
                @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
                public void onAdClicked() {
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2;
                    cY cYVar = ex.this.tB;
                    if (cYVar != null && cYVar.jA() && (pAGBannerAdWrapperListener2 = ex.this.Pfn) != null) {
                        pAGBannerAdWrapperListener2.onAdClicked();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderFail(View view, String str, int i10) {
                    ex exVar = ex.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = exVar.Pfn;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderFail(exVar, str, i10);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderSuccess(View view, float f10, float f11) {
                    QSm qSm2 = ex.this.ZYk;
                    if (qSm2 != null) {
                        qSm2.setSoundMute(true);
                    }
                    QSm qSm3 = ex.this.ZYk;
                    if (qSm3 != null && !com.bytedance.sdk.openadsdk.core.kkU.ex.oJ(qSm3.getDynamicShowType())) {
                        ex.this.oJ(f10, f11);
                    }
                    if (ex.this.jFA) {
                        ex.this.ZYk.Ry();
                    }
                    ex exVar = ex.this;
                    PAGBannerAdWrapperListener pAGBannerAdWrapperListener2 = exVar.Pfn;
                    if (pAGBannerAdWrapperListener2 != null) {
                        pAGBannerAdWrapperListener2.onRenderSuccess(exVar, f10, f11);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdShow(View view, int i10) {
                }
            });
        }
    }

    public void setIsShow(boolean z10) {
        this.jFA = z10;
    }

    protected void tB() {
        QSm qSm = new QSm(this.oJ, this.tB, this.ex, this.f13290ba) { // from class: com.bytedance.sdk.openadsdk.core.tB.ex.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.openadsdk.core.so.QSm
            public Pfn.oJ tB(int i10) {
                return ex.this.oJ(super.tB(i10));
            }
        };
        this.ZYk = qSm;
        addView(qSm, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.Pfn;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Pfn.oJ oJ(Pfn.oJ oJVar) {
        int i10;
        if (this.cFZ && (i10 = this.f13291so) >= 0) {
            oJVar.ZYk = i10;
        }
        return oJVar;
    }

    protected void oJ(float f10, float f11) {
        int ZYk = cdg.ZYk(this.oJ, f10);
        int ZYk2 = cdg.ZYk(this.oJ, f11);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(ZYk, ZYk2);
        }
        layoutParams.width = ZYk;
        layoutParams.height = ZYk2;
        setLayoutParams(layoutParams);
    }
}
