package com.bytedance.sdk.openadsdk.cFZ;

import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.GeckoHubImp;
import com.bykv.vk.openvk.preload.geckox.IThreadPoolCallback;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.awB.tB;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.vodsetting.Module;
import java.security.SecureRandom;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static final String[] oJ = {"gecko16-normal-useast5.tiktokv.us"};

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.cFZ.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0192ZYk {
        private static final ZYk oJ = new ZYk();
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    private static String ex() {
        String[] oTd = si.ex().oTd();
        if (oTd == null) {
            oTd = oJ;
        }
        String str = oTd[new SecureRandom().nextInt(oTd.length)];
        if (TextUtils.isEmpty(str)) {
            SecureRandom secureRandom = new SecureRandom();
            String[] strArr = oJ;
            return strArr[secureRandom.nextInt(strArr.length)];
        }
        return str;
    }

    public static void tB() {
        try {
            GeckoHubImp.setThreadPoolExecutorCallback(new IThreadPoolCallback() { // from class: com.bytedance.sdk.openadsdk.cFZ.ZYk.2
                @Override // com.bykv.vk.openvk.preload.geckox.IThreadPoolCallback
                public ExecutorService getThreadPool() {
                    return ofl.Pfn();
                }
            });
        } catch (Throwable th2) {
            QSm.oJ("GeckoHub", "setThreadPoolExecutor error", th2);
        }
    }

    public ILoader ZYk() {
        try {
            return GeckoHubImp.inst(si.oJ()).getGeckoResLoader();
        } catch (Throwable th2) {
            QSm.oJ("GeckoHub", "getGeckoResLoader error", th2);
            return null;
        }
    }

    private ZYk() {
        try {
            GeckoHubImp.inst(si.oJ());
        } catch (Throwable th2) {
            QSm.oJ("GeckoHub", "GeckoHubImp init error", th2);
        }
    }

    public static ZYk oJ() {
        return C0192ZYk.oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(Map<String, cY> map, JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (jSONObject == null) {
                jSONObject2.put("success", false);
                jSONObject2.put("msg", str);
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject = jSONObject2;
            }
            for (cY cYVar : map.values()) {
                tB.oJ(cYVar, jSONObject);
            }
        } catch (Throwable th2) {
            QSm.oJ("GeckoHub", "upLoadStateEvent error", th2);
        }
    }

    public void oJ(Map<String, cY> map) {
        oJ(map, (oJ) null, false);
    }

    public void oJ(final Map<String, cY> map, final oJ oJVar, boolean z10) {
        try {
            String oJ2 = BTZ.oJ(si.oJ());
            if (TextUtils.isEmpty(oJ2)) {
                return;
            }
            for (cY cYVar : map.values()) {
                if (cYVar != null) {
                    if (!z10 && cYVar.XS()) {
                        map.remove(cYVar.PQw());
                    } else {
                        tB.ZYk(cYVar);
                    }
                }
            }
            if (map.isEmpty()) {
                return;
            }
            GeckoHubImp.setRandomHost(ex());
            GeckoHubImp.inst(si.oJ()).preload(oJ2, new IStatisticMonitor() { // from class: com.bytedance.sdk.openadsdk.cFZ.ZYk.1
                @Override // com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor
                public void upload(String str, JSONObject jSONObject) {
                    if ("geckosdk_update_stats".equals(str)) {
                        cY cYVar2 = (cY) map.get(jSONObject.optString(AppsFlyerProperties.CHANNEL));
                        if (cYVar2 != null) {
                            tB.oJ.oJ(str, jSONObject, cYVar2);
                        }
                    } else if ("download_gecko_end".equals(str)) {
                        oJ oJVar2 = oJVar;
                        if (oJVar2 != null) {
                            oJVar2.oJ();
                        }
                        ZYk.ZYk(map, jSONObject, "");
                    }
                }
            }, map.keySet(), new com.bytedance.sdk.openadsdk.cFZ.oJ());
        } catch (Throwable th2) {
            ZYk(map, null, th2.toString());
            QSm.oJ("GeckoHub", "releaseGeckoResLoader error", th2);
        }
    }

    public void oJ(ILoader iLoader) {
        if (iLoader != null) {
            try {
                GeckoHubImp.inst(si.oJ()).releaseGeckoResLoader(iLoader);
            } catch (Throwable th2) {
                QSm.oJ("GeckoHub", "releaseGeckoResLoader error", th2);
            }
        }
    }

    public WebResourceResponseModel oJ(ILoader iLoader, String str, String str2) {
        if (iLoader != null) {
            try {
                return GeckoHubImp.inst(si.oJ()).findResAndMsg(iLoader, str, str2);
            } catch (Throwable th2) {
                QSm.oJ("GeckoHub", "findRes error", th2);
                return null;
            }
        }
        return null;
    }

    public int oJ(ILoader iLoader, String str) {
        try {
            return GeckoHubImp.inst(si.oJ()).getResCount(iLoader, str);
        } catch (Throwable th2) {
            QSm.oJ("GeckoHub", "getResCount error", th2);
            return 0;
        }
    }
}
