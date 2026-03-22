package com.bytedance.sdk.openadsdk.core;

import android.os.Build;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Xe {
    private static final AtomicInteger ZYk;
    private static final AtomicInteger ex;
    private static final AtomicInteger oJ;
    private static final AtomicInteger tB;

    static {
        AtomicInteger atomicInteger = new AtomicInteger();
        oJ = atomicInteger;
        AtomicInteger atomicInteger2 = new AtomicInteger();
        ZYk = atomicInteger2;
        AtomicInteger atomicInteger3 = new AtomicInteger();
        tB = atomicInteger3;
        AtomicInteger atomicInteger4 = new AtomicInteger();
        ex = atomicInteger4;
        atomicInteger.addAndGet(com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "encrypt_success_count", 0));
        atomicInteger2.addAndGet(com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "encrypt_fail_count", 0));
        atomicInteger3.addAndGet(com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "decrypt_success_count", 0));
        atomicInteger4.addAndGet(com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "decrypt_fail_count", 0));
    }

    private static void ZYk() {
        final int i10 = oJ.get();
        final int i11 = ZYk.get();
        final int i12 = tB.get();
        final int i13 = ex.get();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("crypt_v4_statistics", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.Xe.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("encrypt_success_count", i10);
                    jSONObject.put("encrypt_fail_count", i11);
                    jSONObject.put("decrypt_success_count", i12);
                    jSONObject.put("decrypt_fail_count", i13);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("crypt_v4_statistics").ZYk(jSONObject.toString());
            }
        });
    }

    public static void oJ() {
        try {
            long oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "upload_time_key", 0L);
            int i10 = (oJ2 > 0L ? 1 : (oJ2 == 0L ? 0 : -1));
            if (i10 > 0 && System.currentTimeMillis() - oJ2 >= SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                ZYk();
                synchronized (Xe.class) {
                    oJ.set(0);
                    ZYk.set(0);
                    tB.set(0);
                    ex.set(0);
                    com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file");
                    com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
                }
            } else if (i10 <= 0 || oJ2 > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "upload_time_key", Long.valueOf(System.currentTimeMillis()));
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized void ZYk(boolean z10) {
        synchronized (Xe.class) {
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "encrypt_success_count", Integer.valueOf(oJ.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "encrypt_fail_count", Integer.valueOf(ZYk.incrementAndGet()));
            }
        }
    }

    public static void oJ(final int i10, final PangleEncryptConstant.CryptDataScene cryptDataScene, final int i11) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("crypt_v4_fail", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.Xe.2
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crypt", i10);
                    jSONObject.put("scene", cryptDataScene.value());
                    jSONObject.put("reason", i11);
                    if (i11 == 6) {
                        jSONObject.put("model", Build.MODEL);
                        jSONObject.put("vendor", Build.MANUFACTURER);
                    }
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("crypt_v4_fail").ZYk(jSONObject.toString());
            }
        });
    }

    public static synchronized void oJ(boolean z10) {
        synchronized (Xe.class) {
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "decrypt_success_count", Integer.valueOf(tB.incrementAndGet()));
            } else {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("encrypt_statistics_file", "decrypt_fail_count", Integer.valueOf(tB.incrementAndGet()));
            }
        }
    }

    public static void oJ(JSONObject jSONObject) {
        ZYk(jSONObject != null && jSONObject.optInt("cypher") == 4);
    }
}
