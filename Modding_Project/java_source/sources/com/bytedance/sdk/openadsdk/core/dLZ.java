package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    private static final AtomicInteger oJ = new AtomicInteger(0);
    private static final AtomicBoolean ZYk = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public static void ex() {
        if (oJ.getAndIncrement() <= 0) {
            com.bytedance.sdk.openadsdk.utils.ofl.oJ().schedule(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.2
                @Override // java.lang.Runnable
                public void run() {
                    dLZ.ZYk(BTZ.oJ(si.oJ()));
                }
            }, 10000L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB() {
        oJ.set(0);
    }

    public static void ZYk(final String str) {
        com.bytedance.sdk.openadsdk.utils.ofl.tB(new com.bytedance.sdk.component.so.so("ipv6") { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject oJ2;
                final String RZ = HyG.RZ();
                com.bytedance.sdk.openadsdk.awB.tB.oJ(0, RZ);
                com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.1
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar.ZYk("ipv6");
                        return oJVar;
                    }
                });
                if (TextUtils.isEmpty(RZ)) {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ(-1, RZ, -1, "url is null");
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("ipv6", "", -2, "url is null");
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.2
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk("ipv6");
                            return oJVar;
                        }
                    });
                    return;
                }
                com.bytedance.sdk.component.cFZ.ZYk.ex ZYk2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ZYk();
                try {
                    ZYk2.ZYk(RZ);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("connect_type", com.bytedance.sdk.component.utils.HL.oJ(si.oJ(), 0L));
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("device_id", Long.parseLong(str));
                    }
                    jSONObject.put("header", com.bytedance.sdk.openadsdk.ex.oJ.tB.oJ().ZYk());
                    if (com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ(PangleEncryptConstant.CryptDataScene.APP_LOG)) {
                        oJ2 = PangleEncryptManager.encryptType4(jSONObject, new jr(PangleEncryptConstant.CryptDataScene.DUAL_EVENT));
                        if (oJ2 != null && oJ2.optInt("cypher") == 4) {
                            Xe.ZYk(true);
                            ZYk2.ZYk("x-pgli18n", "4");
                            ZYk2.ZYk(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
                        } else {
                            Xe.ZYk(false);
                        }
                    } else {
                        oJ2 = com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
                        if (dLZ.ZYk(oJ2)) {
                            ZYk2.ZYk("Content-Encoding", "union_sdk_encode");
                        }
                    }
                    if (dLZ.ZYk(oJ2)) {
                        jSONObject = oJ2;
                    }
                    ZYk2.ZYk(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
                    ZYk2.ZYk(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
                    ZYk2.oJ(jSONObject);
                    ZYk2.oJ(6);
                    ZYk2.oJ("send_i_p_v6");
                    ZYk2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.3
                        @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                        public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                            if (zYk.ba()) {
                                dLZ.ZYk(zYk.ex(), RZ);
                                return;
                            }
                            com.bytedance.sdk.openadsdk.awB.tB.oJ(-1, RZ, zYk.oJ(), zYk.ZYk());
                            com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("ipv6", RZ, zYk.oJ(), zYk.ZYk());
                            com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.3.1
                                @Override // com.bytedance.sdk.openadsdk.si.ex
                                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                    oJVar.ZYk("ipv6");
                                    return oJVar;
                                }
                            });
                            dLZ.ex();
                        }

                        @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                        public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                            if (iOException != null) {
                                com.bytedance.sdk.openadsdk.awB.tB.oJ(-1, RZ, 1, iOException.getMessage());
                                com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("ipv6", RZ, -1, iOException.getMessage());
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.3.2
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar.ZYk("ipv6");
                                        return oJVar;
                                    }
                                });
                            }
                            dLZ.ex();
                        }
                    });
                } catch (Exception e10) {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ(-1, RZ, -2, e10.getMessage());
                    com.bytedance.sdk.openadsdk.awB.oJ.Pfn.oJ("ipv6", RZ, -3, e10.getMessage());
                    com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.1.4
                        @Override // com.bytedance.sdk.openadsdk.si.ex
                        public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                            com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                            oJVar.ZYk("ipv6");
                            return oJVar;
                        }
                    });
                    com.bytedance.sdk.component.utils.QSm.tB("build ipv6 request failed:" + e10.getMessage(), new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements HL.oJ {
        private static final AtomicBoolean oJ = new AtomicBoolean(false);
        private static volatile long ZYk = -1;

        private oJ() {
        }

        public static void oJ() {
            if (oJ.compareAndSet(false, true)) {
                ZYk = System.currentTimeMillis();
                com.bytedance.sdk.component.utils.HL.oJ(new oJ(), si.oJ());
            }
        }

        public void ZYk() {
            com.bytedance.sdk.component.utils.HL.oJ(this);
        }

        @Override // com.bytedance.sdk.component.utils.HL.oJ
        public void oJ(Context context, Intent intent, boolean z10, int i10) {
            if (System.currentTimeMillis() - ZYk >= 2000 && i10 != 0) {
                dLZ.tB();
                dLZ.ZYk(BTZ.oJ(si.oJ()));
                ZYk();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4 A[Catch: JSONException -> 0x0126, TryCatch #0 {JSONException -> 0x0126, blocks: (B:3:0x000a, B:5:0x0019, B:7:0x0029, B:9:0x0037, B:31:0x0089, B:33:0x0099, B:35:0x009f, B:37:0x00b5, B:39:0x00c4, B:41:0x00ca, B:43:0x00ef, B:16:0x005a, B:19:0x0064, B:22:0x006c, B:45:0x00fe), top: B:49:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void ZYk(java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.dLZ.ZYk(java.lang.String, java.lang.String):void");
    }

    public static void oJ(String str) {
        AtomicBoolean atomicBoolean = ZYk;
        if (atomicBoolean.compareAndSet(false, true)) {
            if (!com.bytedance.sdk.component.utils.Ry.so(si.oJ())) {
                atomicBoolean.set(false);
                return;
            }
            oJ.oJ();
            ZYk(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ZYk(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }
}
