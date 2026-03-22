package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.model.HL;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.wd;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    private PAGBannerAdLoadListener ex;
    private AdSlot oJ;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.model.cY f13270so;
    private final Context tB;
    private final AtomicBoolean Pfn = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private int f13269ba = 5;
    private final wd cFZ = wd.tB();
    private final com.bytedance.sdk.openadsdk.core.Id ZYk = com.bytedance.sdk.openadsdk.core.si.tB();

    private cFZ(Context context) {
        if (context != null) {
            this.tB = context.getApplicationContext();
        } else {
            this.tB = com.bytedance.sdk.openadsdk.core.si.oJ();
        }
    }

    public static cFZ oJ(Context context) {
        return new cFZ(context);
    }

    public void oJ(AdSlot adSlot, int i10, @Nullable com.bytedance.sdk.openadsdk.common.ba baVar) {
        this.cFZ.Pfn();
        if (this.Pfn.get()) {
            return;
        }
        this.f13269ba = i10;
        this.Pfn.set(true);
        this.oJ = adSlot;
        if (baVar instanceof PAGBannerAdLoadListener) {
            this.ex = (PAGBannerAdLoadListener) baVar;
        }
        oJ(adSlot);
    }

    private void oJ(final AdSlot adSlot) {
        if (adSlot == null) {
            return;
        }
        HL hl2 = new HL();
        hl2.jFA = 2;
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            this.ZYk.oJ(adSlot, hl2, this.f13269ba, (com.bytedance.sdk.openadsdk.core.QSm) new com.bytedance.sdk.openadsdk.core.oq() { // from class: com.bytedance.sdk.openadsdk.core.so.cFZ.1
                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    cFZ.this.oJ(i10, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                    cFZ.this.oJ(oJVar, tBVar, adSlot);
                }
            });
        } else {
            this.ZYk.oJ(adSlot, hl2, this.f13269ba, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.core.so.cFZ.2
                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    cFZ.this.oJ(i10, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                    cFZ.this.oJ(oJVar, tBVar, adSlot);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar, AdSlot adSlot) {
        if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
            com.bytedance.sdk.openadsdk.core.model.cY dLZ = oJVar.dLZ();
            this.f13270so = dLZ;
            oJ(dLZ, adSlot);
            if (com.bytedance.sdk.component.utils.awB.ex()) {
                Log.e("ExpressAdLoadManager", "onAdLoad: net work response duration = " + this.cFZ.ex() + "run in  " + Thread.currentThread().getName());
            }
            if (this.Pfn.getAndSet(false)) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.cFZ.3
                    @Override // java.lang.Runnable
                    public void run() {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        if (cFZ.this.f13270so != null) {
                            cFZ cfz = cFZ.this;
                            cfz.oJ(cfz.f13270so, elapsedRealtime);
                        }
                    }
                });
                return;
            }
            return;
        }
        oJ(-3, com.bytedance.sdk.openadsdk.core.so.oJ(-3));
        tBVar.oJ(-3);
        tBVar.tB(8);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, AdSlot adSlot) {
        for (com.bytedance.sdk.openadsdk.core.model.cY cYVar2 : cYVar.BnM()) {
            if (com.bytedance.sdk.openadsdk.core.model.cY.Pfn(cYVar2) && cYVar2.ib() != null && cYVar2.ib().dLZ() != null) {
                if (com.bytedance.sdk.openadsdk.core.si.ex().ex(String.valueOf(cYVar2.uv())) && com.bytedance.sdk.openadsdk.core.si.ex().Yg()) {
                    com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ = com.bytedance.sdk.openadsdk.core.model.cY.oJ(CacheDirFactory.getICacheDir(cYVar2.rQ()).tB(), cYVar2);
                    oJ.oJ("material_meta", cYVar2);
                    oJ.oJ("ad_slot", adSlot);
                    com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ, null);
                }
            }
        }
    }

    private PAGBannerAd oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        int i10;
        int i11;
        PAGBannerSize mse = cYVar.mse();
        float min = Math.min(this.oJ.getExpressViewAcceptedHeight(), 250.0f);
        if (mse != null) {
            i10 = mse.getWidth();
            i11 = mse.getHeight();
        } else {
            i10 = 0;
            i11 = 0;
        }
        float expressViewAcceptedWidth = i10 > 0 ? i10 : this.oJ.getExpressViewAcceptedWidth();
        if (i11 > 0) {
            min = i11;
        }
        this.oJ.setExpressViewAccepted(expressViewAcceptedWidth, min);
        return new com.bytedance.sdk.openadsdk.core.tB.cFZ(this.tB, cYVar, this.oJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, long j10) {
        if (this.ex != null) {
            PAGBannerAd oJ = oJ(cYVar);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long ex = this.cFZ.ex();
            if (!TextUtils.isEmpty(this.oJ.getBidAdm())) {
                com.bytedance.sdk.openadsdk.awB.tB.oJ(cYVar, ex);
            }
            this.ex.onAdLoaded(oJ);
            oJ(cYVar, ex, j10, elapsedRealtime);
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, final long j10, final long j11, final long j12) {
        try {
            if (com.bytedance.sdk.openadsdk.core.si.ex().bgF()) {
                if (com.bytedance.sdk.openadsdk.oq.oJ.ex()) {
                    try {
                        if (this.f13269ba != 1 || cYVar == null || cYVar.BnM() == null || cYVar.BnM().isEmpty() || cYVar.tB().oJ() == null) {
                            return;
                        }
                        final JSONObject oJ = cYVar.tB().oJ();
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, oJ.optString(ITTVideoEngineEventSource.KEY_TAG, ""), "load_ad_time", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.so.cFZ.4
                            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                            public JSONObject oJ() {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    long optLong = oJ.optLong("callback_start", 0L);
                                    long j13 = j11;
                                    long j14 = j13 - optLong;
                                    long j15 = j12 - j13;
                                    long optLong2 = oJ.optLong("duration", 0L);
                                    JSONObject optJSONObject = oJ.optJSONObject("extra_data");
                                    if (optJSONObject == null) {
                                        optJSONObject = new JSONObject();
                                    }
                                    optJSONObject.put("thread_dispatch_duration", j14);
                                    optJSONObject.put("build_banner_ad_duration", j15);
                                    optJSONObject.put("ad_load_duration_full", j10);
                                    jSONObject.put("duration", optLong2);
                                    jSONObject.put("ad_extra_data", optJSONObject.toString());
                                    if (com.bytedance.sdk.component.utils.awB.ex()) {
                                        jSONObject.toString();
                                    }
                                } catch (Throwable unused) {
                                }
                                return jSONObject;
                            }
                        });
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str) {
        PAGBannerAdLoadListener pAGBannerAdLoadListener;
        if (!this.Pfn.getAndSet(false) || (pAGBannerAdLoadListener = this.ex) == null) {
            return;
        }
        pAGBannerAdLoadListener.onError(i10, str);
    }
}
