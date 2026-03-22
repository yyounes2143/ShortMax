package com.bytedance.sdk.openadsdk.oem;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class IPMiBroadcastReceiver extends BroadcastReceiver {
    private static volatile IPMiBroadcastReceiver oJ;
    private final LruCache<String, cY> ZYk;
    private int ex = 0;
    private oJ tB;

    private IPMiBroadcastReceiver() {
        int i10 = 10;
        int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("ip_data_config", "ip_ad_cache_count", 10);
        if (oJ2 > 0 && oJ2 <= 200) {
            i10 = oJ2;
        }
        this.ZYk = new LruCache<>(i10);
    }

    static /* synthetic */ int oJ(IPMiBroadcastReceiver iPMiBroadcastReceiver, int i10) {
        iPMiBroadcastReceiver.ex = i10;
        return i10;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        if ("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT".equals(intent.getAction())) {
            ofl.tB(new so("ip-mi") { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    final int i10;
                    final int i11;
                    final int i12;
                    try {
                        int i13 = 0;
                        final int intExtra = intent.getIntExtra("errorCode", 0);
                        if (intExtra < 0) {
                            int intExtra2 = intent.getIntExtra("reason", 0);
                            if (intExtra == -4 && intExtra2 == -1) {
                                return;
                            }
                            i10 = intExtra2;
                        } else {
                            i10 = 0;
                        }
                        if (intExtra == 5) {
                            int intExtra3 = intent.getIntExtra("status", 0);
                            if (intExtra3 == -2) {
                                i13 = intent.getIntExtra("progress", 0);
                                if (i13 < 100) {
                                    return;
                                }
                            }
                            i11 = intExtra3;
                            i12 = i13;
                        } else {
                            i11 = 0;
                            i12 = 0;
                        }
                        String stringExtra = intent.getStringExtra("packageName");
                        oJ oJVar = IPMiBroadcastReceiver.this.tB;
                        if (intExtra > 0 && oJVar != null) {
                            oJVar.oJ(stringExtra, intExtra);
                        }
                        final cY oJ2 = IPMiBroadcastReceiver.this.oJ(stringExtra);
                        if (oJ2 != null) {
                            tB.oJ(System.currentTimeMillis(), oJ2, HyG.oJ(oJ2), "ip_listener_log", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.1.1
                                @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                                public JSONObject oJ() {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        JSONObject jSONObject2 = new JSONObject();
                                        JSONObject jSONObject3 = new JSONObject();
                                        jSONObject3.put("ip_error_code", intExtra);
                                        cY cYVar = oJ2;
                                        if (cYVar != null) {
                                            jSONObject3.put("ip_is_w2a", cYVar.PiB());
                                        }
                                        int i14 = intExtra;
                                        if (i14 > 0) {
                                            if (i14 == 5) {
                                                jSONObject3.put("ip_status", i11);
                                                jSONObject3.put("ip_exec_type", IPMiBroadcastReceiver.this.ex);
                                            }
                                            if (i11 == -2) {
                                                jSONObject3.put("ip_progress", i12);
                                            }
                                        }
                                        if (intExtra < 0) {
                                            jSONObject3.put("ip_reason", i10);
                                        }
                                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                                        jSONObject.put("ad_extra_data", jSONObject2);
                                    } catch (Throwable th2) {
                                        QSm.tB("IPMiBroadcastReceiver", th2.getMessage());
                                    }
                                    return jSONObject;
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        QSm.tB("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }

    public void oJ(String str, cY cYVar) {
        if (TextUtils.isEmpty(str) || cYVar == null || this.ZYk.get(str) != null) {
            return;
        }
        this.ZYk.put(str, cYVar);
    }

    public cY oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.ZYk.get(str);
    }

    public void oJ(oJ oJVar) {
        this.tB = oJVar;
    }

    public void oJ() {
        this.tB = null;
    }

    public static IPMiBroadcastReceiver oJ(Context context) {
        if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("ip_data_config", "ip_link_listener", 0) == 0) {
            return null;
        }
        if (oJ == null) {
            synchronized (IPMiBroadcastReceiver.class) {
                try {
                    if (oJ == null) {
                        oJ = new IPMiBroadcastReceiver();
                        IntentFilter intentFilter = new IntentFilter("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT");
                        if (Build.VERSION.SDK_INT >= 34 && HyG.ba(context) >= 34) {
                            context.registerReceiver(oJ, intentFilter, 2);
                        } else {
                            context.registerReceiver(oJ, intentFilter);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public static void oJ(final Context context, cY cYVar) {
        IUZ hZN;
        if (oJ == null && cYVar != null && (hZN = cYVar.hZN()) != null && hZN.cFZ()) {
            WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IPMiBroadcastReceiver.oJ(si.oJ(context));
                    } catch (Throwable th2) {
                        QSm.tB("IPMiBroadcastReceiver", th2.getMessage());
                    }
                }
            });
        }
    }
}
