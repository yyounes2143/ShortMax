package com.bytedance.sdk.openadsdk.ex.oJ;

import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.vodsetting.Module;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    public static AtomicInteger oJ = new AtomicInteger(0);
    public static AtomicInteger ZYk = new AtomicInteger(0);
    public static AtomicInteger tB = new AtomicInteger(0);
    public static AtomicInteger ex = new AtomicInteger(0);
    public static AtomicInteger Pfn = new AtomicInteger(0);

    /* renamed from: ba  reason: collision with root package name */
    public static AtomicInteger f13352ba = new AtomicInteger(0);
    public static AtomicInteger cFZ = new AtomicInteger(0);

    /* renamed from: so  reason: collision with root package name */
    public static AtomicInteger f13353so = new AtomicInteger(0);
    public static AtomicInteger jFA = new AtomicInteger(0);

    public static void Pfn() {
        try {
            if (!DeviceUtils.ZYk()) {
                jFA.incrementAndGet();
            }
        } catch (Throwable unused) {
        }
    }

    public static void ZYk() {
        try {
            com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ("pangle_sdk_get_ad_track", com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static JSONObject ex() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("load_times", oJ.get());
            jSONObject.put("load_success", ZYk.get());
            jSONObject.put("load_fail", tB.get());
            jSONObject.put("load_fail_in_background", jFA.get());
            jSONObject.put("load_success_and_parse_success", ex.get());
            jSONObject.put("load_success_and_parse_fail", Pfn.get());
            jSONObject.put("load_success_and_no_ad", f13352ba.get());
            jSONObject.put("load_fail_by_no_net", cFZ.get());
            jSONObject.put("load_fail_by_io", f13353so.get());
            jSONObject.put("load_get_ad_version", 7504);
            return jSONObject;
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    public static void oJ() {
        try {
            long oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad", "get_ad_event_time_key", 0L);
            int i10 = (oJ2 > 0L ? 1 : (oJ2 == 0L ? 0 : -1));
            if (i10 > 0 && System.currentTimeMillis() - oJ2 >= SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                ZYk();
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
                return;
            }
            if (i10 <= 0 || oJ2 > System.currentTimeMillis()) {
                com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad", "get_ad_event_time_key", Long.valueOf(System.currentTimeMillis()));
            }
            JSONObject jSONObject = new JSONObject(com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_event_get_ad", "get_ad_event_key", ""));
            int optInt = jSONObject.optInt("load_get_ad_version", 0);
            if (optInt >= 5702 && (optInt < 5800 || optInt >= 5802)) {
                oJ.addAndGet(jSONObject.optInt("load_times"));
                ZYk.addAndGet(jSONObject.optInt("load_success"));
                tB.addAndGet(jSONObject.optInt("load_fail"));
                ex.addAndGet(jSONObject.optInt("load_success_and_parse_success"));
                Pfn.addAndGet(jSONObject.optInt("load_success_and_parse_fail"));
                f13352ba.addAndGet(jSONObject.optInt("load_success_and_no_ad"));
                cFZ.addAndGet(jSONObject.optInt("load_fail_by_no_net"));
                f13353so.addAndGet(jSONObject.optInt("load_fail_by_io"));
                jFA.addAndGet(jSONObject.optInt("load_fail_in_background"));
                return;
            }
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad");
        } catch (Throwable unused) {
        }
    }

    public static void tB() {
        try {
            com.bytedance.sdk.openadsdk.multipro.ex.oJ.oJ("tt_sdk_event_get_ad", "get_ad_event_key", ex().toString());
        } catch (Throwable unused) {
        }
    }

    public static void oJ(int i10, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            jSONObject.put("msg", str);
            com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ("pangle_sdk_client_load_error", jSONObject);
        } catch (Throwable unused) {
        }
    }
}
