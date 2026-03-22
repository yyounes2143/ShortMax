package com.bytedance.bdtracker;

import android.content.SharedPreferences;
import androidx.work.PeriodicWorkRequest;
import com.bytedance.applog.Level;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.bytedance.vodsetting.Module;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.vungle.ads.internal.ConfigManager;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d0 extends c0 {

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ JSONObject f11935a;

        public a(JSONObject jSONObject) {
            this.f11935a = jSONObject;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            l0.b.b(this.f11935a, jSONObject);
            try {
                jSONObject.put("appId", d0.this.f11889f.f11913m);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public d0(e0 e0Var) {
        super(e0Var, e0Var.f11956e.f12307f.getLong("app_log_last_config_time", 0L));
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean c() {
        String str;
        JSONObject jSONObject;
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean b10;
        r1 r1Var = this.f11888e.f11960i;
        JSONObject e10 = r1Var.e();
        if (r1Var.h() != 0 && e10 != null) {
            JSONObject b11 = p3.b(e10);
            if (this.f11888e.f11956e.f12304c.isEventFilterEnable()) {
                b11.put("event_filter", 1);
            }
            p4.a(this.f11889f, b11);
            String a10 = this.f11889f.f11910j.a(r1Var.e(), this.f11888e.e().getSettingUri(), true, Level.L1);
            p3 p3Var = this.f11889f.f11911k;
            String a11 = p3.a(a10, p4.f12335b);
            p3Var.f12324b.D.debug(11, "Start to get config to uri:{} with request:{}...", a11, b11);
            try {
                str = p3Var.a(b11, a11, p3Var.a(), 60000);
            } catch (Throwable th2) {
                p3Var.f12324b.D.error(11, "Config failed", th2, new Object[0]);
                str = null;
            }
            p3Var.f12324b.D.debug(11, "Get config with response:{}", str);
            JSONObject a12 = p3Var.a(str);
            if (a12 != null && "ss_app_log".equals(a12.optString("magic_tag", ""))) {
                jSONObject = a12.optJSONObject("config");
            } else {
                jSONObject = null;
            }
            p1 p1Var = this.f11888e.f11956e;
            d1 d1Var = this.f11889f.f11925y;
            if (d1Var != null) {
                JSONObject jSONObject2 = p1Var.f12310i;
                if (jSONObject != null && jSONObject2 != null) {
                    b10 = jSONObject.toString().equals(jSONObject2.toString());
                } else {
                    b10 = l0.b.b((Object) jSONObject, (Object) jSONObject2);
                }
                d1Var.onRemoteConfigGet(!b10, jSONObject);
            }
            if (jSONObject != null) {
                p1Var.f12303b.D.debug(Collections.singletonList(ConfigManager.TAG), "Set config:{}", jSONObject);
                p1Var.f12310i = jSONObject;
                long currentTimeMillis = System.currentTimeMillis();
                SharedPreferences.Editor edit = p1Var.f12307f.edit();
                long optInt = jSONObject.optInt("session_interval", 0);
                if (optInt > 0 && optInt <= TelemetryConfig.DEFAULT_EVENT_TTL_SEC) {
                    edit.putLong("session_interval", optInt * 1000);
                } else {
                    edit.remove("session_interval");
                }
                long optInt2 = jSONObject.optInt("batch_event_interval", 60) * 1000;
                if (optInt2 >= 10000 && optInt2 <= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                    edit.putLong("batch_event_interval", optInt2);
                } else {
                    edit.remove("batch_event_interval");
                }
                int optInt3 = jSONObject.optInt("batch_event_size", -1);
                if (p1Var.a(optInt3)) {
                    edit.putInt("batch_event_size", optInt3);
                } else {
                    edit.remove("batch_event_size");
                }
                int optInt4 = jSONObject.optInt("send_launch_timely", 0);
                if (optInt4 > 0 && optInt4 <= TelemetryConfig.DEFAULT_EVENT_TTL_SEC) {
                    edit.putInt("send_launch_timely", optInt4);
                } else {
                    edit.remove("send_launch_timely");
                }
                long optInt5 = jSONObject.optInt("abtest_fetch_interval", 0);
                if (optInt5 > 20 && optInt5 <= TelemetryConfig.DEFAULT_EVENT_TTL_SEC) {
                    edit.putLong("abtest_fetch_interval", optInt5 * 1000);
                } else {
                    edit.remove("abtest_fetch_interval");
                }
                boolean optBoolean = jSONObject.optBoolean("bav_log_collect", p1Var.f12304c.isAutoTrackEnabled());
                edit.putBoolean("bav_log_collect", optBoolean);
                p1Var.f12320s = optBoolean ? 1 : 0;
                edit.putBoolean("bav_ab_config", jSONObject.optBoolean("bav_ab_config", p1Var.f12304c.isAbEnable()));
                JSONArray optJSONArray = jSONObject.optJSONArray("real_time_events");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    edit.putString("real_time_events", optJSONArray.toString());
                } else {
                    edit.remove("real_time_events");
                }
                p1Var.f12313l = null;
                JSONArray optJSONArray2 = jSONObject.optJSONArray("sensitive_fields");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    edit.putString("sensitive_fields", optJSONArray2.toString());
                } else {
                    edit.remove("sensitive_fields");
                }
                edit.putLong("app_log_last_config_time", currentTimeMillis);
                int optInt6 = jSONObject.optInt("forbid_report_phone_detail_info", -1);
                if (optInt6 >= 0) {
                    if (optInt6 > 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    edit.putBoolean("forbid_report_phone_detail_info", z12);
                }
                long optLong = jSONObject.optLong(Module.CommonKey.FetchInterval, 21600L) * 1000;
                edit.putLong(Module.CommonKey.FetchInterval, (optLong < 1800000 || optLong > 172800000) ? 21600000L : 21600000L);
                if (jSONObject.has("applog_disable_monitor")) {
                    i10 = 1;
                    if (jSONObject.optInt("applog_disable_monitor", 0) == 1) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    edit.putBoolean("monitor_enabled", z11);
                } else {
                    i10 = 1;
                }
                if (jSONObject.has("enter_background_not_send")) {
                    if (jSONObject.optInt("enter_background_not_send") == i10) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    edit.putBoolean("enter_background_not_send", z10);
                }
                edit.apply();
                p1Var.k();
                this.f11889f.setForbidReportPhoneDetailInfo(p1Var.f12307f.getBoolean("forbid_report_phone_detail_info", false));
                if (!p1Var.i()) {
                    this.f11888e.f11968q = null;
                }
                e0 e0Var = this.f11888e;
                e0Var.f11961j.removeMessages(13);
                e0Var.f11961j.sendEmptyMessage(13);
                if (this.f11888e.f11956e.f12304c.isEventFilterEnable()) {
                    String a13 = b.a(this.f11889f, "sp_filter_name");
                    e0 e0Var2 = this.f11888e;
                    e0Var2.f11976y = a1.a(e0Var2.b(), a13, jSONObject);
                }
                LogUtils.sendJsonFetcher("fetch_log_settings_end", new a(jSONObject));
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.bdtracker.c0
    public String d() {
        return "Configure";
    }

    @Override // com.bytedance.bdtracker.c0
    public long[] e() {
        return h0.f12032h;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public long g() {
        return this.f11888e.f11956e.f12307f.getLong(Module.CommonKey.FetchInterval, 21600000L);
    }
}
