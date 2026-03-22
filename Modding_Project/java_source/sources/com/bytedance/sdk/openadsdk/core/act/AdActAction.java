package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.browser.customtabs.EngagementSignalsCallback;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdActAction {
    private String Pfn;
    private Context ZYk;
    private Long awB;
    private CustomTabsSession cFZ;
    private BindCustomTabsServiceCallback eZI;
    private String ex;

    /* renamed from: so  reason: collision with root package name */
    private ActServiceConnection f13118so;
    private cY tB;

    /* renamed from: ba  reason: collision with root package name */
    private CustomTabsClient f13116ba = null;
    private boolean jFA = false;
    private boolean kkU = false;
    private boolean dLZ = false;
    private boolean BTZ = false;
    private boolean PiB = false;
    private long WcQ = 0;

    /* renamed from: si  reason: collision with root package name */
    private ZYk f13117si = new ZYk() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1
        @Override // com.bytedance.sdk.openadsdk.core.act.ZYk
        public void oJ(final CustomTabsClient customTabsClient) {
            if (!ofl.ba()) {
                ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdActAction.this.oJ(customTabsClient);
                    }
                });
            } else {
                AdActAction.this.oJ(customTabsClient);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.act.ZYk
        public void oJ() {
            AdActAction.this.f13116ba = null;
            AdActAction.this.f13118so = null;
            AdActAction.this.cFZ = null;
        }
    };
    public EngagementSignalsCallback oJ = new PAGEngagementSignalsCallback();
    private CustomTabsCallback Ry = new PAGCustomTabsCallback();

    /* loaded from: classes3.dex */
    public interface BindCustomTabsServiceCallback {
        void onBindFail(int i10, String str);

        void onBindSuccess(CustomTabsSession customTabsSession);
    }

    /* loaded from: classes3.dex */
    public class PAGCustomTabsCallback extends CustomTabsCallback {
        public PAGCustomTabsCallback() {
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i10, @Nullable Bundle bundle) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 6) {
                            AdActAction.this.oJ();
                            if (!AdActAction.this.PiB && AdActAction.this.tB != null && !AdActAction.this.dLZ && !AdActAction.this.kkU && AdActAction.this.awB != null) {
                                com.bytedance.sdk.openadsdk.ex.tB.oJ(AdActAction.this.tB, HyG.oJ(AdActAction.this.tB), SystemClock.elapsedRealtime() - AdActAction.this.awB.longValue(), 0, 1);
                                return;
                            }
                            return;
                        }
                        return;
                    } else if (!AdActAction.this.dLZ && AdActAction.this.tB != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt("render_type", "h5");
                            jSONObject.putOpt("render_type_2", 0);
                            jSONObject.put("url", AdActAction.this.Pfn);
                            jSONObject.put("preload_h5_type", AdActAction.this.tB.LpP());
                            AdActAction.this.oJ("load_fail", jSONObject, 0L);
                            AdActAction.this.dLZ = true;
                            return;
                        } catch (Throwable th2) {
                            QSm.tB("AdActAction", th2.getMessage());
                            return;
                        }
                    } else {
                        return;
                    }
                } else if (!AdActAction.this.kkU && AdActAction.this.awB != null && AdActAction.this.tB != null) {
                    long longValue = AdActAction.this.awB.longValue() - SystemClock.elapsedRealtime();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("first_page", true);
                        jSONObject2.putOpt("render_type", "h5");
                        jSONObject2.putOpt("render_type_2", 0);
                        jSONObject2.put("url", AdActAction.this.Pfn);
                        jSONObject2.put("preload_h5_type", AdActAction.this.tB.LpP());
                        AdActAction.this.oJ("load_finish", jSONObject2, longValue);
                        AdActAction.this.kkU = true;
                        return;
                    } catch (Throwable th3) {
                        QSm.tB("AdActAction", th3.getMessage());
                        return;
                    }
                } else {
                    return;
                }
            }
            AdActAction.this.awB = Long.valueOf(SystemClock.elapsedRealtime());
            if (!AdActAction.this.BTZ && AdActAction.this.tB != null) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.putOpt("render_type", "h5");
                    jSONObject3.putOpt("render_type_2", 0);
                    AdActAction.this.oJ("load_start", jSONObject3, 0L);
                    AdActAction.this.BTZ = true;
                } catch (Throwable th4) {
                    QSm.tB("AdActAction", th4.getMessage());
                }
            }
        }
    }

    public AdActAction(Context context, cY cYVar, String str, String str2) {
        this.ZYk = context;
        this.tB = cYVar;
        this.ex = str;
        this.Pfn = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(CustomTabsClient customTabsClient) {
        this.f13116ba = customTabsClient;
        this.cFZ = customTabsClient.newSession(this.Ry);
        com.bytedance.sdk.openadsdk.awB.oJ.ZYk oJ = oJ(9);
        try {
            CustomTabsSession customTabsSession = this.cFZ;
            Bundle bundle = Bundle.EMPTY;
            if (customTabsSession.isEngagementSignalsApiAvailable(bundle)) {
                boolean engagementSignalsCallback = this.cFZ.setEngagementSignalsCallback(this.oJ, bundle);
                oJ.tB(1);
                oJ.oJ(1);
                if (engagementSignalsCallback) {
                    oJ.ex(1);
                    oJ.ZYk(1);
                } else {
                    oJ.ZYk(0);
                }
            } else {
                oJ.tB(0);
                oJ.oJ(0);
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback = this.eZI;
            if (bindCustomTabsServiceCallback != null) {
                bindCustomTabsServiceCallback.onBindSuccess(this.cFZ);
            }
        } catch (Throwable th2) {
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.eZI;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(11, th2.getMessage());
            }
        }
    }

    public void oJ(BindCustomTabsServiceCallback bindCustomTabsServiceCallback) {
        this.eZI = bindCustomTabsServiceCallback;
        if (this.ZYk == null || this.tB == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(8));
            String oJ = oJ.oJ(this.ZYk);
            if (oJ == null) {
                return;
            }
            ActServiceConnection actServiceConnection = new ActServiceConnection(this.f13117si);
            this.f13118so = actServiceConnection;
            CustomTabsClient.bindCustomTabsService(this.ZYk, oJ, actServiceConnection);
        } catch (Throwable th2) {
            String message = th2.getMessage();
            QSm.tB("AdActAction", message);
            BindCustomTabsServiceCallback bindCustomTabsServiceCallback2 = this.eZI;
            if (bindCustomTabsServiceCallback2 != null) {
                bindCustomTabsServiceCallback2.onBindFail(10, message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ() {
        try {
            ActServiceConnection actServiceConnection = this.f13118so;
            if (actServiceConnection == null) {
                return;
            }
            this.ZYk.unbindService(actServiceConnection);
            this.f13116ba = null;
            this.cFZ = null;
            this.f13118so = null;
        } catch (Throwable th2) {
            QSm.tB("AdActAction", th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, final JSONObject jSONObject, final long j10) {
        if (this.tB == null || TextUtils.isEmpty(str)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        cY cYVar = this.tB;
        com.bytedance.sdk.openadsdk.ex.tB.oJ(currentTimeMillis, cYVar, HyG.oJ(cYVar), str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.act.AdActAction.2
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2;
                Throwable th2;
                try {
                    jSONObject.put("is_playable", Ln.ZYk(AdActAction.this.tB) ? 1 : 0);
                    jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(AdActAction.this.tB) ? 1 : 0);
                    jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                        long j11 = j10;
                        if (j11 > 0) {
                            jSONObject2.put("duration", j11);
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        QSm.tB("AdActAction", th2.getMessage());
                        return jSONObject2;
                    }
                } catch (Throwable th4) {
                    jSONObject2 = null;
                    th2 = th4;
                }
                return jSONObject2;
            }
        });
    }

    private com.bytedance.sdk.openadsdk.awB.oJ.ZYk oJ(int i10) {
        com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk = new com.bytedance.sdk.openadsdk.awB.oJ.ZYk();
        zYk.oJ(this.ex);
        zYk.oJ(this.tB);
        zYk.ZYk(HyG.oJ(this.tB));
        zYk.oJ(i10);
        zYk.oJ(false);
        zYk.ZYk(8);
        return zYk;
    }

    /* loaded from: classes3.dex */
    public class PAGEngagementSignalsCallback implements EngagementSignalsCallback {
        public PAGEngagementSignalsCallback() {
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onVerticalScrollEvent(boolean z10, @NonNull Bundle bundle) {
            int i10;
            AdActAction.this.WcQ = System.currentTimeMillis();
            if (AdActAction.this.tB != null && !AdActAction.this.jFA) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("url", AdActAction.this.Pfn);
                    jSONObject.put("down_time", AdActAction.this.WcQ);
                    long currentTimeMillis = System.currentTimeMillis();
                    jSONObject.put("up_time", currentTimeMillis);
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(AdActAction.this.tB, "landingpage", "in_web_click", jSONObject, currentTimeMillis - AdActAction.this.WcQ);
                } catch (Throwable th2) {
                    QSm.tB("AdActAction", th2.getMessage());
                }
                if (!TextUtils.isEmpty(cY.oJ(AdActAction.this.ZYk, AdActAction.this.tB))) {
                    BTZ.oJ oJ = new BTZ.oJ().ZYk(AdActAction.this.WcQ).oJ(System.currentTimeMillis());
                    if (jFA.ZYk().oJ()) {
                        i10 = 1;
                    } else {
                        i10 = 2;
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.oJ("click", AdActAction.this.tB, oJ.ZYk(i10).tB(cdg.kkU(AdActAction.this.ZYk)).oJ(cdg.so(AdActAction.this.ZYk)).ZYk(cdg.jFA(AdActAction.this.ZYk)).oJ(), "landingpage", true, (Map<String, Object>) new HashMap(), 2);
                }
                AdActAction.this.jFA = true;
            }
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onGreatestScrollPercentageIncreased(int i10, @NonNull Bundle bundle) {
        }

        @Override // androidx.browser.customtabs.EngagementSignalsCallback
        public void onSessionEnded(boolean z10, @NonNull Bundle bundle) {
        }
    }
}
