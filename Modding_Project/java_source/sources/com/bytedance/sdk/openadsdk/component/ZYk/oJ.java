package com.bytedance.sdk.openadsdk.component.ZYk;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.common.ba;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.QSm;
import com.bytedance.sdk.openadsdk.core.model.HL;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.tB;
import com.bytedance.sdk.openadsdk.core.oq;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.so;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.ZYk;
import com.bytedance.sdk.openadsdk.utils.wd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile oJ oJ;
    private final Id ZYk = si.tB();

    private oJ() {
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void oJ(final Context context, final AdSlot adSlot, final ba baVar) {
        final wd ZYk = wd.ZYk();
        if (ZYk.oJ()) {
            this.ZYk.oJ(adSlot, new HL(), 5, (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.oJ.1
                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    baVar.onError(i10, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, tB tBVar) {
                    oJ.this.oJ(oJVar, tBVar, context, adSlot, baVar, ZYk);
                }
            });
        } else {
            this.ZYk.oJ(adSlot, new HL(), 5, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.component.ZYk.oJ.2
                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    baVar.onError(i10, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, tB tBVar) {
                    oJ.this.oJ(oJVar, tBVar, context, adSlot, baVar, ZYk);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, tB tBVar, Context context, AdSlot adSlot, ba baVar, wd wdVar) {
        if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
            List<cY> ex = oJVar.ex();
            ArrayList arrayList = new ArrayList(ex.size());
            for (cY cYVar : ex) {
                if (cY.Pfn(cYVar) || (cYVar != null && cYVar.TF())) {
                    PAGNativeAd oJ2 = oJ(context, cYVar, adSlot);
                    if (baVar instanceof PAGNativeAdLoadListener) {
                        arrayList.add(oJ2);
                    }
                }
                if (cY.Pfn(cYVar) && cYVar.ib() != null && cYVar.ib().dLZ() != null) {
                    if (si.ex().ex(String.valueOf(cYVar.uv())) && si.ex().Yg()) {
                        if (cYVar.ib() != null) {
                            cYVar.ib().ba(1);
                        }
                        if (cYVar.jTO() != null) {
                            cYVar.jTO().ba(1);
                        }
                        com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ3 = cY.oJ(CacheDirFactory.getICacheDir(cYVar.rQ()).tB(), cYVar);
                        oJ3.oJ("material_meta", cYVar);
                        oJ3.oJ("ad_slot", adSlot);
                        com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ3, null);
                    }
                    IPMiBroadcastReceiver.oJ(context, cYVar);
                }
            }
            boolean z10 = baVar instanceof PAGNativeAdLoadListener;
            if (z10 && !arrayList.isEmpty()) {
                if (adSlot != null && !TextUtils.isEmpty(adSlot.getBidAdm())) {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ(ex.get(0), wdVar.ex());
                }
                if (z10) {
                    ((PAGNativeAdLoadListener) baVar).onAdLoaded(arrayList.get(0));
                }
                if (tBVar.Pfn() == null || tBVar.Pfn().isEmpty()) {
                    return;
                }
                tBVar.tB(4);
                tB.oJ(tBVar);
                return;
            }
            baVar.onError(-4, so.oJ(-4));
            tBVar.oJ(-4);
            tBVar.tB(4);
            tB.oJ(tBVar);
            return;
        }
        baVar.onError(-3, so.oJ(-3));
        tBVar.oJ(-3);
        tBVar.tB(4);
        tB.oJ(tBVar);
    }

    private PAGNativeAd oJ(Context context, cY cYVar, AdSlot adSlot) {
        if (cYVar.oIC() != 2) {
            return new com.bytedance.sdk.openadsdk.oJ.ZYk.ZYk(context, cYVar, 5, adSlot);
        }
        if (cYVar.ib() != null) {
            return new com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.ZYk(context, cYVar, adSlot);
        }
        return new com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB(context, cYVar, adSlot);
    }
}
