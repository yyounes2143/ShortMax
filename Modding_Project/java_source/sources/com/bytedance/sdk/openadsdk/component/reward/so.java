package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.nke;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
class so extends PAGRewardedAd {
    private boolean Pfn;
    private final com.bytedance.sdk.openadsdk.core.model.oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final AtomicBoolean f13037ba = new AtomicBoolean(false);
    private final String cFZ = Xe.oJ();
    private com.bytedance.sdk.openadsdk.oJ.Pfn.oJ ex;
    private boolean jFA;
    private final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13038so;
    private final AdSlot tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public so(Context context, com.bytedance.sdk.openadsdk.core.model.oJ oJVar, AdSlot adSlot) {
        this.oJ = context;
        this.ZYk = oJVar;
        this.tB = adSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = this.ZYk;
        if (oJVar != null && oJVar.ba() != null && this.ZYk.ba().Zwf() != null) {
            try {
                return this.ZYk.ba().Zwf().get(str);
            } catch (Throwable th2) {
                QSm.tB("TTRewardVideoAdImpl", th2.getMessage());
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

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionCallback(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.ex = new jFA(pAGRewardedAdInteractionCallback);
        oJ(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionListener(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.ex = new jFA(pAGRewardedAdInteractionListener);
        oJ(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void show(@Nullable Activity activity) {
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
                if (!this.f13037ba.compareAndSet(false, true)) {
                    return;
                }
                if (ba2 != null && ba2.ib() != null) {
                    if (activity == null) {
                        context = this.oJ;
                    } else {
                        context = activity;
                    }
                    if (context == null) {
                        context = si.oJ();
                    }
                    if (oJ(this.ZYk)) {
                        intent = new Intent(context, TTAdActivity.class);
                    } else if (oJ(ba2)) {
                        intent = new Intent(context, TTRewardExpressVideoActivity.class);
                    } else {
                        intent = new Intent(context, TTRewardVideoActivity.class);
                    }
                    Intent intent2 = intent;
                    com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(intent2, activity, this.Pfn, this.ZYk, this.cFZ);
                    intent2.putExtra("media_extra", this.tB.getMediaExtra());
                    intent2.putExtra(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.tB.getUserID());
                    intent2.putExtra("start_show_time", SystemClock.elapsedRealtime());
                    if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        IUZ.oJ().oJ(this.ex);
                        this.ex = null;
                    }
                    if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("start_activity_async", 0) == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.so.1
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar2.ZYk("start_activity");
                                oJVar2.ex("rewarded_video");
                                return oJVar2;
                            }
                        });
                    }
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    com.bytedance.sdk.component.utils.ZYk.oJ(context, intent2, new ZYk.InterfaceC0180ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.so.2
                        @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                        public void oJ() {
                            if (z10) {
                                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.so.2.1
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar2.ZYk("start_activity");
                                        oJVar2.ex("rewarded_video");
                                        return oJVar2;
                                    }
                                });
                                final long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                                com.bytedance.sdk.openadsdk.awB.tB.oJ("start_activity_action", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.reward.so.2.2
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
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "activity start  fail ");
                            if (z10) {
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.so.2.3
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar2.ZYk("start_activity");
                                        oJVar2.ex("rewarded_video");
                                        return oJVar2;
                                    }
                                });
                            }
                        }
                    }, true);
                    oJ.oJ(this.ZYk.ba(), this.Pfn, true);
                    return;
                }
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "materialMeta error ");
                return;
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(ba2, "fullscreen_interstitial_ad", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTRewardVideoAd.showRewardVideoAd");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d10) {
        if (!this.f13038so) {
            nke.oJ(this.ZYk.ba(), d10);
            this.f13038so = true;
        }
    }

    public void oJ() {
        if (this.f13037ba.get()) {
            return;
        }
        this.Pfn = true;
    }

    private static boolean oJ(cY cYVar) {
        if (cYVar == null) {
            return false;
        }
        return cYVar.Pfn();
    }

    private void oJ(final int i10) {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ofl.tB(new com.bytedance.sdk.component.so.so("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.so.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ oJ = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ();
                    if (i10 == 0 && so.this.ex != null) {
                        com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex exVar = new com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.ex(so.this.ex);
                        IListenerManager asInterface = IListenerManager.Stub.asInterface(oJ.oJ(0));
                        if (asInterface != null) {
                            try {
                                asInterface.registerRewardVideoListener(so.this.cFZ, exVar);
                            } catch (RemoteException e10) {
                                QSm.tB("TTRewardVideoAdImpl", e10.getMessage());
                            }
                        }
                    }
                }
            }, 5);
        }
    }

    public static boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        cY ba2;
        String oJ;
        if (oJVar == null || (ba2 = oJVar.ba()) == null || com.bytedance.sdk.openadsdk.core.model.QSm.tB(ba2)) {
            return false;
        }
        if (ba2.wd()) {
            return true;
        }
        try {
            oJ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("rviv_new_arch", (String) null);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(oJ)) {
            return false;
        }
        JSONArray jSONArray = new JSONArray(oJ);
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            int i11 = jSONArray.getInt(i10);
            if (cY.LS(ba2.LS())) {
                if (ba2.wd() && ba2.LS() == i11) {
                    return true;
                }
            } else if (ba2.LS() == i11) {
                return true;
            }
        }
        return false;
    }
}
