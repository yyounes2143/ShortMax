package com.bytedance.sdk.openadsdk.awB;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.File;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private static volatile tB oJ;

    private tB() {
    }

    public static void ZYk(final cY cYVar) {
        if (HyG.oJ(cYVar) == null || TextUtils.isEmpty(cYVar.PQw())) {
            return;
        }
        oJ("download_gecko_start", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.18
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", cY.this.Oof());
                jSONObject.put("channel_name", cY.this.PQw());
                return ex.ZYk().oJ("download_gecko_start").oJ(cY.this.TxP()).ZYk(jSONObject.toString());
            }
        });
    }

    public static void ex() {
        oJ("disk_log", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.11
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                File[] listFiles;
                JSONObject jSONObject = new JSONObject();
                File file = new File(CacheDirFactory.getRootDir());
                long j10 = 0;
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        long oJ2 = tB.oJ(file2);
                        j10 += oJ2;
                        jSONObject.put(file2.getName(), oJ2);
                    }
                }
                if (j10 < 524288000) {
                    return null;
                }
                return ex.ZYk().oJ("disk_log").ZYk(jSONObject.toString());
            }
        });
    }

    public static tB oJ() {
        if (oJ == null) {
            synchronized (tB.class) {
                try {
                    if (oJ == null) {
                        oJ = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    private boolean tB(ex exVar) {
        return exVar == null;
    }

    public void tB() {
        oJ("blind_mode_status", true, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.9
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return ex.ZYk().oJ("blind_mode_status");
            }
        });
    }

    public void ZYk(final ex exVar) {
        if (tB(exVar)) {
            return;
        }
        exVar.oJ("show_backup_endcard");
        si.Pfn().oJ(new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.21
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return exVar;
            }
        });
    }

    public static void oJ(final cY cYVar) {
        if (cYVar == null) {
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        oJ("bidding_receive", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("reveice_ts", currentTimeMillis);
                if (cYVar.TxP() == 3) {
                    jSONObject.put("is_icon_only", cYVar.Xe() ? 1 : 0);
                }
                return ex.ZYk().oJ("bidding_receive").ZYk(jSONObject.toString());
            }
        });
    }

    public void ZYk(final String str) {
        oJ("close_playable_test_tool", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.3
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return ex.ZYk().oJ("close_playable_test_tool").ZYk(jSONObject.toString());
            }
        });
    }

    public static void ZYk() {
        ofl.tB(new so("showFailLog") { // from class: com.bytedance.sdk.openadsdk.awB.tB.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    tB.oJ().oJ("show_fail_log", new JSONObject());
                } catch (Throwable th2) {
                    QSm.tB("StatsLogManager", th2.getMessage());
                }
            }
        });
    }

    public static void ZYk(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                final ex ZYk = ex.ZYk().oJ(str).ZYk(str2);
                si.Pfn().oJ(new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.13
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        return ex.this;
                    }
                }, false);
            }
        } catch (Throwable th2) {
            QSm.tB("StatsLogManager", th2.getMessage());
        }
    }

    public static void oJ(cY cYVar, final long j10) {
        if (cYVar == null) {
            return;
        }
        oJ("bidding_load", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.12
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j10);
                return ex.ZYk().oJ("bidding_load").ZYk(jSONObject.toString());
            }
        });
    }

    public static void oJ(final String str, final com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar) {
        if (oJVar == null) {
            return;
        }
        oJ(str, false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.17
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject tB = com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.tB();
                if (tB == null) {
                    tB = new JSONObject();
                }
                com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.tB ex = com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.ex();
                if (ex != null) {
                    ex.oJ(tB);
                }
                return ex.ZYk().oJ(str).oJ(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.oJ().TxP()).ZYk(tB.toString());
            }
        });
    }

    public static void oJ(final cY cYVar, final JSONObject jSONObject) {
        if (HyG.oJ(cYVar) == null || TextUtils.isEmpty(cYVar.PQw())) {
            return;
        }
        oJ("download_gecko_end", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.19
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("url", cY.this.Oof());
                jSONObject2.put("channel_name", cY.this.PQw());
                jSONObject2.put("data", jSONObject);
                return ex.ZYk().oJ("download_gecko_end").oJ(cY.this.TxP()).ZYk(jSONObject2.toString());
            }
        });
    }

    public void oJ(final ex exVar) {
        if (tB(exVar)) {
            return;
        }
        exVar.oJ("express_ad_render");
        si.Pfn().oJ(new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.20
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return exVar;
            }
        });
    }

    public void oJ(final String str) {
        oJ("click_playable_test_tool", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.2
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                } catch (Throwable unused) {
                }
                return ex.ZYk().oJ("click_playable_test_tool").ZYk(jSONObject.toString());
            }
        });
    }

    public void oJ(final String str, final int i10, final String str2) {
        oJ("use_playable_test_tool_error", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.4
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("playable_url", str);
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                    jSONObject.put("error_message", str2);
                } catch (Throwable unused) {
                }
                return ex.ZYk().oJ("use_playable_test_tool_error").ZYk(jSONObject.toString());
            }
        });
    }

    public void oJ(final long j10, final long j11) {
        final long j12 = j11 - j10;
        oJ("general_label", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.5
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                int i10 = !WcQ.ZYk.get();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j10);
                    jSONObject.put("endtime", j11);
                    jSONObject.put("start_type", i10);
                } catch (Throwable unused) {
                }
                return ex.ZYk().oJ("general_label").so(String.valueOf(j12)).ZYk(jSONObject.toString());
            }
        });
    }

    public void oJ(final String str, final JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            return;
        }
        oJ(str, false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.7
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return ex.ZYk().oJ(str).ZYk(jSONObject.toString());
            }
        });
    }

    public void oJ(final String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        oJ(str, false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.8
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                return ex.ZYk().oJ(str).ZYk(str2);
            }
        });
    }

    public void oJ(final JSONObject jSONObject) {
        if (jSONObject == null) {
            QSm.oJ("adRevenuePangle", "You must pass adRevenue json to pangle");
            return;
        }
        Object opt = jSONObject.opt("device_ad_mediation_platform");
        if (!(opt instanceof String) || TextUtils.isEmpty((String) opt)) {
            QSm.oJ("adRevenuePangle", "You must pass device_ad_mediation_platform to pangle");
            return;
        }
        QSm.oJ("adRevenuePangle", "pangle", "You successfully passed the parameters to pangle. The parameters are:", jSONObject);
        oJ("ad_revenue", true, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.10
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_EVENT, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME);
                    jSONObject.put("uuid", BTZ.tB(si.oJ()));
                    String str = "";
                    if (BTZ.oJ(si.oJ()) != null) {
                        str = BTZ.oJ(si.oJ());
                    }
                    jSONObject.put("device_id", str);
                    jSONObject.put("platform", "android");
                    jSONObject.put("partner", "PangleSDK");
                } catch (Throwable th2) {
                    th2.getMessage();
                }
                return ex.ZYk().oJ("ad_revenue").ZYk(jSONObject.toString());
            }
        });
    }

    public static long oJ(File file) {
        if (file.isFile()) {
            return file.length();
        }
        long j10 = 0;
        for (File file2 : file.listFiles()) {
            j10 += oJ(file2);
        }
        return j10;
    }

    public static void oJ(String str, boolean z10, ZYk zYk) {
        oJ(str, z10, 100, zYk);
    }

    public static void oJ(String str, boolean z10, int i10, ZYk zYk) {
        int oJ2 = PiB.ib().oJ(str, i10);
        if (TextUtils.isEmpty(str) || oJ2 == 0 || zYk == null) {
            return;
        }
        boolean z11 = oJ2 == 100;
        if (!z11) {
            z11 = ((int) ((Math.random() * 100.0d) + 1.0d)) <= oJ2;
        }
        if (z11) {
            si.Pfn().oJ(zYk, z10);
        }
    }

    public static void oJ(long j10, long j11, final String str, final int i10) {
        if (j10 == 0) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        final long j12 = elapsedRealtime - j10;
        final long j13 = elapsedRealtime - j11;
        final long j14 = j11 - j10;
        oJ("ad_show_cost_time", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.14
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", j12);
                jSONObject.put("renderDuration", j13);
                jSONObject.put("showToRenderDuration", j14);
                jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, str);
                jSONObject.put("renderType", i10);
                return ex.ZYk().oJ("ad_show_cost_time").ZYk(jSONObject.toString());
            }
        });
    }

    public static void oJ(int i10, String str) {
        oJ(i10, str, 0, (String) null);
    }

    public static void oJ(final int i10, final String str, final int i11, final String str2) {
        oJ("ipv6_req", false, (ZYk) new ZYk<com.bytedance.sdk.openadsdk.awB.oJ.tB>() { // from class: com.bytedance.sdk.openadsdk.awB.tB.15
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                String str3;
                JSONObject jSONObject = new JSONObject();
                int i12 = i10;
                if (i12 == 1) {
                    str3 = "success";
                } else if (i12 == -1) {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i11);
                    jSONObject.put("error_msg", str2);
                    str3 = "fail";
                } else {
                    str3 = "start";
                }
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("url", str);
                }
                jSONObject.put("status", str3);
                return ex.ZYk().oJ("ipv6_req").ZYk(jSONObject.toString());
            }
        });
    }

    public static void oJ(final String str, final boolean z10) {
        oJ("img_error_param", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.tB.16
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("is_new", z10 ? 1 : 0);
                    jSONObject.put("msg", str);
                } catch (Throwable unused) {
                }
                return ex.ZYk().oJ("img_error_param").ZYk(jSONObject.toString());
            }
        });
    }
}
