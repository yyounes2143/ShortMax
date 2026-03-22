package com.bytedance.sdk.openadsdk.oJ.ZYk.oJ;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.core.kkU.ex;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
import com.bytedance.sdk.openadsdk.oJ.ZYk.so;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class tB extends so {
    private boolean BTZ;
    protected String dLZ;
    protected AdSlot jFA;
    protected QSm kkU;

    /* renamed from: so  reason: collision with root package name */
    protected final Context f13378so;

    public tB(@NonNull Context context, cY cYVar, AdSlot adSlot) {
        super(context, cYVar, 5, true);
        this.dLZ = "embeded_ad";
        this.BTZ = false;
        this.ZYk.awB(1);
        this.ex.oJ(this);
        this.f13378so = context;
        this.jFA = adSlot;
        oJ();
        ZYk();
    }

    private void ZYk() {
        QSm qSm = this.kkU;
        if (qSm != null) {
            qSm.setBackupListener(new com.bytedance.sdk.component.adexpress.ZYk.tB() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB.1
                @Override // com.bytedance.sdk.component.adexpress.ZYk.tB
                public boolean oJ(ViewGroup viewGroup, int i10) {
                    oJ oJVar = new oJ(tB.this.kkU.getContext());
                    oJVar.setExtraFuncationHelper(((so) tB.this).ex);
                    oJVar.oJ(tB.this.kkU);
                    return true;
                }
            });
        }
    }

    public void Pfn() {
        QSm qSm = this.kkU;
        if (qSm != null) {
            qSm.RZ();
        }
    }

    public QSm ex() {
        return this.kkU;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tB() {
        QSm qSm = this.kkU;
        if (qSm != null) {
            qSm.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB.2
                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderSuccess(View view, float f10, float f11) {
                    if (!tB.this.kkU.oq()) {
                        tB.this.oJ(f10, f11);
                        if (tB.this.BTZ) {
                            tB.this.kkU.Ry();
                            return;
                        }
                        return;
                    }
                    tB tBVar = tB.this;
                    Context context = tBVar.f13378so;
                    cY cYVar = ((so) tBVar).ZYk;
                    tB tBVar2 = tB.this;
                    com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk zYk = new com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk(context, cYVar, 5, tBVar2.jFA, ((so) tBVar2).ex, ((so) tB.this).oJ);
                    tB tBVar3 = tB.this;
                    if (tBVar3 instanceof ZYk) {
                        zYk.oJ(((RZ) tBVar3.ex()).getVideoAdListener());
                    }
                    ((so) tB.this).ex.oJ((com.bytedance.sdk.openadsdk.core.ZYk.oJ) tB.this.kkU.getClickCreativeListener());
                    PAGMediaView jFA = ((so) tB.this).ex.jFA();
                    if (jFA == null) {
                        jFA = new PAGMediaView(tB.this.f13378so);
                    }
                    tB.this.kkU.addView(jFA);
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
                public void onAdClicked() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdShow(View view, int i10) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderFail(View view, String str, int i10) {
                }
            });
        }
    }

    protected void oJ() {
        this.kkU = new QSm(this.f13378so, this.ZYk, this.jFA, this.dLZ);
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(float f10, float f11) {
        QSm qSm = this.kkU;
        if (qSm != null && ex.oJ(qSm.getDynamicShowType())) {
            ViewGroup.LayoutParams layoutParams = this.kkU.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            } else {
                layoutParams.width = -1;
                layoutParams.height = -1;
            }
            this.kkU.setLayoutParams(layoutParams);
            return;
        }
        int ZYk = cdg.ZYk(this.f13378so, f10);
        int ZYk2 = cdg.ZYk(this.f13378so, f11);
        ViewGroup.LayoutParams layoutParams2 = this.kkU.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new ViewGroup.LayoutParams(ZYk, ZYk2);
        } else {
            layoutParams2.width = ZYk;
            layoutParams2.height = ZYk2;
        }
        this.kkU.setLayoutParams(layoutParams2);
    }

    public void oJ(boolean z10) {
        this.BTZ = z10;
    }
}
