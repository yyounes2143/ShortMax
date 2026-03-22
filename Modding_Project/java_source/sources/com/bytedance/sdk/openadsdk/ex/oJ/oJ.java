package com.bytedance.sdk.openadsdk.ex.oJ;
/* loaded from: classes3.dex */
public class oJ {
    public static final ZYk oJ = new ZYk(0);
    public static final ZYk ZYk = new ZYk(1);
    public static final ZYk tB = new ZYk(2);
    public static final ZYk ex = new ZYk(0);
    public static final ZYk Pfn = new ZYk(1);

    /* renamed from: ba  reason: collision with root package name */
    public static final ZYk f13357ba = new ZYk(2);

    public static void ZYk() {
        try {
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_ad");
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_net_state", "tt_sdk_event_net_state", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_state");
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_trail");
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_ad");
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_db_state", "tt_sdk_event_db_state", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_state");
            com.bytedance.sdk.openadsdk.awB.tB.ZYk("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_trail");
        } catch (Throwable unused) {
        }
    }

    public static void oJ(ZYk zYk, boolean z10, int i10, long j10) {
        try {
            zYk.cFZ.getAndSet(true);
            if (z10) {
                zYk.oJ.incrementAndGet();
                zYk.tB.addAndGet(j10);
                return;
            }
            zYk.ZYk.incrementAndGet();
            Integer num = zYk.f13351ba.get(Integer.valueOf(i10));
            if (num != null) {
                zYk.f13351ba.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() + 1));
            } else {
                zYk.f13351ba.put(Integer.valueOf(i10), 1);
            }
        } catch (Throwable unused) {
        }
    }

    public static void oJ(ZYk zYk, boolean z10) {
        try {
            zYk.cFZ.getAndSet(true);
            if (z10) {
                zYk.oJ.incrementAndGet();
            } else {
                zYk.ZYk.incrementAndGet();
            }
        } catch (Throwable unused) {
        }
    }

    public static void oJ(ZYk zYk) {
        try {
            zYk.cFZ.getAndSet(true);
            zYk.Pfn.incrementAndGet();
        } catch (Throwable unused) {
        }
    }

    public static void oJ() {
        try {
            ZYk zYk = oJ;
            if (zYk.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", zYk.oJ().toString());
            }
            ZYk zYk2 = ZYk;
            if (zYk2.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_state", "tt_sdk_event_net_state", zYk2.oJ().toString());
            }
            ZYk zYk3 = tB;
            if (zYk3.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", zYk3.oJ().toString());
            }
            ZYk zYk4 = ex;
            if (zYk4.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", zYk4.ZYk().toString());
            }
            ZYk zYk5 = Pfn;
            if (zYk5.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_state", "tt_sdk_event_db_state", zYk5.ZYk().toString());
            }
            ZYk zYk6 = f13357ba;
            if (zYk6.cFZ.get()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", zYk6.ZYk().toString());
            }
        } catch (Throwable unused) {
        }
    }
}
