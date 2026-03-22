package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.wd;
import com.bytedance.vodsetting.Module;
import com.inmobi.sdk.InMobiSdk;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.pgl.ssdk.ces.out.DungeonFlag;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cY implements Id<com.bytedance.sdk.openadsdk.ex.oJ> {
    private final Context oJ;

    /* loaded from: classes3.dex */
    public static class ZYk {
        public final boolean ZYk;
        public final int oJ;
        public final com.bytedance.sdk.openadsdk.core.model.UN tB;

        private ZYk(int i10, boolean z10, com.bytedance.sdk.openadsdk.core.model.UN un2) {
            this.oJ = i10;
            this.ZYk = z10;
            this.tB = un2;
        }

        public static ZYk oJ(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int optInt = jSONObject.optInt(Module.ResponseKey.Code);
            boolean optBoolean = jSONObject.optBoolean("verify");
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            com.bytedance.sdk.openadsdk.core.model.UN un2 = new com.bytedance.sdk.openadsdk.core.model.UN();
            if (optJSONObject != null) {
                try {
                    un2.oJ(optJSONObject.optInt("reason"));
                    un2.ZYk(optJSONObject.optInt("corp_type"));
                    un2.tB(optJSONObject.optInt(CampaignEx.JSON_KEY_REWARD_AMOUNT));
                    un2.oJ(optJSONObject.optString(CampaignEx.JSON_KEY_REWARD_NAME));
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", th2.getMessage());
                }
            }
            return new ZYk(optInt, optBoolean, un2);
        }
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        final String Pfn;
        final long ZYk;

        /* renamed from: ba  reason: collision with root package name */
        final int f13124ba;
        final String cFZ;
        final int ex;
        final String jFA;
        final ArrayList<Integer> kkU;
        final int oJ;
        @Nullable

        /* renamed from: so  reason: collision with root package name */
        public final com.bytedance.sdk.openadsdk.core.model.oJ f13125so;
        final long tB;

        private oJ(String str, int i10, int i11, String str2, int i12, String str3, @Nullable com.bytedance.sdk.openadsdk.core.model.oJ oJVar, long j10, long j11, ArrayList<Integer> arrayList) {
            this.oJ = i10;
            this.ex = i11;
            this.Pfn = str2;
            this.cFZ = str3;
            this.f13125so = oJVar;
            this.jFA = str;
            this.f13124ba = i12;
            this.ZYk = j10;
            this.tB = j11;
            this.kkU = arrayList;
        }

        public static oJ oJ(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.HL hl2) {
            String optString = jSONObject.optString("did");
            int optInt = jSONObject.optInt("processing_time_ms");
            long optLong = jSONObject.optLong("s_receive_ts");
            long optLong2 = jSONObject.optLong("s_send_ts");
            int optInt2 = jSONObject.optInt("status_code");
            String optString2 = jSONObject.optString(CampaignEx.JSON_KEY_DESC);
            String optString3 = jSONObject.optString("request_id");
            int optInt3 = jSONObject.optInt("reason");
            Pair<com.bytedance.sdk.openadsdk.core.model.oJ, ArrayList<Integer>> oJ = com.bytedance.sdk.openadsdk.core.ZYk.oJ(jSONObject, adSlot, hl2);
            if (oJ == null) {
                return new oJ(optString, optInt, optInt2, optString2, optInt3, optString3, null, optLong, optLong2, null);
            }
            return new oJ(optString, optInt, optInt2, optString2, optInt3, optString3, (com.bytedance.sdk.openadsdk.core.model.oJ) oJ.first, optLong, optLong2, (ArrayList) oJ.second);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cY(Context context) {
        this.oJ = context;
    }

    private boolean Pfn(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return jSONObject.optString("message").equalsIgnoreCase("success");
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.bytedance.sdk.openadsdk.core.cY] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r28v0, types: [com.bytedance.sdk.openadsdk.core.cY] */
    public void ZYk(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.HL hl2, final int i10, final Id.oJ oJVar) {
        Map<String, Object> map;
        com.bytedance.sdk.component.cFZ.ZYk oJ2;
        com.bytedance.sdk.component.cFZ.ZYk zYk;
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar2;
        ?? r12 = this;
        if (!si.ex().YF()) {
            oJVar.oJ(40060, so.oJ(40060));
            return;
        }
        boolean tB = com.bytedance.sdk.openadsdk.oq.oJ.tB();
        if (!tB) {
            WcQ.ba();
        }
        final com.bytedance.sdk.openadsdk.core.model.tB tBVar = new com.bytedance.sdk.openadsdk.core.model.tB();
        tBVar.oJ(adSlot);
        if (!com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
            if (oJVar != null) {
                oJVar.oJ(1000, "Ad request is temporarily paused, Please contact your AM");
                tBVar.oJ(1000);
                com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
            }
        } else if (!si.ex().wd()) {
            if (oJVar != null) {
                oJVar.oJ(-16, so.oJ(-16));
                tBVar.oJ(1001);
                com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
            }
        } else if (oJVar != null) {
            if (r12.ex(adSlot.getCodeId())) {
                oJVar.oJ(-8, so.oJ(-8));
            } else if (!TextUtils.isEmpty(adSlot.getBidAdm()) && !hl2.f13181ba) {
                tBVar.ZYk(2);
                tBVar.oJ(adSlot.getBidAdm());
                if (com.bytedance.sdk.component.utils.awB.ex()) {
                    com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.ZYk.oJ(adSlot.getBidAdm());
                }
                if (si.ex().Qu() && nke.oJ().ex() == 1) {
                    HyG.oJ("Pangle_Debug_Mode", adSlot.getBidAdm(), r12.oJ);
                }
                try {
                    JSONObject oJ3 = r12.oJ(new JSONObject(adSlot.getBidAdm()));
                    if (oJ3 == null) {
                        tBVar.tB(12);
                        r12.oJ(oJVar, tBVar);
                        return;
                    }
                    oJ oJ4 = oJ.oJ(oJ3, adSlot, hl2);
                    tBVar.oJ(oJ4.kkU);
                    BTZ.oJ(oJ4.jFA);
                    int i11 = oJ4.ex;
                    if (i11 != 20000) {
                        oJVar.oJ(i11, oJ4.Pfn);
                        tBVar.oJ(oJ4.ex);
                        tBVar.tB(9);
                        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.model.oJ oJVar3 = oJ4.f13125so;
                    if (oJVar3 == null) {
                        tBVar.tB(13);
                        r12.oJ(oJVar, tBVar);
                        return;
                    }
                    if (oJVar3.ex() != null && !oJ4.f13125so.ex().isEmpty()) {
                        com.bytedance.sdk.openadsdk.awB.tB.oJ(oJ4.f13125so.ex().get(0));
                    }
                    r12.oJ(oJ4.f13125so);
                    if (r12.oJ(oJ4.f13125so, oJVar)) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(oJ4.f13125so);
                    oJVar.oJ(oJ4.f13125so, tBVar);
                    Map<String, com.bytedance.sdk.openadsdk.core.model.cY> oJ5 = com.bytedance.sdk.openadsdk.core.model.oJ.oJ(oJ4.f13125so);
                    if (oJ5 != null) {
                        com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(oJ5);
                    }
                    r12.ZYk(oJ4.f13125so);
                    com.bytedance.sdk.openadsdk.core.ex.oJ.oJ().oJ(oJ4.f13125so);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.oJ("NetApiImpl", "get ad error: ", th2);
                    tBVar.tB(14);
                    tBVar.ZYk(th2.getMessage());
                    r12.oJ(oJVar, tBVar);
                }
            } else {
                if (hl2 != null && !TextUtils.isEmpty(hl2.BTZ)) {
                    try {
                        JSONObject oJ6 = r12.oJ(new JSONObject(hl2.BTZ));
                        if (oJ6 != null) {
                            oJ oJ7 = oJ.oJ(oJ6, adSlot, hl2);
                            QSm qSm = hl2.PiB;
                            if (qSm != null && (oJVar2 = oJ7.f13125so) != null && qSm.oJ(oJVar2)) {
                                com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(oJVar2);
                                oJVar.oJ(oJVar2, tBVar);
                                return;
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
                JSONObject oJ8 = oJ(adSlot, hl2, i10);
                if (oJ8 == null) {
                    oJVar.oJ(-9, so.oJ(-9));
                    tBVar.oJ(-9);
                    com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
                    return;
                }
                if (si.ex().Qu() && nke.oJ().ex() == 1) {
                    HyG.oJ("Pangle_Debug_Mode", oJ8.toString(), r12.oJ);
                }
                String oJ9 = HyG.oJ("/api/ad/union/sdk/get_ads/", true, false);
                final com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
                try {
                    ZYk2.ZYk(com.bytedance.sdk.openadsdk.so.ex.oJ(ZYk2, oJ9));
                } catch (Exception unused2) {
                }
                ZYk2.oJ(oJ8.toString(), si.ex().awB());
                Map<String, String> oJ10 = com.bytedance.sdk.openadsdk.core.jFA.tB.oJ(oJ9, oJ8.toString());
                if (oJ10 != null && oJ10.size() > 0) {
                    for (String str : oJ10.keySet()) {
                        try {
                            ZYk2.ZYk(str, oJ10.get(str));
                        } catch (Exception e10) {
                            com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e10.getMessage());
                        }
                    }
                }
                try {
                    ZYk2.ZYk(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
                    r12.oJ(ZYk2, oJ8);
                } catch (Exception unused3) {
                }
                final wd ZYk3 = wd.ZYk();
                final Map<String, Object> requestExtraMap = adSlot.getRequestExtraMap();
                boolean z10 = jFA.ZYk().si() && requestExtraMap != 0;
                if (z10) {
                    requestExtraMap.put("pgad_start", ZYk3);
                }
                ZYk2.oJ(10);
                ZYk2.oJ("get_ad");
                com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.8
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar4 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar4.ZYk("get_ad");
                        oJVar4.tB(adSlot.getCodeId());
                        oJVar4.ex(HyG.tB(adSlot.getDurationSlotType()));
                        return oJVar4;
                    }
                });
                if (com.bytedance.sdk.component.utils.awB.ex()) {
                    Thread.currentThread().getName();
                }
                if (!tB) {
                    final boolean z11 = z10;
                    ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.cY.9
                        @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                        public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar2, com.bytedance.sdk.component.cFZ.ZYk zYk2) {
                            cY.this.oJ(tBVar2, zYk2, z11, requestExtraMap, ZYk3, adSlot, tBVar, oJVar, hl2, i10);
                        }

                        @Override // com.bytedance.sdk.component.cFZ.oJ.ZYk
                        public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar2, IOException iOException, com.bytedance.sdk.component.cFZ.ZYk zYk2) {
                            cY.this.oJ(ZYk2, iOException, zYk2, adSlot, z11, requestExtraMap, oJVar, tBVar);
                            if (tBVar2 != null) {
                                com.bytedance.sdk.openadsdk.utils.oq.oJ(tBVar2.ex());
                            }
                        }
                    });
                    r12 = 0;
                } else {
                    try {
                        oJ2 = ZYk2.oJ();
                        if (oJ2 == null) {
                            oJ2 = new com.bytedance.sdk.component.cFZ.ZYk(false, 5001, "response is null, content type is not support!!", null, "REQUEST_BODY_NULL", 1L, 1L);
                        }
                        zYk = oJ2;
                    } catch (Throwable th3) {
                        th = th3;
                        map = requestExtraMap;
                        r12 = 0;
                    }
                    try {
                        if (zYk.ba()) {
                            oJ2 = requestExtraMap;
                            r12 = 0;
                            oJ(ZYk2, zYk, z10, requestExtraMap, ZYk3, adSlot, tBVar, oJVar, hl2, i10);
                        } else {
                            Map<String, Object> map2 = requestExtraMap;
                            r12 = 0;
                            oJ(ZYk2, new IOException(zYk.ZYk()), zYk, adSlot, z10, map2, oJVar, tBVar);
                            com.bytedance.sdk.openadsdk.utils.oq.oJ(ZYk2.ex());
                            oJ2 = map2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        r12 = r12;
                        map = oJ2;
                        oJ(ZYk2, new IOException(th.getMessage()), new com.bytedance.sdk.component.cFZ.ZYk(false, 5002, "execute method throw exception", null, "REQUEST_BODY_EXCEPTION", 1L, 1L), adSlot, z10, map, oJVar, tBVar);
                        com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(r12);
                    }
                }
                com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().oJ(r12);
            }
        }
    }

    @DungeonFlag
    private void ba(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", HyG.ba());
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, HyG.cFZ());
            jSONObject.put("version", HyG.so());
        } catch (Exception unused) {
        }
    }

    private boolean ex(String str) {
        if (com.bytedance.sdk.openadsdk.core.cFZ.ZYk.oJ()) {
            return true;
        }
        if (com.bytedance.sdk.openadsdk.core.cFZ.ZYk.oJ(str)) {
            String ZYk2 = com.bytedance.sdk.openadsdk.core.cFZ.ZYk.ZYk();
            if (!TextUtils.isEmpty(ZYk2)) {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(ZYk2, System.currentTimeMillis());
            }
            return true;
        }
        return false;
    }

    private boolean tB(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    private byte[] Pfn(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    } catch (IOException e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e11) {
                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e11.toString());
            }
            try {
                gZIPOutputStream.write(str.getBytes("utf-8"));
                try {
                    gZIPOutputStream.close();
                } catch (IOException e12) {
                    com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e12.toString());
                }
                bArr = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException e13) {
                e = e13;
                gZIPOutputStream2 = gZIPOutputStream;
                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e.toString());
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e14) {
                        com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e14.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    bArr = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                }
                return bArr;
            } catch (Throwable th3) {
                th = th3;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e15) {
                        com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e15.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e16) {
                        com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e16.toString());
                    }
                }
                throw th;
            }
        } catch (IOException e17) {
            e = e17;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
        return bArr;
    }

    @DungeonFlag
    private JSONObject tB() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", jFA.ZYk().ex());
            jSONObject.put("name", jFA.ZYk().so());
            ba(jSONObject);
            Context oJ2 = si.oJ();
            String str = "";
            if (oJ2 != null) {
                str = oJ2.getPackageResourcePath();
            }
            jSONObject.put("package_install_path", str);
            int i10 = 0;
            jSONObject.put("is_paid_app", false);
            jSONObject.put("apk_sign", com.bytedance.sdk.openadsdk.common.ZYk.cFZ());
            jSONObject.put("app_running_time", (System.currentTimeMillis() - WcQ.oJ()) / 1000);
            jSONObject.put("fmwname", DeviceUtils.kkU());
            jSONObject.put("is_init", WcQ.Pfn() ? 1 : 0);
            if (oJ2 != null) {
                int rotation = ((WindowManager) oJ2.getSystemService("window")).getDefaultDisplay().getRotation();
                if (rotation == 0) {
                    i10 = 1;
                } else if (rotation == 1) {
                    i10 = 3;
                } else if (rotation == 2) {
                    i10 = 2;
                } else if (rotation == 3) {
                    i10 = 4;
                }
                jSONObject.put("orientation_support", new JSONArray().put(i10));
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @NonNull
    private Map<String, String> ex(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
        if (tB(jSONObject)) {
            hashMap.put("Content-Encoding", "union_sdk_encode");
        }
        return hashMap;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:1|(2:2|3)|(13:8|9|(1:(1:14))(2:35|(1:(1:40))(2:41|(1:46)))|15|16|(1:19)|21|(1:24)|25|(1:27)|28|(1:30)|32)|47|9|(0)(0)|15|16|(1:19)|21|(1:24)|25|(0)|28|(0)|32) */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010d A[Catch: all -> 0x001e, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x000b, B:5:0x0012, B:8:0x001b, B:15:0x002c, B:17:0x0030, B:34:0x0076, B:37:0x00ee, B:38:0x00fe, B:40:0x010d, B:41:0x011a, B:43:0x0136, B:21:0x003a, B:23:0x003e, B:27:0x0047, B:29:0x004b, B:11:0x0021), top: B:50:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0136 A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x000b, B:5:0x0012, B:8:0x001b, B:15:0x002c, B:17:0x0030, B:34:0x0076, B:37:0x00ee, B:38:0x00fe, B:40:0x010d, B:41:0x011a, B:43:0x0136, B:21:0x003a, B:23:0x003e, B:27:0x0047, B:29:0x004b, B:11:0x0021), top: B:50:0x000b }] */
    @com.pgl.ssdk.ces.out.DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject oJ(com.bytedance.sdk.openadsdk.AdSlot r11, com.bytedance.sdk.openadsdk.core.model.HL r12, int r13) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.cY.oJ(com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.model.HL, int):org.json.JSONObject");
    }

    public static JSONArray tB(String str) {
        try {
            Set<com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ> oJ2 = com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ().oJ(str);
            if (oJ2 != null && oJ2.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJVar : oJ2) {
                    if (oJVar != null && !TextUtils.isEmpty(oJVar.Pfn())) {
                        JSONObject jSONObject = new JSONObject();
                        String[] split = oJVar.oJ().split("_");
                        if (split.length == 2) {
                            jSONObject.put("id", split[1]);
                            jSONObject.put("md5", oJVar.ZYk());
                            jSONArray.put(jSONObject);
                        }
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("NetApiImpl", "getUgenParentTplIds: ", e10);
            return null;
        }
    }

    private void oJ(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.HL hl2) {
        JSONArray jSONArray;
        if (hl2 != null && (jSONArray = hl2.Pfn) != null) {
            try {
                jSONObject.put("source_temai_product_ids", jSONArray);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.HL hl2, int i10, QSm qSm) {
        if (!hl2.f13181ba && TextUtils.isEmpty(adSlot.getBidAdm())) {
            if (!oJ(hl2) && qSm != null) {
                String oJ2 = qSm.oJ();
                if (!TextUtils.isEmpty(oJ2)) {
                    hl2.BTZ = oJ2;
                    hl2.PiB = qSm;
                }
            }
            oJ(adSlot, hl2, i10, (Id.oJ) qSm);
            return;
        }
        oJ(adSlot, hl2, i10, (Id.oJ) qSm);
    }

    private boolean oJ(com.bytedance.sdk.openadsdk.core.model.HL hl2) {
        if (hl2 != null) {
            return hl2.ZYk == 2 || hl2.tB == 2 || hl2.ex == 2;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.HL hl2, final int i10, Id.oJ oJVar) {
        boolean z10 = true;
        if (hl2 != null && (hl2.ZYk == 2 || hl2.tB == 2 || hl2.ex == 2)) {
            adSlot.setPreload(true);
        }
        final com.bytedance.sdk.openadsdk.core.oJ.oJ oJVar2 = new com.bytedance.sdk.openadsdk.core.oJ.oJ(oJVar, adSlot, (adSlot.isPreload() || hl2 == null || hl2.f13181ba) ? false : false);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            WcQ.ZYk().post(new com.bytedance.sdk.component.so.so("getAd") { // from class: com.bytedance.sdk.openadsdk.core.cY.1
                @Override // java.lang.Runnable
                public void run() {
                    cY.this.ZYk(adSlot, hl2, i10, oJVar2);
                }
            });
        } else {
            ZYk(adSlot, hl2, i10, oJVar2);
        }
        if (com.bytedance.sdk.openadsdk.oq.oJ.tB()) {
            WcQ.cFZ();
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        com.bytedance.sdk.openadsdk.core.model.cY ba2;
        if (oJVar == null || (ba2 = oJVar.ba()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.settings.PiB.Ln(ba2.dZS());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.cFZ.ZYk.ex exVar, IOException iOException, com.bytedance.sdk.component.cFZ.ZYk zYk, final AdSlot adSlot, boolean z10, Map<String, Object> map, Id.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
        String str;
        int i10;
        com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.10
            @Override // com.bytedance.sdk.openadsdk.si.ex
            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar2 = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                oJVar2.ZYk("get_ad");
                oJVar2.tB(adSlot.getCodeId());
                oJVar2.ex(HyG.tB(adSlot.getDurationSlotType()));
                oJVar2.oJ(BuildConfig.VERSION_NAME);
                return oJVar2;
            }
        });
        if (zYk != null) {
            str = zYk.ZYk();
        } else if (iOException != null) {
            str = iOException.getMessage();
        } else {
            str = "";
        }
        wd ZYk2 = wd.ZYk();
        if (z10) {
            map.put("pgad_end", Long.valueOf(ZYk2.oJ));
        }
        if (si.ex().Qu() && nke.oJ().ex() == 1) {
            HyG.oJ("Pangle_Debug_Mode", iOException != null ? iOException.getMessage() : null, this.oJ);
        }
        if (zYk != null) {
            i10 = zYk.oJ();
        } else {
            i10 = (iOException == null || !(iOException instanceof SocketTimeoutException)) ? 601 : 602;
        }
        if (oJVar != null) {
            oJVar.oJ(i10, str);
        }
        tBVar.oJ(i10);
        tBVar.tB(10);
        tBVar.ZYk(str);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
        com.bytedance.sdk.openadsdk.ex.oJ.ba.tB.incrementAndGet();
        com.bytedance.sdk.openadsdk.ex.oJ.ba.oJ.incrementAndGet();
        com.bytedance.sdk.openadsdk.ex.oJ.ba.cFZ.incrementAndGet();
        com.bytedance.sdk.openadsdk.ex.oJ.ba.Pfn();
        com.bytedance.sdk.openadsdk.ex.oJ.ba.oJ(i10, str);
        com.bytedance.sdk.openadsdk.ex.oJ.ba.tB();
        com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("get_ad", exVar.ex(), i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0150 A[Catch: all -> 0x0062, Exception -> 0x01ae, TryCatch #0 {Exception -> 0x01ae, blocks: (B:57:0x0141, B:59:0x0149, B:62:0x0150, B:64:0x015d, B:66:0x016e, B:65:0x0166, B:67:0x0171), top: B:91:0x0141 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01ce A[Catch: all -> 0x0062, TryCatch #1 {all -> 0x0062, blocks: (B:9:0x0031, B:11:0x004c, B:13:0x0056, B:16:0x0068, B:18:0x006e, B:20:0x007f, B:22:0x0093, B:24:0x00a0, B:26:0x00a7, B:28:0x00b8, B:27:0x00b1, B:30:0x00c9, B:32:0x00cd, B:34:0x00de, B:37:0x00e5, B:39:0x00f0, B:41:0x00f4, B:42:0x00f9, B:50:0x010d, B:52:0x0115, B:54:0x0121, B:57:0x0141, B:59:0x0149, B:62:0x0150, B:64:0x015d, B:66:0x016e, B:65:0x0166, B:67:0x0171, B:68:0x01ae, B:70:0x01ce, B:71:0x01d5, B:73:0x01dd, B:76:0x01eb), top: B:93:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB r23, com.bytedance.sdk.component.cFZ.ZYk r24, boolean r25, java.util.Map<java.lang.String, java.lang.Object> r26, com.bytedance.sdk.openadsdk.utils.wd r27, final com.bytedance.sdk.openadsdk.AdSlot r28, com.bytedance.sdk.openadsdk.core.model.tB r29, com.bytedance.sdk.openadsdk.core.Id.oJ r30, com.bytedance.sdk.openadsdk.core.model.HL r31, int r32) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.cY.oJ(com.bytedance.sdk.component.cFZ.ZYk.tB, com.bytedance.sdk.component.cFZ.ZYk, boolean, java.util.Map, com.bytedance.sdk.openadsdk.utils.wd, com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.model.tB, com.bytedance.sdk.openadsdk.core.Id$oJ, com.bytedance.sdk.openadsdk.core.model.HL, int):void");
    }

    private void ZYk(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        List<com.bytedance.sdk.openadsdk.core.model.cY> ex = oJVar.ex();
        if (ex == null || ex.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < ex.size(); i10++) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = ex.get(i10);
            if (cYVar != null && cYVar.bgF() == null) {
                oJ("", 0, 0, cYVar.Zjw(), cYVar);
                oJ("", 0, 0, cYVar.XSu(), cYVar);
                List<com.bytedance.sdk.openadsdk.core.model.Ry> yB = cYVar.yB();
                if (yB != null && yB.size() > 0) {
                    for (int i11 = 0; i11 < yB.size(); i11++) {
                        oJ(cYVar, yB.get(i11));
                    }
                }
                if (cYVar.ib() != null) {
                    oJ(cYVar.ib().kkU(), cYVar.ib().tB(), cYVar.ib().ZYk(), (com.bytedance.sdk.openadsdk.core.model.Ry) null, cYVar);
                }
            }
        }
    }

    @DungeonFlag
    private JSONObject ZYk(@NonNull String str, List<FilterWord> list, JSONObject jSONObject, String str2, String str3) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("timestamp", System.currentTimeMillis());
            jSONObject3.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            JSONObject jSONObject4 = new JSONObject(str);
            jSONObject4.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            jSONObject3.put(GearStrategyConsts.EV_EXTRA_INFO, jSONObject4.toString());
            jSONObject3.put("filter_words", oJ(list));
            jSONObject3.put("dislike_source", str3);
            if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().Jm() && jSONObject != null && !TextUtils.isEmpty(str2)) {
                jSONObject3.put("creative_info", com.bytedance.sdk.component.utils.oJ.oJ(jSONObject).toString());
                jSONObject3.put("feedback_type", 1);
                jSONObject3.put("user_description", str2);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject3);
            jSONObject2.put("actions", jSONArray);
        } catch (Exception unused) {
        }
        return jSONObject2;
    }

    @NonNull
    private Map<String, String> ZYk() {
        HashMap hashMap = new HashMap();
        hashMap.put(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/octet-stream;tt-data=a");
        return hashMap;
    }

    private static String ZYk(AdSlot adSlot) {
        String PiB = jFA.ZYk().PiB();
        if (adSlot == null) {
            return TextUtils.isEmpty(PiB) ? "" : PiB;
        }
        String userData = adSlot.getUserData();
        if (TextUtils.isEmpty(PiB)) {
            return userData;
        }
        if (TextUtils.isEmpty(userData)) {
            return PiB;
        }
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = new JSONArray(userData);
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if (jSONObject != null) {
                    hashSet.add(jSONObject.optString("name", null));
                }
            }
            try {
                JSONArray jSONArray2 = new JSONArray(PiB);
                int length2 = jSONArray2.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i11);
                    if (jSONObject2 != null && !hashSet.contains(jSONObject2.optString("name", null))) {
                        jSONArray.put(jSONObject2);
                    }
                }
                return jSONArray.toString();
            } catch (Throwable unused) {
                return userData;
            }
        } catch (Throwable unused2) {
            return PiB;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String ZYk(int i10, String str) {
        Object obj;
        if (i10 == 3) {
            return com.bytedance.sdk.component.utils.oJ.tB(str);
        }
        if (i10 == 4) {
            Pair<Integer, String> decryptType4 = PangleEncryptManager.decryptType4(str);
            if (decryptType4 != null && (obj = decryptType4.second) != null) {
                String str2 = (String) obj;
                Xe.oJ(true);
                return str2;
            }
            Xe.oJ(false);
            Xe.oJ(2, PangleEncryptConstant.CryptDataScene.GET_ADS, decryptType4 != null ? ((Integer) decryptType4.first).intValue() : 0);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.core.Id
    public com.bytedance.sdk.openadsdk.ex.Pfn ZYk(JSONObject jSONObject) {
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        String str = "error unknown";
        long currentTimeMillis = System.currentTimeMillis();
        if (!com.bytedance.sdk.openadsdk.core.settings.jFA.oJ() || !si.ex().YF() || jSONObject == null || jSONObject.length() <= 0) {
            return null;
        }
        com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
        int i11 = 0;
        try {
            JSONObject oJ2 = oJ(PangleEncryptConstant.CryptDataScene.STATS_LOG, jSONObject);
            ZYk2.oJ(oJ2.toString(), si.ex().awB());
            ZYk2.ZYk(HyG.ex("/api/ad/union/sdk/stats/batch/"));
            oJ(ZYk2, oJ2);
            ZYk2.ZYk(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
            if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().UK()) {
                ZYk2.ZYk("_disable_retry", "1");
            }
            com.bytedance.sdk.component.cFZ.ZYk oJ3 = ZYk2.oJ();
            try {
            } catch (Throwable unused) {
                i10 = 0;
                z10 = false;
            }
            if (oJ3 == null) {
                return new com.bytedance.sdk.openadsdk.ex.Pfn(false, 0, "error unknown", false);
            }
            if (!oJ3.ba() || TextUtils.isEmpty(oJ3.ex())) {
                z12 = false;
                z10 = false;
            } else {
                JSONObject jSONObject2 = new JSONObject(oJ3.ex());
                int optInt = jSONObject2.optInt(Module.ResponseKey.Code, -1);
                str = jSONObject2.optString("data", "");
                z10 = true;
                boolean z13 = optInt == 20000;
                z12 = z13;
                if (optInt != 60005) {
                    z10 = false;
                    z12 = z13;
                }
            }
            try {
                i11 = oJ3.oJ();
                z11 = z12;
                if (!oJ3.ba()) {
                    str = oJ3.ZYk();
                    com.bytedance.sdk.openadsdk.utils.oq.oJ(ZYk2.ex());
                    z11 = z12;
                }
            } catch (Throwable unused2) {
                i10 = i11;
                i11 = z12 ? 1 : 0;
                z11 = i11;
                i11 = i10;
                com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.ex.oJ.oJ.ZYk, z11, i11, System.currentTimeMillis() - currentTimeMillis);
                return new com.bytedance.sdk.openadsdk.ex.Pfn(z11, i11, str, z10);
            }
            com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.ex.oJ.oJ.ZYk, z11, i11, System.currentTimeMillis() - currentTimeMillis);
            return new com.bytedance.sdk.openadsdk.ex.Pfn(z11, i11, str, z10);
        } catch (Throwable unused3) {
            com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.ex.oJ.oJ.ZYk, false, 0, System.currentTimeMillis() - currentTimeMillis);
            return new com.bytedance.sdk.openadsdk.ex.Pfn(false, 0, "error unknown", false);
        }
    }

    public static JSONArray ZYk(String str) {
        try {
            Set<String> ZYk2 = com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ZYk(str);
            if (ZYk2 != null && ZYk2.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : ZYk2) {
                    com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ2 = com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.oJ(str2);
                    if (oJ2 != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", oJ2.ZYk());
                        jSONObject.put("md5", oJ2.tB());
                        jSONArray.put(jSONObject);
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("NetApiImpl", "getParentTplIds: ", e10);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ r10, com.bytedance.sdk.openadsdk.core.Id.oJ r11) {
        /*
            r9 = this;
            r0 = 1
            r1 = 40053(0x9c75, float:5.6126E-41)
            if (r10 != 0) goto Le
            java.lang.String r10 = com.bytedance.sdk.openadsdk.core.so.oJ(r1)
            r11.oJ(r1, r10)
            return r0
        Le:
            java.util.List r10 = r10.ex()
            boolean r2 = r10.isEmpty()
            if (r2 != 0) goto L5f
            java.util.Iterator r10 = r10.iterator()
        L1c:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto L5f
            java.lang.Object r2 = r10.next()
            r5 = r2
            com.bytedance.sdk.openadsdk.core.model.cY r5 = (com.bytedance.sdk.openadsdk.core.model.cY) r5
            com.bytedance.sdk.openadsdk.core.model.ZYk r2 = r5.crS()
            java.lang.String r2 = r2.ZYk()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L45
            com.bytedance.sdk.openadsdk.core.model.ZYk r2 = r5.crS()
            java.lang.String r2 = r2.tB()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L1c
        L45:
            java.lang.String r10 = com.bytedance.sdk.openadsdk.core.so.oJ(r1)
            r11.oJ(r1, r10)
            long r3 = java.lang.System.currentTimeMillis()
            java.lang.String r6 = com.bytedance.sdk.openadsdk.utils.HyG.oJ(r5)
            com.bytedance.sdk.openadsdk.core.cY$13 r8 = new com.bytedance.sdk.openadsdk.core.cY$13
            r8.<init>()
            java.lang.String r7 = "material_error"
            com.bytedance.sdk.openadsdk.ex.tB.oJ(r3, r5, r6, r7, r8)
            return r0
        L5f:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.cY.oJ(com.bytedance.sdk.openadsdk.core.model.oJ, com.bytedance.sdk.openadsdk.core.Id$oJ):boolean");
    }

    private void oJ(String str, int i10, int i11, com.bytedance.sdk.openadsdk.core.model.Ry ry, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.jFA.ex.oJ(str).oJ(i10).ZYk(i11).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, str, null), 4);
        } else if (ry == null) {
        } else {
            com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, ry.oJ(), null), 4);
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, com.bytedance.sdk.openadsdk.core.model.Ry ry) {
        if (ry == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, ry.oJ(), new com.bytedance.sdk.component.Pfn.eZI() { // from class: com.bytedance.sdk.openadsdk.core.cY.14
            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(int i10, String str, @Nullable Throwable th2) {
            }

            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            }
        }), 4);
    }

    private void oJ(com.bytedance.sdk.component.ZYk.oJ.kkU kku, com.bytedance.sdk.openadsdk.core.model.HL hl2, wd wdVar, wd wdVar2, int i10, wd wdVar3, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str) {
        if (si.ex().bgF()) {
            JSONObject jSONObject = new JSONObject();
            long j10 = 0;
            if (hl2 != null) {
                try {
                    wd wdVar4 = hl2.kkU;
                    if (wdVar4.oJ > 0) {
                        j10 = wdVar3.oJ(wdVar4);
                        long j11 = j10;
                        oJ(kku, hl2, wdVar, wdVar2, i10, wdVar3, cYVar, str, jSONObject, false);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "load_ad_time", j11, jSONObject);
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            long j112 = j10;
            oJ(kku, hl2, wdVar, wdVar2, i10, wdVar3, cYVar, str, jSONObject, false);
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "load_ad_time", j112, jSONObject);
        }
    }

    private static void oJ(com.bytedance.sdk.component.ZYk.oJ.kkU kku, com.bytedance.sdk.openadsdk.core.model.HL hl2, wd wdVar, wd wdVar2, int i10, wd wdVar3, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, JSONObject jSONObject, boolean z10) throws JSONException {
        if (hl2 != null) {
            wd wdVar4 = hl2.kkU;
            if (wdVar4.oJ > 0) {
                jSONObject.put("client_start_time", wdVar.oJ(wdVar4));
            }
        }
        jSONObject.put("network_time", wdVar2.oJ(wdVar));
        jSONObject.put("sever_time", i10);
        jSONObject.put("client_end_time", wdVar3.oJ(wdVar2));
        if (str.equals("open_ad")) {
            jSONObject.put("is_icon_only", cYVar.Xe() ? 1 : 0);
        }
        if (cYVar != null) {
            jSONObject.put("render_control_type", cYVar.oIC());
        }
        jSONObject.put("webview_cache_size", com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().tB());
        jSONObject.put("sync_barrier_open", z10 ? 1 : 0);
        long j10 = kku.ZYk;
        if (j10 > 0) {
            jSONObject.put("enqueue_2_run_ts", kku.tB - j10);
            jSONObject.put("run_2_connect_end_ts", kku.Pfn - kku.ZYk);
            jSONObject.put("connect_end_2_response_end_ts", kku.f12616ba - kku.Pfn);
            jSONObject.put("response_end_2_callback_end_ts", SystemClock.elapsedRealtime() - kku.f12616ba);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    @WorkerThread
    @DungeonFlag
    public com.bytedance.sdk.openadsdk.ex.Pfn oJ(JSONObject jSONObject, String str, boolean z10) {
        Object obj;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            byte[] bArr = null;
            if (com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
                com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
                ZYk2.ZYk(str);
                if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().TA()) {
                    ZYk2.ZYk("_disable_retry", "1");
                }
                boolean z11 = true;
                if (z10) {
                    com.bytedance.sdk.openadsdk.core.settings.ba ib2 = com.bytedance.sdk.openadsdk.core.settings.PiB.ib();
                    PangleEncryptConstant.CryptDataScene cryptDataScene = PangleEncryptConstant.CryptDataScene.APP_LOG;
                    boolean oJ2 = ib2.oJ(cryptDataScene);
                    byte[] Pfn = Pfn(jSONObject.toString());
                    if (oJ2) {
                        Pair<Integer, byte[]> encryptType4WithoutBase64 = PangleEncryptManager.encryptType4WithoutBase64(Pfn);
                        if (encryptType4WithoutBase64 != null && (obj = encryptType4WithoutBase64.second) != null && ((byte[]) obj).length > 0) {
                            bArr = (byte[]) obj;
                            Xe.ZYk(true);
                        } else {
                            int intValue = encryptType4WithoutBase64 != null ? ((Integer) encryptType4WithoutBase64.first).intValue() : 0;
                            Xe.ZYk(false);
                            Xe.oJ(1, cryptDataScene, intValue);
                        }
                    }
                    if (bArr != null) {
                        ZYk2.ZYk("Content-Encoding", "union_sdk_encode");
                        ZYk2.ZYk("x-pgli18n", "4");
                        ZYk2.oJ("application/octet-stream;tt-data=a", bArr);
                    } else {
                        bArr = PangleEncryptManager.encryptV3(Pfn);
                        if (bArr != null) {
                            oJ(ZYk(), ZYk2);
                            ZYk2.oJ("application/octet-stream;tt-data=a", bArr);
                        }
                    }
                }
                if (bArr == null) {
                    try {
                        JSONObject oJ3 = com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
                        if (!tB(oJ3)) {
                            oJ3 = jSONObject;
                        }
                        oJ(ex(oJ3), ZYk2);
                        ZYk2.oJ(oJ3.toString(), si.ex().awB());
                    } catch (OutOfMemoryError e10) {
                        com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e10.toString());
                        return new com.bytedance.sdk.openadsdk.ex.Pfn(false, -2, "encrypt_error", false);
                    }
                }
                com.bytedance.sdk.component.cFZ.ZYk oJ4 = ZYk2.oJ();
                boolean Pfn2 = (oJ4 == null || !oJ4.ba() || TextUtils.isEmpty(oJ4.ex())) ? false : Pfn(new JSONObject(oJ4.ex()));
                String str2 = "error unknown";
                int oJ5 = oJ4 != null ? oJ4.oJ() : 0;
                if (!Pfn2 && oJ5 == 200) {
                    str2 = "server say not success";
                } else {
                    if (oJ4 != null && oJ4.ZYk() != null) {
                        str2 = oJ4.ZYk();
                    }
                    z11 = false;
                }
                if (oJ4 == null) {
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("applog", str, -1, "response is null");
                } else if (!oJ4.ba()) {
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("applog", str, oJ5, oJ4.ZYk());
                }
                oJ(jSONObject, z10);
                com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.ex.oJ.oJ.oJ, Pfn2, oJ5, System.currentTimeMillis() - currentTimeMillis);
                return new com.bytedance.sdk.openadsdk.ex.Pfn(Pfn2, oJ5, str2, z11);
            }
            return null;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("NetApiImpl", "uploadEvent error", th2);
            return new com.bytedance.sdk.openadsdk.ex.Pfn(false, 509, "service_busy", false);
        }
    }

    private void oJ(Map<String, String> map, com.bytedance.sdk.component.cFZ.ZYk.ex exVar) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    exVar.ZYk(entry.getKey(), entry.getValue());
                } catch (Exception e10) {
                    com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", "ADD header exceptopn", e10.getMessage());
                }
            }
        }
        try {
            exVar.ZYk(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
        } catch (Exception e11) {
            com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", "ADD header exceptopn", e11.getMessage());
        }
    }

    private void oJ(JSONObject jSONObject, boolean z10) {
        Object obj;
        if (jFA.ZYk().Ry()) {
            try {
                jSONObject.getJSONObject("header").put(TTVideoEngineInterface.PLAY_API_KEY_APPID, "4562");
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", "reportETEvent error", e10.getMessage());
            }
            com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
            ZYk2.ZYk(HyG.oq());
            byte[] bArr = null;
            if (z10) {
                com.bytedance.sdk.openadsdk.core.settings.ba ib2 = com.bytedance.sdk.openadsdk.core.settings.PiB.ib();
                PangleEncryptConstant.CryptDataScene cryptDataScene = PangleEncryptConstant.CryptDataScene.APP_LOG;
                boolean oJ2 = ib2.oJ(cryptDataScene);
                byte[] Pfn = Pfn(jSONObject.toString());
                if (oJ2) {
                    Pair<Integer, byte[]> encryptType4WithoutBase64 = PangleEncryptManager.encryptType4WithoutBase64(Pfn);
                    if (encryptType4WithoutBase64 != null && (obj = encryptType4WithoutBase64.second) != null && ((byte[]) obj).length > 0) {
                        bArr = (byte[]) obj;
                        Xe.ZYk(true);
                    } else {
                        int intValue = encryptType4WithoutBase64 != null ? ((Integer) encryptType4WithoutBase64.first).intValue() : 0;
                        Xe.ZYk(false);
                        Xe.oJ(1, cryptDataScene, intValue);
                    }
                }
                if (bArr != null) {
                    ZYk2.ZYk("Content-Encoding", "union_sdk_encode");
                    ZYk2.ZYk("x-pgli18n", "4");
                    ZYk2.oJ("application/octet-stream;tt-data=a", bArr);
                } else {
                    bArr = PangleEncryptManager.encryptV3(Pfn);
                    if (bArr != null) {
                        oJ(ZYk(), ZYk2);
                        ZYk2.oJ("application/octet-stream;tt-data=a", bArr);
                    }
                }
            }
            if (bArr == null) {
                JSONObject oJ3 = com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
                if (tB(oJ3)) {
                    jSONObject = oJ3;
                }
                oJ(ex(jSONObject), ZYk2);
                ZYk2.oJ(jSONObject.toString(), si.ex().awB());
            }
            ZYk2.oJ(7);
            ZYk2.oJ("et_applog");
            ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cY.15
                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                    if (zYk == null || !zYk.ba()) {
                        return;
                    }
                    zYk.ex();
                }

                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                    iOException.getMessage();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(@NonNull String str, List<FilterWord> list, JSONObject jSONObject, String str2, String str3) {
        JSONObject ZYk2;
        if (com.bytedance.sdk.openadsdk.core.settings.jFA.oJ() && (ZYk2 = ZYk(str, list, jSONObject, str2, str3)) != null) {
            com.bytedance.sdk.component.cFZ.ZYk.ex ZYk3 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
            final String ex = HyG.ex("/api/ad/union/dislike_event/");
            JSONObject oJ2 = oJ(PangleEncryptConstant.CryptDataScene.DISLIKE, ZYk2);
            String jSONObject2 = oJ2 != null ? oJ2.toString() : null;
            oJ(ZYk3, oJ2);
            ZYk3.ZYk(ex);
            ZYk3.ex(jSONObject2);
            ZYk3.oJ(7);
            ZYk3.oJ("dislike");
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.2
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar.ZYk("dislike");
                    return oJVar;
                }
            });
            ZYk3.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cY.3
                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                    if (zYk == null) {
                        com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("dislike", ex, -1, "response is null");
                        com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.3.3
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar.ZYk("dislike");
                                return oJVar;
                            }
                        });
                    } else if (zYk.ba()) {
                        com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.3.1
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar.ZYk("dislike");
                                return oJVar;
                            }
                        });
                    } else {
                        com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.3.2
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar.ZYk("dislike");
                                return oJVar;
                            }
                        });
                        com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("dislike", ex, zYk.oJ(), zYk.ZYk());
                    }
                }

                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("dislike", ex, -1, iOException != null ? iOException.getMessage() : "null");
                    if (tBVar != null) {
                        com.bytedance.sdk.openadsdk.utils.oq.oJ(tBVar.ex());
                    }
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.3.4
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk("dislike");
                            return oJVar;
                        }
                    });
                }
            });
            try {
                String optString = new JSONObject(str).optString(BidResponsedEx.KEY_CID, "");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("dislike", optString, (String) null, (String) null);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.QSm.tB(e10.getMessage(), new Object[0]);
            }
        }
    }

    private static JSONObject oJ(PangleEncryptConstant.CryptDataScene cryptDataScene, JSONObject jSONObject) {
        if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(cryptDataScene)) {
            JSONObject encryptType4 = PangleEncryptManager.encryptType4(jSONObject, new jr(cryptDataScene));
            Xe.oJ(encryptType4);
            return encryptType4;
        }
        return com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
    }

    private JSONArray oJ(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (FilterWord filterWord : list) {
            jSONArray.put(filterWord.getId());
        }
        return jSONArray;
    }

    private void oJ(Id.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
        oJVar.oJ(-1, so.oJ(-1));
        tBVar.oJ(-1);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Id.ZYk zYk) {
        zYk.oJ(-1, so.oJ(-1));
    }

    public static JSONObject oJ(AdSlot adSlot) {
        HL hl2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("personalized_ad", si.ex().HyG());
            jSONObject.put("lmt", DeviceUtils.tB());
            jSONObject.put(InMobiSdk.IM_GDPR_CONSENT_GDPR_APPLIES, jFA.ZYk().kkU());
            jSONObject.put("pa_consent", jFA.ZYk().dLZ());
            jSONObject.put("is_gdpr_user", si.ex().XAo());
            if (adSlot != null && HL.oJ.containsKey(Integer.valueOf(adSlot.getCodeId())) && (hl2 = HL.oJ.get(Integer.valueOf(adSlot.getCodeId()))) != null) {
                jSONObject.put("lastadomain", hl2.ZYk());
                jSONObject.put("lastbundle", hl2.tB());
                jSONObject.put("lastclick", hl2.ex());
                jSONObject.put("lastskip", hl2.Pfn());
            }
            oJ(jSONObject, "data", ZYk(adSlot));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void oJ(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    private JSONObject oJ(AdSlot adSlot, int i10, com.bytedance.sdk.openadsdk.core.model.HL hl2) {
        Object obj;
        Object obj2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", adSlot.getCodeId());
            jSONObject.put("adtype", i10);
            if (!TextUtils.isEmpty(adSlot.getAdId()) || !TextUtils.isEmpty(adSlot.getCreativeId()) || !TextUtils.isEmpty(adSlot.getExt())) {
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(adSlot.getAdId())) {
                    jSONObject2.put("ad_id", adSlot.getAdId());
                }
                if (!TextUtils.isEmpty(adSlot.getCreativeId())) {
                    jSONObject2.put(CampaignEx.JSON_KEY_CREATIVE_ID, adSlot.getCreativeId());
                }
                if (adSlot.getExt() != null) {
                    jSONObject2.put("ext", adSlot.getExt());
                }
                jSONObject.put("preview_ads", jSONObject2);
            }
            if (hl2 != null) {
                jSONObject.put("render_method", hl2.jFA);
                int i11 = hl2.jFA;
                if (i11 == 1) {
                    oJ(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
                } else if (i11 == 2) {
                    oJ(jSONObject, "accepted_size", adSlot.getExpressViewAcceptedWidth(), adSlot.getExpressViewAcceptedHeight());
                }
            } else {
                jSONObject.put("render_method", 1);
                oJ(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            }
            jSONObject.put("ptpl_ids", ZYk(adSlot.getCodeId()));
            jSONObject.put("ugen_ptpl_ids", tB(adSlot.getCodeId()));
            jSONObject.put("ptpl_ids_v3", tB(adSlot.getCodeId() + "_v3"));
            jSONObject.put("pos", AdSlot.getPosition(i10));
            jSONObject.put("is_support_dpl", adSlot.isSupportDeepLink());
            if (i10 == 1 || i10 == 5) {
                jSONObject.put("is_origin_ad", true);
            }
            if (hl2 != null && (obj2 = hl2.cFZ) != null) {
                jSONObject.put("session_params", obj2);
            }
            if (hl2 != null && (obj = hl2.f13182so) != null) {
                jSONObject.put("common_params", obj);
            }
            int adCount = adSlot.getAdCount();
            if (adCount <= 0) {
                adCount = 1;
            }
            if (adCount > 3) {
                adCount = 3;
            }
            if (i10 == 7 || i10 == 8) {
                adCount = 1;
            }
            if (hl2 != null && hl2.Pfn != null) {
                adCount = adSlot.getAdCount();
            }
            jSONObject.put("ad_count", adCount);
            if (i10 == 1) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("is_rotate_banner", adSlot.getIsRotateBanner());
                jSONObject3.put("rotate_time", adSlot.getRotateTime());
                jSONObject3.put("rotate_order", adSlot.getRotateOrder());
                jSONObject3.put("type", adSlot.getBannerType());
                jSONObject.put("banner", jSONObject3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void oJ(JSONObject jSONObject, String str, int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", i10);
            jSONObject2.put("height", i11);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void oJ(JSONObject jSONObject, String str, float f10, float f11) {
        if (f10 < 0.0f || f11 < 0.0f) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", (int) f10);
            jSONObject2.put("height", (int) f11);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(JSONObject jSONObject, final Id.ZYk zYk) {
        if (!com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
            if (zYk != null) {
                zYk.oJ(1000, "Ad request is temporarily paused, Please contact your AM");
            }
        } else if (jSONObject == null || zYk == null) {
        } else {
            JSONObject oJ2 = oJ(PangleEncryptConstant.CryptDataScene.REWARD_VERIFY, jSONObject);
            com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
            try {
                ZYk2.ZYk(com.bytedance.sdk.openadsdk.so.ex.oJ(ZYk2, HyG.ex("/api/ad/union/sdk/reward_video/reward/")));
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e10.getMessage());
            }
            oJ(ZYk2, oJ2);
            ZYk2.ex(oJ2 != null ? oJ2.toString() : "");
            ZYk2.oJ(10);
            ZYk2.oJ(AdmobPreloadConfig.REWARD);
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.4
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar.ZYk(AdmobPreloadConfig.REWARD);
                    return oJVar;
                }
            });
            ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cY.5
                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk2) {
                    ZYk oJ3;
                    int i10;
                    if (zYk2 != null) {
                        if (zYk2.ba() && !TextUtils.isEmpty(zYk2.ex())) {
                            try {
                                JSONObject jSONObject2 = new JSONObject(zYk2.ex());
                                String ZYk3 = cY.ZYk(jSONObject2.optInt("cypher", -1), jSONObject2.optString("message"));
                                if (!TextUtils.isEmpty(ZYk3)) {
                                    try {
                                        jSONObject2 = new JSONObject(ZYk3);
                                    } catch (Throwable unused) {
                                    }
                                }
                                oJ3 = ZYk.oJ(jSONObject2);
                                i10 = oJ3.oJ;
                            } catch (JSONException e11) {
                                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", e11.getMessage());
                                cY.this.oJ(zYk);
                            }
                            if (i10 != 20000) {
                                zYk.oJ(i10, so.oJ(i10));
                                return;
                            } else if (oJ3.tB == null) {
                                cY.this.oJ(zYk);
                                return;
                            } else {
                                zYk.oJ(oJ3);
                                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.5.1
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar.ZYk(AdmobPreloadConfig.REWARD);
                                        return oJVar;
                                    }
                                });
                                return;
                            }
                        }
                        String oJ4 = so.oJ(-2);
                        int oJ5 = zYk2.oJ();
                        if (!zYk2.ba() && !TextUtils.isEmpty(zYk2.ZYk())) {
                            oJ4 = zYk2.ZYk();
                        }
                        zYk.oJ(oJ5, oJ4);
                        com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.5.2
                            @Override // com.bytedance.sdk.openadsdk.si.ex
                            public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                oJVar.ZYk(AdmobPreloadConfig.REWARD);
                                return oJVar;
                            }
                        });
                        if (zYk2.ba()) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ(AdmobPreloadConfig.REWARD, tBVar.ex(), oJ5, oJ4);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.5.3
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk(AdmobPreloadConfig.REWARD);
                            return oJVar;
                        }
                    });
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ(AdmobPreloadConfig.REWARD, tBVar.ex(), -1, "response is null");
                    cY.this.oJ(zYk);
                }

                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                    String str;
                    if (iOException != null) {
                        str = iOException.getMessage();
                    } else {
                        str = "";
                    }
                    zYk.oJ(-2, str);
                    if (tBVar != null) {
                        String ex = tBVar.ex();
                        com.bytedance.sdk.openadsdk.utils.oq.oJ(ex);
                        com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ(AdmobPreloadConfig.REWARD, ex, -1, str);
                    }
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.cY.5.4
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk(AdmobPreloadConfig.REWARD);
                            return oJVar;
                        }
                    });
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public JSONObject oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return jSONObject;
        }
        try {
            int optInt = jSONObject.optInt("cypher", -1);
            String optString = jSONObject.optString("message");
            String optString2 = jSONObject.optString("auction_price", "");
            String ZYk2 = ZYk(optInt, optString);
            if (TextUtils.isEmpty(ZYk2)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(ZYk2);
            try {
                jSONObject2.put("auction_price", optString2);
            } catch (Throwable unused) {
            }
            return jSONObject2;
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }

    private void oJ(com.bytedance.sdk.component.cFZ.ZYk.ex exVar, JSONObject jSONObject) {
        try {
            if (tB(jSONObject) && jSONObject.optInt("cypher") == 4) {
                exVar.ZYk("x-pgli18n", "4");
                exVar.ZYk(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJ() {
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar = null;
        if (com.bytedance.sdk.openadsdk.core.settings.jFA.oJ()) {
            long currentTimeMillis = (System.currentTimeMillis() / 1000) - com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tpl_fetch_model", "date", 0L);
            String UN = si.ex().UN();
            String ZYk2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tpl_fetch_model", "last_url", "");
            if (currentTimeMillis <= si.ex().Xe() && currentTimeMillis >= 0 && TextUtils.equals(UN, ZYk2)) {
                String ZYk3 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tpl_fetch_model", "model", "");
                try {
                    if (!TextUtils.isEmpty(ZYk3)) {
                        return com.bytedance.sdk.component.adexpress.oJ.tB.oJ.Pfn(ZYk3);
                    }
                } catch (Exception unused) {
                }
            }
            try {
                com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
                String oJ2 = com.bytedance.sdk.openadsdk.so.ex.oJ(tB, UN);
                tB.ZYk(oJ2);
                com.bytedance.sdk.component.cFZ.ZYk oJ3 = tB.oJ();
                if (oJ3 == null || !oJ3.ba()) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(oJ3.ex());
                jSONObject.put("template_fetch_url", oJ2);
                oJVar = com.bytedance.sdk.component.adexpress.oJ.tB.oJ.oJ(jSONObject);
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tpl_fetch_model", "date", Long.valueOf(System.currentTimeMillis() / 1000));
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tpl_fetch_model", "model", jSONObject.toString());
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tpl_fetch_model", "last_url", UN);
                return oJVar;
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("NetApiImpl", th2.getMessage());
                return oJVar;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(String str) {
        com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
        tB.ZYk(str);
        tB.oJ("upload_bidding");
        tB.oJ(7);
        tB.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cY.6
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                zYk.ex();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.Id
    public void oJ(JSONObject jSONObject, String str) {
        com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
        ZYk2.ZYk(str);
        Pair<String, String> generateRequestHeader = ApmHelper.generateRequestHeader();
        ZYk2.ZYk("cypher", (String) generateRequestHeader.first);
        ZYk2.ZYk("transfer-param", (String) generateRequestHeader.second);
        ZYk2.ZYk("x-pangle-target-idc", si.ex().JJ());
        ZYk2.oJ(jSONObject);
        ZYk2.oJ(5);
        ZYk2.oJ("apm_pv");
        ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.cY.7
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                zYk.ex();
            }
        });
    }
}
