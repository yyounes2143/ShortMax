package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.nke;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class cFZ extends PAGBannerAd {
    private boolean Pfn;
    protected cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private Pfn f13288ba;
    private boolean cFZ;
    private List<com.bytedance.sdk.openadsdk.core.tB.oJ> dLZ;
    private boolean ex;
    private int jFA;
    private final AtomicBoolean kkU = new AtomicBoolean(false);
    protected Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f13289so;
    protected AdSlot tB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    public cFZ(Context context, cY cYVar, AdSlot adSlot) {
        this.f13289so = 0;
        this.jFA = 0;
        this.oJ = context;
        this.ZYk = cYVar;
        this.tB = adSlot;
        this.f13289so = (int) adSlot.getExpressViewAcceptedWidth();
        this.jFA = (int) this.tB.getExpressViewAcceptedHeight();
        oJ(this.ZYk);
        ZYk(cYVar);
    }

    private void ZYk(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.oJ tB;
        if (cYVar != null && (tB = cYVar.tB()) != null) {
            this.dLZ = new ArrayList();
            int size = tB.ex().size();
            if (this.cFZ) {
                this.f13288ba = new Pfn(tB.cFZ(), this.oJ, this.f13289so, this.jFA);
                for (int i10 = 0; i10 < size; i10++) {
                    this.tB.setExpressViewAccepted(((this.f13289so - cdg.tB(this.oJ, tB.cFZ().Pfn())) - cdg.tB(this.oJ, tB.cFZ().ba())) - (cdg.tB(this.oJ, tB.cFZ().cFZ()) * 2), this.jFA);
                    cY cYVar2 = tB.ex().get(i10);
                    if (i10 != 0) {
                        oJ(i10, cYVar2);
                    }
                    com.bytedance.sdk.openadsdk.core.tB.oJ oJVar = new com.bytedance.sdk.openadsdk.core.tB.oJ(this.oJ, cYVar2, this.tB, this, true);
                    oJVar.oJ(i10);
                    this.dLZ.add(oJVar);
                }
                this.f13288ba.oJ(this.dLZ);
                return;
            }
            this.dLZ.add(new com.bytedance.sdk.openadsdk.core.tB.oJ(this.oJ, cYVar, this.tB, this, false));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void destroy() {
        try {
            List<com.bytedance.sdk.openadsdk.core.tB.oJ> list = this.dLZ;
            if (list != null && !list.isEmpty()) {
                if (this.cFZ) {
                    this.f13288ba.oJ();
                } else {
                    this.dLZ.get(0).cFZ();
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public PAGBannerSize getBannerSize() {
        if (this.tB != null) {
            return new PAGBannerSize(this.f13289so, this.jFA);
        }
        return new PAGBannerSize(0, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public View getBannerView() {
        try {
            List<com.bytedance.sdk.openadsdk.core.tB.oJ> list = this.dLZ;
            if (list != null && !list.isEmpty()) {
                if (this.cFZ) {
                    return this.f13288ba.ZYk();
                }
                return this.dLZ.get(0).oJ();
            }
        } catch (Throwable unused) {
        }
        return new View(this.oJ);
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        cY cYVar = this.ZYk;
        if (cYVar != null && cYVar.Zwf() != null) {
            try {
                return this.ZYk.Zwf().get(str);
            } catch (Throwable th2) {
                QSm.tB("PAGBannerAdImpl", th2.getMessage());
                return null;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        cY cYVar = this.ZYk;
        if (cYVar != null) {
            return cYVar.Zwf();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d10, String str, String str2) {
        if (!this.Pfn) {
            nke.oJ(this.ZYk, d10, str, str2);
            this.Pfn = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionCallback(final PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback) {
        List<com.bytedance.sdk.openadsdk.core.tB.oJ> list = this.dLZ;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.dLZ.size(); i10++) {
                this.dLZ.get(i10).oJ(new PAGBannerAdInteractionCallback() { // from class: com.bytedance.sdk.openadsdk.core.tB.cFZ.1
                    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback, com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdClicked() {
                        PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback2 = pAGBannerAdInteractionCallback;
                        if (pAGBannerAdInteractionCallback2 != null) {
                            pAGBannerAdInteractionCallback2.onAdClicked();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback, com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdDismissed() {
                        PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback2 = pAGBannerAdInteractionCallback;
                        if (pAGBannerAdInteractionCallback2 != null) {
                            pAGBannerAdInteractionCallback2.onAdDismissed();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback
                    public void onAdShowFailed(@NonNull PAGErrorModel pAGErrorModel) {
                        PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback2 = pAGBannerAdInteractionCallback;
                        if (pAGBannerAdInteractionCallback2 != null) {
                            pAGBannerAdInteractionCallback2.onAdShowFailed(pAGErrorModel);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionCallback, com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdShowed() {
                        PAGBannerAdInteractionCallback pAGBannerAdInteractionCallback2;
                        if (cFZ.this.kkU.compareAndSet(false, true) && (pAGBannerAdInteractionCallback2 = pAGBannerAdInteractionCallback) != null) {
                            pAGBannerAdInteractionCallback2.onAdShowed();
                        }
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd
    public void setAdInteractionListener(final PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        List<com.bytedance.sdk.openadsdk.core.tB.oJ> list = this.dLZ;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.dLZ.size(); i10++) {
                this.dLZ.get(i10).oJ(new PAGBannerAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.cFZ.2
                    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdClicked() {
                        PAGBannerAdInteractionListener pAGBannerAdInteractionListener2 = pAGBannerAdInteractionListener;
                        if (pAGBannerAdInteractionListener2 != null) {
                            pAGBannerAdInteractionListener2.onAdClicked();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdDismissed() {
                        PAGBannerAdInteractionListener pAGBannerAdInteractionListener2 = pAGBannerAdInteractionListener;
                        if (pAGBannerAdInteractionListener2 != null) {
                            pAGBannerAdInteractionListener2.onAdDismissed();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.api.PAGAdListener
                    public void onAdShowed() {
                        PAGBannerAdInteractionListener pAGBannerAdInteractionListener2;
                        if (cFZ.this.kkU.compareAndSet(false, true) && (pAGBannerAdInteractionListener2 = pAGBannerAdInteractionListener) != null) {
                            pAGBannerAdInteractionListener2.onAdShowed();
                        }
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d10) {
        if (!this.ex) {
            nke.oJ(this.ZYk, d10);
            this.ex = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r2.ex().size() > 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L1d
            com.bytedance.sdk.openadsdk.core.model.oJ r2 = r2.tB()
            if (r2 == 0) goto L1d
            boolean r0 = r2.kkU()
            if (r0 == 0) goto L1a
            java.util.List r2 = r2.ex()
            int r2 = r2.size()
            r0 = 1
            if (r2 <= r0) goto L1a
            goto L1b
        L1a:
            r0 = 0
        L1b:
            r1.cFZ = r0
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.tB.cFZ.oJ(com.bytedance.sdk.openadsdk.core.model.cY):void");
    }

    public boolean oJ() {
        return this.cFZ;
    }

    private void oJ(int i10, cY cYVar) {
        if (i10 != 0) {
            if (!TextUtils.isEmpty(cYVar.VJm())) {
                cYVar.WcQ(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            Map<String, Object> Zwf = cYVar.Zwf();
            if (Zwf == null || !Zwf.containsKey("price")) {
                return;
            }
            Zwf.put("price", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
    }
}
