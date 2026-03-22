package com.bytedance.sdk.openadsdk.core.so;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    private static String ZYk;
    private static String oJ;

    @NonNull
    public static String ZYk() {
        String tB;
        if (oJ == null) {
            oJ = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tt_sp", "js_render_ver", "");
        }
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ZYk2 = com.bytedance.sdk.component.adexpress.oJ.ZYk.so.ZYk();
        if (ZYk2 != null && (tB = ZYk2.tB()) != null && !tB.equals(oJ)) {
            oJ = tB;
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_sp", "js_render_ver", tB);
        }
        return oJ;
    }

    public static void oJ() {
        com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().oJ(new com.bytedance.sdk.component.adexpress.oJ.oJ.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.1
            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.ZYk
            public int oJ(String str, ContentValues contentValues, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str, contentValues, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.ZYk
            public Cursor oJ(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
                return new com.bytedance.sdk.openadsdk.multipro.aidl.tB(com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str, strArr, str2, strArr2, str3, str4, str5));
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.ZYk
            public int oJ(String str, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.ZYk
            public void oJ(String str, ContentValues contentValues) {
                com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), str, contentValues);
            }
        });
        com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().oJ(new com.bytedance.sdk.component.adexpress.oJ.oJ.tB() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.2

            /* renamed from: com.bytedance.sdk.openadsdk.core.so.BTZ$2$1  reason: invalid class name */
            /* loaded from: classes3.dex */
            class AnonymousClass1 implements Runnable {
                final /* synthetic */ int ZYk;
                final /* synthetic */ MessageQueue[] oJ;
                final /* synthetic */ int tB;

                AnonymousClass1(MessageQueue[] messageQueueArr, int i10, int i11) {
                    this.oJ = messageQueueArr;
                    this.ZYk = i10;
                    this.tB = i11;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.oJ[0] = Looper.myQueue();
                    oJ(this.oJ[0], this.ZYk, this.tB);
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int BTZ() {
                return 0;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public com.bytedance.sdk.component.adexpress.oJ.tB.oJ Pfn() {
                return com.bytedance.sdk.openadsdk.core.si.tB().oJ();
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public ExecutorService PiB() {
                if (ofl.BTZ()) {
                    return ofl.Pfn();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int Ry() {
                return com.bytedance.sdk.openadsdk.oq.oJ.oJ("gaussian_blur_type", 0);
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public ExecutorService WcQ() {
                if (ofl.BTZ()) {
                    return ofl.kkU();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int awB() {
                return cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public com.bytedance.sdk.component.cFZ.ZYk.oJ ba() {
                com.bytedance.sdk.component.cFZ.ZYk.oJ ex = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ex();
                ex.oJ(8);
                ex.oJ("express_down");
                return ex;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public com.bytedance.sdk.component.cFZ.ZYk.ZYk cFZ() {
                com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
                tB.oJ(8);
                tB.oJ("express_get");
                return tB;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int dLZ() {
                return com.bytedance.sdk.openadsdk.core.si.ex().mwH();
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int eZI() {
                return cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ());
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public void ex() {
                int lY = com.bytedance.sdk.openadsdk.core.si.ex().lY();
                int mwH = com.bytedance.sdk.openadsdk.core.si.ex().mwH();
                if (lY == 0 && mwH == 0) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().oJ(lY);
                com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ZYk(mwH);
                int ba2 = com.bytedance.sdk.openadsdk.oq.oJ.ba();
                int Pfn = com.bytedance.sdk.openadsdk.oq.oJ.Pfn();
                if (ba2 == 0 && Pfn == 0) {
                    return;
                }
                oJ(com.bytedance.sdk.openadsdk.core.WcQ.tB().getLooper().getQueue(), Pfn, ba2);
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int jFA() {
                return 1;
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int kkU() {
                return com.bytedance.sdk.openadsdk.core.si.ex().lY();
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public boolean si() {
                return com.bytedance.sdk.openadsdk.oq.oJ.oJ("destroy_render_script", true);
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public String so() {
                return com.bytedance.sdk.openadsdk.core.jFA.ZYk().ex();
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public Handler tB() {
                return com.bytedance.sdk.openadsdk.core.WcQ.tB();
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public Context ZYk() {
                return com.bytedance.sdk.openadsdk.core.si.oJ();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void ZYk(final MessageQueue messageQueue, final int i10) {
                if (messageQueue == null || i10 <= 0) {
                    return;
                }
                messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.2.4
                    @Override // android.os.MessageQueue.IdleHandler
                    public boolean queueIdle() {
                        new com.bytedance.sdk.openadsdk.core.widget.oJ.ZYk(i10, false, messageQueue).ZYk();
                        return false;
                    }
                });
            }

            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.tB
            public int oJ() {
                if (com.bytedance.sdk.openadsdk.core.si.ex() == null) {
                    return 0;
                }
                return com.bytedance.sdk.openadsdk.core.si.ex().ex();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void oJ(final MessageQueue messageQueue, final int i10, final int i11) {
                if (messageQueue != null) {
                    final int oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("ad_load_and_render_opt", "w_p_delay", 500);
                    Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ZYk(messageQueue, i10);
                            oJ(messageQueue, i11);
                        }
                    };
                    if (oJ2 > 0) {
                        com.bytedance.sdk.openadsdk.core.WcQ.tB().postDelayed(runnable, oJ2);
                    } else {
                        runnable.run();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void oJ(final MessageQueue messageQueue, final int i10) {
                if (messageQueue == null || i10 <= 0) {
                    return;
                }
                messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.2.3
                    @Override // android.os.MessageQueue.IdleHandler
                    public boolean queueIdle() {
                        new com.bytedance.sdk.openadsdk.core.widget.oJ.ZYk(i10, true, messageQueue).ZYk();
                        return false;
                    }
                });
            }
        });
        com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().oJ(new com.bytedance.sdk.component.adexpress.oJ.oJ.ex() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.3
            @Override // com.bytedance.sdk.component.adexpress.oJ.oJ.ex
            public void oJ(int i10) {
                com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ(com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().ZYk(i10).ba(com.bytedance.sdk.openadsdk.core.so.oJ(i10)));
            }
        });
        com.bytedance.sdk.component.jFA.oJ.oJ.oJ().oJ(new com.bytedance.sdk.component.jFA.oJ.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.4
            @Override // com.bytedance.sdk.component.jFA.oJ.ZYk
            public void oJ(String str, String str2, JSONObject jSONObject) {
                com.bytedance.sdk.openadsdk.ex.tB.tB(com.bytedance.sdk.openadsdk.utils.ZYk.ZYk(), str, str2, jSONObject);
            }

            @Override // com.bytedance.sdk.component.jFA.oJ.ZYk
            public void oJ(com.bytedance.sdk.component.jFA.ZYk.oJ oJVar, String str, String str2, JSONObject jSONObject, long j10) {
                com.bytedance.sdk.openadsdk.core.model.cY cYVar = new com.bytedance.sdk.openadsdk.core.model.cY();
                cYVar.jr(oJVar.oJ());
                cYVar.tb(oJVar.ZYk());
                cYVar.cY(oJVar.tB());
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, str2, jSONObject, j10);
            }

            @Override // com.bytedance.sdk.component.jFA.oJ.ZYk
            public void oJ(com.bytedance.sdk.component.jFA.ZYk.oJ oJVar, String str, final String str2, final JSONObject jSONObject) {
                if (oJVar != null) {
                    com.bytedance.sdk.openadsdk.core.model.cY cYVar = new com.bytedance.sdk.openadsdk.core.model.cY();
                    cYVar.jr(oJVar.oJ());
                    cYVar.tb(oJVar.ZYk());
                    cYVar.cY(oJVar.tB());
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.so.BTZ.4.1
                        @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                        public JSONObject oJ() {
                            return jSONObject;
                        }
                    });
                }
            }
        });
    }

    public static String tB() {
        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2;
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar;
        String tB;
        if (ZYk == null) {
            ZYk = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tt_sp", "js_render_v3_ver", "");
        }
        com.bytedance.sdk.component.adexpress.oJ.tB.oJ ZYk2 = com.bytedance.sdk.component.adexpress.oJ.ZYk.so.ZYk();
        if (ZYk2 != null && (oJ2 = ZYk2.oJ()) != null && (oJVar = oJ2.get("v3")) != null && (tB = oJVar.tB()) != null && !tB.equals(ZYk)) {
            ZYk = tB;
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_sp", "js_render_v3_ver", tB);
        }
        return ZYk;
    }
}
