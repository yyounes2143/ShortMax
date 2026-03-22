package com.bytedance.sdk.openadsdk.si;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.so;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.si;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private static Boolean ZYk;
    private static volatile Handler ex;
    private static volatile oJ oJ;
    private static volatile HandlerThread tB = so.oJ("pag__bus_monitor", 0);

    private static Handler Pfn() {
        if (tB != null && tB.isAlive()) {
            if (ex == null) {
                synchronized (WcQ.class) {
                    try {
                        if (ex == null) {
                            ex = new Handler(tB.getLooper());
                        }
                    } finally {
                    }
                }
            }
        } else {
            synchronized (WcQ.class) {
                try {
                    if (tB != null) {
                        if (!tB.isAlive()) {
                        }
                    }
                    tB = so.oJ("csj_init_handle", -1);
                    ex = new Handler(tB.getLooper());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ex;
    }

    public static void ZYk(ex exVar) {
        oJ().oJ(new Pfn(exVar, 0, 1, 0));
    }

    static /* synthetic */ Handler tB() {
        return Pfn();
    }

    public static void ZYk() {
        oJ().oJ(true);
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = oJ.oJ(new ZYk() { // from class: com.bytedance.sdk.openadsdk.si.tB.1
                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public Context getContext() {
                                return si.oJ();
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public Handler getHandler() {
                                return tB.tB();
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public int getOnceLogCount() {
                                int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("bus_monitor_config", "once_count", 10);
                                if (oJ2 > 100 || oJ2 < 5) {
                                    return 10;
                                }
                                return oJ2;
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public int getOnceLogInterval() {
                                int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("bus_monitor_config", "once_interval", 10000);
                                if (oJ2 < 10000) {
                                    return 10000;
                                }
                                return oJ2;
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public HandlerThread getSafeHandlerThread(String str, int i10) {
                                return so.oJ(str, i10);
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public int getUploadIntervalTime() {
                                int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("bus_monitor_config", "interval", 43200000);
                                if (oJ2 < 3600000) {
                                    return 86400000;
                                }
                                return oJ2;
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public boolean isMonitorOpen() {
                                if (tB.ZYk != null) {
                                    return tB.ZYk.booleanValue();
                                }
                                boolean z10 = false;
                                if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("bus_monitor_config", "enable", 0) == 1) {
                                    z10 = true;
                                }
                                Boolean unused = tB.ZYk = Boolean.valueOf(z10);
                                return tB.ZYk.booleanValue();
                            }

                            @Override // com.bytedance.sdk.openadsdk.si.ZYk
                            public void onMonitorUpload(List<com.bytedance.sdk.openadsdk.si.ZYk.oJ> list) {
                                if (list != null && !list.isEmpty()) {
                                    for (final com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar : list) {
                                        com.bytedance.sdk.openadsdk.awB.tB.oJ();
                                        com.bytedance.sdk.openadsdk.awB.tB.oJ("bus_monitor", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.si.tB.1.1
                                            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                                            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                                                JSONObject jSONObject = new JSONObject();
                                                try {
                                                    jSONObject.put("sdk_version", oJVar.ZYk());
                                                    jSONObject.put("scene", oJVar.tB());
                                                    jSONObject.put("start_count", oJVar.ex());
                                                    jSONObject.put("success_count", oJVar.Pfn());
                                                    jSONObject.put("fail_count", oJVar.ba());
                                                    jSONObject.put("rit", oJVar.cFZ());
                                                    jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, oJVar.so());
                                                    jSONObject.put("label", oJVar.jFA());
                                                    jSONObject.put("mediation", oJVar.dLZ());
                                                    jSONObject.put("is_init", oJVar.BTZ());
                                                    jSONObject.put(GearStrategyConsts.EV_EXTRA_INFO, oJVar.PiB());
                                                    return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("bus_monitor").ZYk(jSONObject.toString());
                                                } catch (Exception e10) {
                                                    QSm.oJ("BusMonitorUtils", "onMonitorUpload: ", e10);
                                                    return null;
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public static void tB(ex exVar) {
        oJ().oJ(new Pfn(exVar, 0, 0, 1));
    }

    public static void oJ(ex exVar) {
        oJ().oJ(new Pfn(exVar, 1, 0, 0));
    }
}
