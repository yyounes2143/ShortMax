package com.bytedance.sdk.openadsdk.ex.Pfn.oJ;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.PiB;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.WcQ;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.ba;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.ex;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.jFA;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.kkU;
import com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.so;
import com.bytedance.sdk.openadsdk.ex.cFZ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static final Map<com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ, awB> oJ = Collections.synchronizedMap(new WeakHashMap());

    public static void Pfn(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2) {
        awB awb;
        if (oJVar == null || oJVar2 == null || oJVar2.kkU() <= 0 || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex != null && Pfn != null) {
            long ex2 = oJVar2.ex();
            PiB piB = new PiB();
            piB.oJ(oJVar2.tB());
            piB.ZYk(ex2);
            piB.oJ(oJVar2.kkU());
            JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
            int i10 = ex.Pfn;
            if (i10 > 0) {
                try {
                    oJ2.put("play_time", i10);
                } catch (JSONException e10) {
                    QSm.oJ("TTAD.VideoEventManager", "", e10);
                }
            }
            com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, piB);
            oJVar3.oJ(oJVar2.dLZ());
            oJ(oJVar3, "play_buffer");
        }
    }

    public static void ex(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2) {
        awB awb;
        if (oJVar == null || oJVar2 == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        ZYk zYk = new ZYk();
        zYk.oJ(oJVar2.tB());
        zYk.ZYk(ex2);
        zYk.oJ(oJVar2.Pfn());
        zYk.ZYk(oJVar2.ba());
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2), zYk);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "endcard_skip", jSONObject);
        } catch (JSONException e10) {
            QSm.oJ("TTAD.VideoEventManager", "", e10);
        }
        oJ.remove(oJVar);
    }

    public static void tB(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2) {
        awB awb;
        if (oJVar == null || oJVar2 == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        WcQ wcQ = new WcQ(oJVar2.PiB());
        wcQ.oJ(oJVar2.tB());
        wcQ.ZYk(ex2);
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, wcQ);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "play_error", jSONObject);
        } catch (JSONException e11) {
            QSm.oJ("TTAD.VideoEventManager", "", e11);
        }
    }

    public static void ZYk(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ<jFA> oJVar) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("load_video_cancel", oJVar);
    }

    public static JSONObject oJ(cY cYVar, String str, int i10, tB tBVar) {
        return oJ(cYVar, str, i10, tBVar, null);
    }

    public static void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2) {
        awB awb;
        if (oJVar == null || oJVar2 == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        if (ex2 <= 0 || ZYk <= 0) {
            return;
        }
        Pfn pfn = new Pfn();
        pfn.oJ(oJVar2.tB());
        pfn.ZYk(ex2);
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.VideoEventManager", "", e10);
            }
        }
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, pfn);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "feed_continue", jSONObject);
        } catch (JSONException e11) {
            QSm.oJ("TTAD.VideoEventManager", "", e11);
        }
    }

    public static JSONObject oJ(cY cYVar, String str, int i10, tB tBVar, awB.oJ oJVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("session_id", str);
            }
            if (i10 > 0) {
                jSONObject.put("play_type", String.valueOf(i10));
            }
            if (cYVar != null) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
                if (ib2 != null) {
                    jSONObject.put("video_resolution", ib2.jFA());
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, Long.valueOf(ib2.Pfn()));
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, ib2.dLZ());
                    jSONObject.put("player_type", tBVar.Ry());
                    jSONObject.put("video_encode_type", tBVar.WcQ() ? 1 : 0);
                }
                JSONObject jSONObject2 = tBVar.oJ() ? new JSONObject(tBVar.tB().toString()) : null;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                if (oJVar != null) {
                    jSONObject2.put("surface_texture_updated", oJVar.awB() ? 1 : 0);
                }
                jSONObject.put("pag_json_data", jSONObject2.toString());
                jSONObject.put("dp_creative_type", cYVar.GSK());
            }
        } catch (JSONException e10) {
            QSm.oJ("TTAD.VideoEventManager", "", e10);
        }
        return jSONObject;
    }

    public static void oJ(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ<kkU> oJVar) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("load_video_error", oJVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:4|(1:6)(2:24|(10:26|8|9|10|(1:12)|13|14|(1:16)|17|18)(1:27))|7|8|9|10|(0)|13|14|(0)|17|18) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005a, code lost:
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.VideoEventManager", "", r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[Catch: JSONException -> 0x004e, TryCatch #0 {JSONException -> 0x004e, blocks: (B:15:0x0044, B:17:0x0048, B:20:0x0050), top: B:29:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void oJ(com.bytedance.sdk.openadsdk.core.model.cY r11, com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ r12, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB r13) {
        /*
            if (r11 == 0) goto L78
            if (r12 == 0) goto L78
            if (r13 != 0) goto L8
            goto L78
        L8:
            java.lang.String r7 = com.bytedance.sdk.openadsdk.utils.Xe.oJ()
            boolean r0 = r13.Xe()
            r8 = 1
            if (r0 == 0) goto L16
            r0 = 3
        L14:
            r9 = r0
            goto L28
        L16:
            int r0 = r11.rQ()
            com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk r0 = com.bytedance.sdk.openadsdk.CacheDirFactory.getICacheDir(r0)
            boolean r0 = r0.oJ(r13)
            if (r0 == 0) goto L26
            r9 = r8
            goto L28
        L26:
            r0 = 2
            goto L14
        L28:
            com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB r10 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB
            long r1 = android.os.SystemClock.elapsedRealtime()
            r0 = r10
            r3 = r7
            r4 = r9
            r5 = r13
            r6 = r11
            r0.<init>(r1, r3, r4, r5, r6)
            java.util.Map<com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ, com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.awB> r0 = com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ
            r0.put(r12, r10)
            org.json.JSONObject r12 = oJ(r11, r7, r9, r13)
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.HyG.oJ(r11)
            r1 = 0
            int r2 = r13.Pfn     // Catch: org.json.JSONException -> L4e
            if (r2 <= 0) goto L50
            java.lang.String r3 = "play_time"
            r12.put(r3, r2)     // Catch: org.json.JSONException -> L4e
            goto L50
        L4e:
            r2 = move-exception
            goto L5a
        L50:
            java.lang.String r2 = "is_mute"
            boolean r3 = r13.dLZ()     // Catch: org.json.JSONException -> L4e
            r12.put(r2, r3)     // Catch: org.json.JSONException -> L4e
            goto L61
        L5a:
            java.lang.String r3 = "TTAD.VideoEventManager"
            java.lang.String r4 = ""
            com.bytedance.sdk.component.utils.QSm.oJ(r3, r4, r2)
        L61:
            com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ r2 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ
            r3 = 0
            r2.<init>(r11, r0, r12, r3)
            int r11 = r13.Ry()
            r12 = -1
            if (r11 != r12) goto L6f
            goto L70
        L6f:
            r8 = r1
        L70:
            r2.oJ(r8)
            java.lang.String r11 = "play_start"
            oJ(r2, r11)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.core.model.cY, com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ex(tB tBVar) {
        return new File(tBVar.Pfn(), tBVar.si()).getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long tB(tB tBVar) {
        if (tBVar == null) {
            return 0L;
        }
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk jr2 = tBVar.WcQ() ? tBVar.jr() : tBVar.cY();
        if (jr2 != null) {
            return Double.valueOf(jr2.ba() * 1000.0d).longValue();
        }
        return 0L;
    }

    public static void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2, cFZ cfz) {
        if (oJVar == null || oJVar2 == null) {
            return;
        }
        Pfn(oJVar, oJVar2);
        awB awb = oJ.get(oJVar);
        if (awb == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        ba baVar = new ba();
        baVar.ZYk(oJVar2.tB());
        baVar.oJ(ex2);
        baVar.oJ(oJVar2.jFA());
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.VideoEventManager", "", e10);
            }
        }
        oJ(oJVar2, Pfn, oJ2);
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, baVar);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "feed_over", jSONObject, cfz);
        } catch (JSONException e11) {
            QSm.oJ("TTAD.VideoEventManager", "", e11);
        }
        oJ.remove(oJVar);
    }

    public static void oJ(Context context, com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2, cFZ cfz) {
        awB awb;
        if (context == null || oJVar == null || oJVar2 == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        if (!oJVar2.dLZ()) {
            oJ(Pfn, ex, oJVar2);
        }
        so soVar = new so();
        soVar.oJ(oJVar2.BTZ() ? 1 : 0);
        soVar.ZYk(CacheDirFactory.getICacheDir(Pfn.rQ()).ZYk(ex));
        soVar.oJ(SystemClock.elapsedRealtime() - awb.oJ());
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.VideoEventManager", "", e10);
            }
        }
        JSONObject jSONObject = null;
        jSONObject = null;
        String optString = oJ2.optString("pag_json_data", null);
        if (!TextUtils.isEmpty(optString)) {
            try {
                jSONObject = new JSONObject(optString);
            } catch (JSONException e11) {
                QSm.oJ("TTAD.VideoEventManager", "", e11);
            }
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("is_received_video_not_playing_info", oJVar2.WcQ() ? 1 : 0);
            oJ2.put("pag_json_data", jSONObject.toString());
        } catch (JSONException e12) {
            QSm.oJ("TTAD.VideoEventManager", "", e12);
        }
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, soVar);
        oJVar3.oJ(oJVar2.dLZ());
        oJ(oJVar3, "feed_play", cfz);
    }

    public static void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2) {
        awB awb;
        if (oJVar == null || oJVar2 == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        if (ex2 <= 0 || ZYk <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.cFZ cfz = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.cFZ();
        cfz.oJ(oJVar2.tB());
        cfz.ZYk(ex2);
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (Throwable th2) {
                QSm.oJ("TTAD.VideoEventManager", "", th2);
            }
        }
        oJ(oJVar2, Pfn, oJ2);
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, cfz);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "feed_pause", jSONObject);
        } catch (JSONException e10) {
            QSm.oJ("TTAD.VideoEventManager", "", e10);
        }
    }

    private static void oJ(awB.oJ oJVar, cY cYVar, JSONObject jSONObject) {
        if (cYVar != null) {
            try {
                if (cYVar.zxE() != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("speed_type", cYVar.zxE().ZYk());
                    jSONObject2.put("speed", cYVar.zxE().oJ());
                    jSONObject2.put("speed_duration", oJVar.oJ());
                    jSONObject.put("pag_json_data", jSONObject2.toString());
                }
            } catch (Throwable th2) {
                QSm.oJ("TTAD.VideoEventManager", "", th2);
            }
        }
    }

    public static void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, awB.oJ oJVar2, cFZ cfz) {
        if (oJVar == null || oJVar2 == null) {
            return;
        }
        Pfn(oJVar, oJVar2);
        awB awb = oJ.get(oJVar);
        if (awb == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        long ZYk = oJVar2.ZYk();
        long ex2 = oJVar2.ex();
        ex exVar = new ex();
        exVar.ZYk(oJVar2.tB());
        exVar.oJ(ex2);
        exVar.oJ(oJVar2.so());
        exVar.ZYk(oJVar2.jFA());
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, oJVar2);
        int i10 = ex.Pfn;
        if (i10 > 0) {
            try {
                oJ2.put("play_time", i10);
            } catch (JSONException e10) {
                QSm.oJ("TTAD.VideoEventManager", "", e10);
            }
        }
        oJ(oJVar2, Pfn, oJ2);
        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar3 = new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, exVar);
        oJVar3.oJ(oJVar2.dLZ());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", ZYk);
            jSONObject.put("percent", oJVar2.cFZ());
            oJ(oJVar3, "feed_break", jSONObject, cfz);
        } catch (JSONException e11) {
            QSm.oJ("TTAD.VideoEventManager", "", e11);
        }
    }

    public static void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk.oJ oJVar, boolean z10, String str) {
        awB awb;
        if (oJVar == null || (awb = oJ.get(oJVar)) == null) {
            return;
        }
        tB ex = awb.ex();
        cY Pfn = awb.Pfn();
        if (ex == null || Pfn == null) {
            return;
        }
        JSONObject oJ2 = oJ(Pfn, awb.ZYk(), awb.tB(), ex, null);
        try {
            int i10 = ex.Pfn;
            if (i10 > 0) {
                oJ2.put("play_time", i10);
            }
            oJ2.put("is_mute", z10 ? 1 : 0);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("from", str);
            oJ2.put("pag_json_data", jSONObject);
        } catch (JSONException e10) {
            QSm.oJ("TTAD.VideoEventManager", "", e10);
        }
        oJ(new com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ(Pfn, HyG.oJ(Pfn), oJ2, null), "mute_state_change");
    }

    private static void oJ(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar, String str) {
        oJ(oJVar, str, (JSONObject) null, (cFZ) null);
    }

    private static void oJ(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar, String str, JSONObject jSONObject) {
        oJ(oJVar, str, jSONObject, (cFZ) null);
    }

    private static void oJ(com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar, String str, cFZ cfz) {
        oJ(oJVar, str, (JSONObject) null, cfz);
    }

    private static void oJ(final com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ oJVar, String str, final JSONObject jSONObject, final cFZ cfz) {
        if (oJVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (oJVar.Pfn() && !TextUtils.isEmpty(oJVar.ZYk())) {
            String ZYk = oJVar.ZYk();
            ZYk.hashCode();
            if (ZYk.equals("stream") || ZYk.equals("embeded_ad")) {
                str = "customer_".concat(String.valueOf(str));
            }
        }
        final String str2 = str;
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), oJVar.oJ(), oJVar.ZYk(), str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.1
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                cFZ cfz2;
                try {
                    JSONObject tB = com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.tB();
                    if (com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.ex() != null) {
                        com.bytedance.sdk.openadsdk.ex.Pfn.ZYk.oJ.this.ex().oJ(tB);
                    }
                    if (("feed_play".equals(str2) || "feed_over".equals(str2) || "feed_break".equals(str2)) && (cfz2 = cfz) != null) {
                        cfz2.oJ(tB);
                    }
                    jSONObject.put("ad_extra_data", tB.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    private static void oJ(final cY cYVar, final tB tBVar, final awB.oJ oJVar) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("pangle_video_play_state", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.ex.Pfn.oJ.oJ.2
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                int i10;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", oJ.tB(tB.this));
                jSONObject.put("player_duration", oJVar.ex());
                jSONObject.put("cache_path_type", CacheDirFactory.getCacheType());
                jSONObject.put("url", tB.this.eZI());
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, oJ.ex(tB.this));
                jSONObject.put("player_type", tB.this.Ry());
                com.bytedance.sdk.openadsdk.awB.oJ.ex oJ2 = com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("pangle_video_play_state");
                cY cYVar2 = cYVar;
                if (cYVar2 != null) {
                    i10 = cYVar2.qnr();
                } else {
                    i10 = 0;
                }
                return oJ2.oJ(i10).ZYk(jSONObject.toString());
            }
        });
    }
}
