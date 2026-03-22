package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.QSm;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.jr;
import com.bytedance.sdk.openadsdk.core.oq;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile Pfn oJ;
    private com.bytedance.sdk.component.so.so Pfn;
    private final Context ZYk;
    private final AtomicBoolean tB = new AtomicBoolean(false);
    private final List<tB> ex = Collections.synchronizedList(new ArrayList());

    /* renamed from: ba  reason: collision with root package name */
    private final HL.oJ f12987ba = new HL.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.2
        @Override // com.bytedance.sdk.component.utils.HL.oJ
        public void oJ(Context context, Intent intent, boolean z10, int i10) {
            if (!z10) {
                return;
            }
            if (Pfn.this.Pfn == null) {
                Pfn pfn = Pfn.this;
                pfn.Pfn = new com.bytedance.sdk.openadsdk.component.reward.ZYk("fsv net connect task", pfn.ex);
            }
            com.bytedance.sdk.component.utils.jFA.oJ().post(Pfn.this.Pfn);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk implements PAGInterstitialAdLoadListener {
        private final AtomicBoolean ZYk;
        private final com.bytedance.sdk.openadsdk.core.model.oJ ex;
        private final PAGInterstitialAdLoadListener oJ;
        private final AtomicInteger tB;

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            if (this.tB.decrementAndGet() <= 0 && this.ZYk.compareAndSet(false, true)) {
                this.oJ.onError(i10, str);
                com.bytedance.sdk.openadsdk.awB.tB.oJ("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.ZYk.1
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    @Nullable
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("req_id", ZYk.this.ex.ZYk());
                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("choose_ad_load_error").ZYk(jSONObject.toString());
                    }
                });
            }
        }

        private ZYk(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
            this.ZYk = new AtomicBoolean(false);
            this.oJ = pAGInterstitialAdLoadListener;
            this.ex = oJVar;
            this.tB = new AtomicInteger(oJ());
        }

        private int oJ() {
            if (this.ex.Pfn()) {
                int i10 = 0;
                for (int i11 = 0; i11 < this.ex.ex().size(); i11++) {
                    cY cYVar = this.ex.ex().get(i11);
                    if (cYVar != null && !Ln.tB(cYVar) && cYVar.ib() != null) {
                        i10++;
                    }
                }
                return i10;
            }
            return 0;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* renamed from: oJ */
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            this.tB.decrementAndGet();
            if (this.oJ == null || !this.ZYk.compareAndSet(false, true)) {
                return;
            }
            this.oJ.onAdLoaded(pAGInterstitialAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements PAGInterstitialAdLoadListener {
        private final boolean Pfn;
        private final AdSlot ZYk;
        private final PAGInterstitialAdLoadListener ex;
        private final Context oJ;
        private final com.bytedance.sdk.openadsdk.core.model.oJ tB;

        public oJ(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.oJ oJVar, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, boolean z10) {
            this.oJ = context;
            this.ZYk = adSlot;
            this.tB = oJVar;
            this.ex = pAGInterstitialAdLoadListener;
            this.Pfn = z10;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* renamed from: oJ */
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            Pfn.oJ(this.oJ).oJ(this.ZYk, this.tB, this.ex, pAGInterstitialAd, this.Pfn);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.ba
        public void onError(int i10, String str) {
            PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = this.ex;
            if (pAGInterstitialAdLoadListener != null) {
                pAGInterstitialAdLoadListener.onError(i10, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB extends com.bytedance.sdk.component.so.so {
        final AdSlot ZYk;
        final cY oJ;
        final com.bytedance.sdk.openadsdk.core.model.oJ tB;

        tB(cY cYVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
            super("Fullscreen Task");
            this.oJ = cYVar;
            this.ZYk = adSlot;
            this.tB = oJVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            cY cYVar = this.oJ;
            if (cYVar != null && cYVar.ib() != null) {
                com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ = cY.oJ(CacheDirFactory.getICacheDir(this.oJ.rQ()).oJ(), this.oJ);
                oJ.oJ("material_meta", this.oJ);
                oJ.oJ("ad_slot", this.ZYk);
                com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ, new com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.tB.1
                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
                        ex oJ2 = ex.oJ(si.oJ());
                        tB tBVar2 = tB.this;
                        oJ2.oJ(tBVar2.ZYk, tBVar2.tB);
                    }
                });
            }
        }
    }

    private Pfn(Context context) {
        Context applicationContext;
        if (context == null) {
            applicationContext = si.oJ();
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.ZYk = applicationContext;
        tB();
    }

    private void ex(final AdSlot adSlot, final PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        final long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.model.HL hl2 = new com.bytedance.sdk.openadsdk.core.model.HL();
        hl2.tB = 1;
        if (si.ex().dLZ(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            hl2.jFA = 2;
        }
        si.tB().oJ(adSlot, hl2, 8, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.8
            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener;
                if (pAGInterstitialAdLoadListener2 != null) {
                    pAGInterstitialAdLoadListener2.onError(i10, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
                    WcQ wcQ = new WcQ(Pfn.this.ZYk, oJVar);
                    if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                        com.bytedance.sdk.openadsdk.QSm.oJ.ex.oJ().oJ(oJVar.ex().isEmpty() ? null : oJVar.ex().get(0));
                        com.bytedance.sdk.openadsdk.awB.tB.oJ(oJVar.ba(), System.currentTimeMillis() - currentTimeMillis);
                    }
                    if (pAGInterstitialAdLoadListener != null && si.ex().si() == 0) {
                        Pfn.this.oJ(adSlot, oJVar, pAGInterstitialAdLoadListener, (PAGInterstitialAd) wcQ.oJ(), false);
                    }
                    Pfn.this.oJ(oJVar, wcQ, adSlot, false, pAGInterstitialAdLoadListener);
                    return;
                }
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener;
                if (pAGInterstitialAdLoadListener2 != null) {
                    pAGInterstitialAdLoadListener2.onError(-3, com.bytedance.sdk.openadsdk.core.so.oJ(-3));
                    tBVar.oJ(-3);
                    tBVar.tB(5);
                    com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
                }
            }
        });
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.Pfn != null) {
            try {
                com.bytedance.sdk.component.utils.jFA.oJ().removeCallbacks(this.Pfn);
            } catch (Exception unused) {
            }
            this.Pfn = null;
        }
        ex();
    }

    private void ZYk(final AdSlot adSlot) {
        com.bytedance.sdk.openadsdk.core.model.HL hl2 = new com.bytedance.sdk.openadsdk.core.model.HL();
        hl2.tB = 2;
        if (si.ex().dLZ(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            hl2.jFA = 2;
        }
        si.tB().oJ(adSlot, hl2, 8, (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.1
            boolean oJ = false;

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public String oJ() {
                return ex.oJ(Pfn.this.ZYk).oJ(adSlot.getCodeId(), false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
                boolean oJ2 = ex.oJ(Pfn.this.ZYk).oJ(oJVar);
                this.oJ = oJ2;
                return oJ2;
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                if (this.oJ || oJVar.ex() == null || oJVar.ex().isEmpty()) {
                    return;
                }
                Pfn.this.oJ(oJVar, new WcQ(Pfn.this.ZYk, oJVar), adSlot, true, (PAGInterstitialAdLoadListener) null);
            }
        });
    }

    private void tB(final AdSlot adSlot) {
        if (ex.oJ(this.ZYk).ZYk(adSlot.getCodeId(), false) != null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.HL hl2 = new com.bytedance.sdk.openadsdk.core.model.HL();
        hl2.tB = 2;
        if (si.ex().dLZ(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            hl2.jFA = 2;
        }
        si.tB().oJ(adSlot, hl2, 8, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.3
            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                if (oJVar.ex() == null || oJVar.ex().isEmpty()) {
                    return;
                }
                Pfn.this.oJ(oJVar, new WcQ(Pfn.this.ZYk, oJVar), adSlot, true, (PAGInterstitialAdLoadListener) null);
            }
        });
    }

    public static Pfn oJ(Context context) {
        if (oJ == null) {
            synchronized (Pfn.class) {
                try {
                    if (oJ == null) {
                        oJ = new Pfn(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    private void ZYk(final AdSlot adSlot, final PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        final long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.openadsdk.core.model.HL hl2 = new com.bytedance.sdk.openadsdk.core.model.HL();
        hl2.tB = 1;
        if (si.ex().dLZ(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            hl2.jFA = 2;
        }
        si.tB().oJ(adSlot, hl2, 8, (QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.4
            boolean oJ = false;

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(int i10, String str) {
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener;
                if (pAGInterstitialAdLoadListener2 != null) {
                    pAGInterstitialAdLoadListener2.onError(i10, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
            public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
                    WcQ wcQ = new WcQ(Pfn.this.ZYk, oJVar);
                    if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                        com.bytedance.sdk.openadsdk.QSm.oJ.ex.oJ().oJ(oJVar.ex().isEmpty() ? null : oJVar.ex().get(0));
                        com.bytedance.sdk.openadsdk.awB.tB.oJ(oJVar.ba(), System.currentTimeMillis() - currentTimeMillis);
                    }
                    if (pAGInterstitialAdLoadListener != null && si.ex().si() == 0) {
                        Pfn.this.oJ(adSlot, oJVar, pAGInterstitialAdLoadListener, wcQ.oJ(), this.oJ);
                    }
                    Pfn.this.oJ(oJVar, wcQ, adSlot, false, pAGInterstitialAdLoadListener);
                    return;
                }
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener;
                if (pAGInterstitialAdLoadListener2 != null) {
                    pAGInterstitialAdLoadListener2.onError(-3, com.bytedance.sdk.openadsdk.core.so.oJ(-3));
                    tBVar.oJ(-3);
                    tBVar.tB(5);
                    com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public String oJ() {
                if (TextUtils.isEmpty(adSlot.getBidAdm())) {
                    String oJ2 = ex.oJ(Pfn.this.ZYk).oJ(adSlot.getCodeId(), true);
                    if (TextUtils.isEmpty(oJ2)) {
                        return null;
                    }
                    return oJ2;
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.QSm
            public boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
                boolean oJ2 = ex.oJ(Pfn.this.ZYk).oJ(oJVar);
                this.oJ = oJ2;
                return oJ2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex(AdSlot adSlot) {
        if (ZYk() != 2) {
            return;
        }
        ex.oJ(this.ZYk).oJ(adSlot.getCodeId());
    }

    private void tB(AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        com.bytedance.sdk.openadsdk.core.model.oJ ZYk2;
        if (TextUtils.isEmpty(adSlot.getBidAdm()) && (ZYk2 = ex.oJ(this.ZYk).ZYk(adSlot.getCodeId(), true)) != null && ZYk2.Pfn()) {
            oJ(adSlot, ZYk2, pAGInterstitialAdLoadListener);
        } else {
            ex(adSlot, pAGInterstitialAdLoadListener);
        }
    }

    private void ex() {
        if (this.tB.get()) {
            this.tB.set(false);
            try {
                HL.oJ(this.f12987ba);
            } catch (Exception unused) {
            }
        }
    }

    public void oJ() {
        try {
            ex.oJ(this.ZYk).oJ();
        } catch (Throwable unused) {
        }
    }

    public void oJ(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || !TextUtils.isEmpty(adSlot.getBidAdm())) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            ZYk(adSlot);
        } else {
            tB(adSlot);
        }
    }

    private void tB() {
        if (this.tB.get()) {
            return;
        }
        this.tB.set(true);
        HL.oJ(this.f12987ba, this.ZYk);
    }

    public static int ZYk() {
        return com.bytedance.sdk.openadsdk.oq.oJ.oJ("ivrv_load_ad_cache_strategy", 0);
    }

    public void oJ(AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            ZYk(adSlot, pAGInterstitialAdLoadListener);
        } else {
            tB(adSlot, pAGInterstitialAdLoadListener);
        }
    }

    private void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.oJ oJVar, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        cY ba2 = oJVar.ba();
        for (cY cYVar : oJVar.ex()) {
            if (cYVar.BHY() == null) {
                cYVar.oJ(adSlot);
            }
        }
        WcQ wcQ = new WcQ(this.ZYk, oJVar);
        if (!Ln.tB(ba2)) {
            wcQ.ZYk();
        }
        if (pAGInterstitialAdLoadListener != null) {
            com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(oJVar);
            if (si.ex().si() == 0) {
                oJ(adSlot, oJVar, pAGInterstitialAdLoadListener, (PAGInterstitialAd) wcQ.oJ(), true);
            }
            ZYk zYk = new ZYk(new oJ(this.ZYk, adSlot, oJVar, pAGInterstitialAdLoadListener, true), oJVar);
            for (int i10 = 0; i10 < oJVar.ex().size(); i10++) {
                oJ(oJVar.ex().get(i10), adSlot, zYk, wcQ);
                if (oJVar.kkU()) {
                    break;
                }
            }
        }
        for (int i11 = 0; i11 < oJVar.ex().size(); i11++) {
            com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJVar.ex().get(i11), new oJ.InterfaceC0201oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.5
                @Override // com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.InterfaceC0201oJ
                public void oJ(boolean z10) {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.oJ oJVar, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, PAGInterstitialAd pAGInterstitialAd, final boolean z10) {
        com.bytedance.sdk.openadsdk.core.WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.6
            @Override // java.lang.Runnable
            public void run() {
                int ZYk2 = Pfn.ZYk();
                if (z10) {
                    if (ZYk2 == 2) {
                        Pfn.this.ex(adSlot);
                    } else if (ZYk2 == 1) {
                        ex.oJ(Pfn.this.ZYk).oJ(adSlot.getCodeId(), (cY) null);
                    }
                } else if (ZYk2 == 2) {
                    ex.oJ(Pfn.this.ZYk).oJ(adSlot, oJVar);
                    Pfn.this.ex(adSlot);
                }
            }
        });
        if (pAGInterstitialAdLoadListener != null) {
            pAGInterstitialAdLoadListener.onAdLoaded(pAGInterstitialAd);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (com.bytedance.sdk.openadsdk.core.si.ex().si() == 1) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY r4, com.bytedance.sdk.openadsdk.AdSlot r5, final com.bytedance.sdk.openadsdk.component.reward.Pfn.ZYk r6, final com.bytedance.sdk.openadsdk.component.reward.WcQ r7) {
        /*
            r3 = this;
            r0 = 0
            if (r6 == 0) goto Lf
            com.bytedance.sdk.openadsdk.core.settings.ba r1 = com.bytedance.sdk.openadsdk.core.si.ex()
            int r1 = r1.si()
            r2 = 1
            if (r1 != r2) goto Lf
            goto L10
        Lf:
            r2 = r0
        L10:
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.Ln.tB(r4)
            if (r1 != 0) goto L3f
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.cY.Pfn(r4)
            if (r1 == 0) goto L3f
            int r1 = r4.rQ()
            com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk r1 = com.bytedance.sdk.openadsdk.CacheDirFactory.getICacheDir(r1)
            java.lang.String r1 = r1.oJ()
            com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk r1 = com.bytedance.sdk.openadsdk.core.model.cY.oJ(r1, r4)
            java.lang.String r2 = "material_meta"
            r1.oJ(r2, r4)
            java.lang.String r4 = "ad_slot"
            r1.oJ(r4, r5)
            com.bytedance.sdk.openadsdk.component.reward.Pfn$7 r4 = new com.bytedance.sdk.openadsdk.component.reward.Pfn$7
            r4.<init>()
            com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(r1, r4)
            goto L40
        L3f:
            r0 = r2
        L40:
            if (r0 == 0) goto L49
            com.bytedance.sdk.openadsdk.component.reward.ba r4 = r7.oJ()
            r6.onAdLoaded(r4)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.Pfn.oJ(com.bytedance.sdk.openadsdk.core.model.cY, com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.component.reward.Pfn$ZYk, com.bytedance.sdk.openadsdk.component.reward.WcQ):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, WcQ wcQ, AdSlot adSlot, boolean z10, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        if (!z10) {
            com.bytedance.sdk.openadsdk.PiB.oJ.oJ().oJ(oJVar.ba());
        }
        ZYk zYk = new ZYk(new oJ(this.ZYk, adSlot, oJVar, pAGInterstitialAdLoadListener, false), oJVar);
        oJ(oJVar);
        for (int i10 = 0; i10 < oJVar.ex().size(); i10++) {
            cY cYVar = oJVar.ex().get(i10);
            int LS = cYVar.LS();
            if (i10 == 0 && LS == 43) {
                cYVar.ib().ba(0);
            }
            oJ(oJVar, cYVar, wcQ, adSlot, z10, zYk);
            if (oJVar.kkU() && cYVar.LS() != 43) {
                return;
            }
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        jr BTZ = oJVar.BTZ();
        int i10 = oJVar.kkU() ? 10 : 1;
        if (BTZ != null) {
            i10 = BTZ.eZI();
        }
        for (final int i11 = 0; i11 < oJVar.ex().size() && i11 < i10; i11++) {
            com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJVar.ex().get(i11), new oJ.InterfaceC0201oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.9
                @Override // com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.InterfaceC0201oJ
                public void oJ(boolean z10) {
                    com.bytedance.sdk.component.utils.QSm.oJ("ScreenVideoLoadM", "onCachedResponse: i=" + i11 + ", isSuccess=" + z10);
                }
            });
        }
    }

    private void oJ(final com.bytedance.sdk.openadsdk.core.model.oJ oJVar, cY cYVar, final WcQ wcQ, final AdSlot adSlot, final boolean z10, final ZYk zYk) {
        boolean z11 = true;
        if (z10 && !Ln.tB(cYVar) && cY.Pfn(cYVar) && si.ex().Xe(adSlot.getCodeId()).ex == 1 && !Ry.ex(this.ZYk)) {
            oJ(new tB(cYVar, adSlot, oJVar));
            return;
        }
        boolean z12 = false;
        if (zYk == null || si.ex().si() != 1) {
            z11 = false;
        }
        if (Ln.tB(cYVar)) {
            if (z10) {
                ex.oJ(this.ZYk).oJ(adSlot, oJVar);
            }
        } else if (cY.Pfn(cYVar)) {
            if (cYVar.ib() != null) {
                com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ2 = cY.oJ(CacheDirFactory.getICacheDir(cYVar.rQ()).oJ(), cYVar);
                oJ2.oJ("material_meta", cYVar);
                oJ2.oJ("ad_slot", adSlot);
                com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ2, new com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.Pfn.10
                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
                        wcQ.ZYk();
                        if (z10) {
                            ex.oJ(Pfn.this.ZYk).oJ(adSlot, oJVar);
                        } else if (zYk == null || si.ex().si() != 1) {
                        } else {
                            zYk.onAdLoaded(wcQ.oJ());
                        }
                    }

                    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
                        if (zYk == null || si.ex().si() != 1) {
                            return;
                        }
                        zYk.onError(i10, str);
                    }
                });
            } else {
                z12 = z11;
            }
            z11 = z12;
        } else if (z10) {
            ex.oJ(this.ZYk).oJ(adSlot, oJVar);
        }
        if (z11) {
            zYk.onAdLoaded(wcQ.oJ());
        }
    }

    private void oJ(tB tBVar) {
        if (tBVar == null) {
            return;
        }
        if (this.ex.size() > 0) {
            this.ex.remove(0);
        }
        this.ex.add(tBVar);
    }

    public void oJ(String str, cY cYVar) {
        ex.oJ(this.ZYk).oJ(str, cYVar);
    }
}
