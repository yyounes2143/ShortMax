package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialExpressActivity;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.nke;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ba extends PAGInterstitialAd {
    private final com.bytedance.sdk.openadsdk.core.model.oJ ZYk;
    private boolean jFA;
    private final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12995so;
    private com.bytedance.sdk.openadsdk.oJ.tB.ZYk tB;
    private final AtomicBoolean Pfn = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12994ba = false;
    private boolean ex = false;
    private final String cFZ = Xe.oJ();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(Context context, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        this.oJ = context;
        this.ZYk = oJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = this.ZYk;
        if (oJVar != null && oJVar.ba() != null && this.ZYk.ba().Zwf() != null) {
            try {
                return this.ZYk.ba().Zwf().get(str);
            } catch (Throwable th2) {
                QSm.tB("TTFullScreenVideoAdImpl", th2.getMessage());
                return null;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = this.ZYk;
        if (oJVar != null && oJVar.ba() != null) {
            return this.ZYk.ba().Zwf();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d10, String str, String str2) {
        if (!this.jFA) {
            nke.oJ(this.ZYk.ba(), d10, str, str2);
            this.jFA = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionCallback(PAGInterstitialAdInteractionCallback pAGInterstitialAdInteractionCallback) {
        this.tB = new com.bytedance.sdk.openadsdk.component.tB.oJ(pAGInterstitialAdInteractionCallback);
        oJ(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionListener(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.tB = new com.bytedance.sdk.openadsdk.component.tB.oJ(pAGInterstitialAdInteractionListener);
        oJ(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void show(Activity activity) {
        Context context;
        Intent intent;
        final boolean z10;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = this.ZYk;
        if (oJVar != null && oJVar.Pfn()) {
            final cY ba2 = this.ZYk.ba();
            if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
                List<cY> ex = this.ZYk.ex();
                if (ex != null) {
                    for (cY cYVar : ex) {
                        IPMiBroadcastReceiver.oJ(this.oJ, cYVar);
                    }
                }
                if (this.Pfn.get()) {
                    return;
                }
                this.Pfn.set(true);
                if (ba2 != null && (ba2.ib() != null || ba2.yB() != null)) {
                    if (activity == null) {
                        context = this.oJ;
                    } else {
                        context = activity;
                    }
                    if (context == null) {
                        context = si.oJ();
                    }
                    if (so.oJ(this.ZYk)) {
                        intent = new Intent(context, TTAdActivity.class);
                    } else if (oJ(ba2)) {
                        if (com.bytedance.sdk.openadsdk.component.reward.ZYk.so.oJ(ba2)) {
                            intent = new Intent(context, TTInterstitialExpressActivity.class);
                        } else {
                            intent = new Intent(context, TTFullScreenExpressVideoActivity.class);
                        }
                    } else if (com.bytedance.sdk.openadsdk.component.reward.ZYk.so.oJ(ba2)) {
                        intent = new Intent(context, TTInterstitialActivity.class);
                    } else {
                        intent = new Intent(context, TTFullScreenVideoActivity.class);
                    }
                    Intent intent2 = intent;
                    intent2.putExtra("start_show_time", SystemClock.elapsedRealtime());
                    com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(intent2, activity, this.ex, this.ZYk, this.cFZ);
                    intent2.putExtra("is_verity_playable", this.f12994ba);
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        IUZ.oJ().oJ(this.tB);
                        this.tB = null;
                    }
                    if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("start_activity_async", 0) == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.1
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar2.ZYk("start_activity");
                                oJVar2.ex("fullscreen_interstitial_ad");
                                return oJVar2;
                            }
                        });
                    }
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    com.bytedance.sdk.component.utils.ZYk.oJ(context, intent2, new ZYk.InterfaceC0180ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.2
                        @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                        public void oJ() {
                            if (ba.this.f12994ba) {
                                try {
                                    com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(ba2.ib().BTZ());
                                } catch (Throwable unused) {
                                }
                            }
                            if (z10) {
                                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.2.1
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar2.ZYk("start_activity");
                                        oJVar2.ex("fullscreen_interstitial_ad");
                                        return oJVar2;
                                    }
                                });
                                final long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                com.bytedance.sdk.openadsdk.awB.tB.oJ("start_activity_action", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.2.2
                                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("duration", elapsedRealtime2);
                                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("start_activity_action").ZYk(jSONObject.toString());
                                    }
                                });
                            }
                        }

                        @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                        public void oJ(Throwable th2) {
                            if (ba.this.f12994ba) {
                                try {
                                    com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(ba2.ib().BTZ(), -1, th2 != null ? th2.getMessage() : "playable tool error open");
                                } catch (Throwable unused) {
                                }
                            }
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "activity start  fail ");
                            if (z10) {
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.2.3
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar2.ZYk("start_activity");
                                        oJVar2.ex("fullscreen_interstitial_ad");
                                        return oJVar2;
                                    }
                                });
                            }
                        }
                    }, true);
                    oJ.oJ(this.ZYk.ba(), this.ex, false);
                    return;
                }
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "materialMeta error ");
                return;
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTFullScreenVideoAd.showFullScreenVideoAd");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d10) {
        if (!this.f12995so) {
            nke.oJ(this.ZYk.ba(), d10);
            this.f12995so = true;
        }
    }

    public void oJ(boolean z10) {
        this.f12994ba = z10;
    }

    public void oJ() {
        if (this.Pfn.get()) {
            return;
        }
        this.ex = true;
    }

    private static boolean oJ(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        return cYVar.Pfn();
    }

    private void oJ(final int i10) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ofl.tB(new com.bytedance.sdk.component.so.so("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.ba.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ oJ = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ();
                    if (i10 == 1 && ba.this.tB != null) {
                        com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.tB tBVar = new com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.tB(ba.this.tB);
                        IListenerManager asInterface = IListenerManager.Stub.asInterface(oJ.oJ(1));
                        if (asInterface != null) {
                            try {
                                asInterface.registerFullVideoListener(ba.this.cFZ, tBVar);
                            } catch (RemoteException e10) {
                                QSm.tB("TTFullScreenVideoAdImpl", e10.getMessage());
                            }
                        }
                    }
                }
            }, 5);
        }
    }
}
