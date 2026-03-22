package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.PeriodicWorkRequest;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.bytedance.vodsetting.Module;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.vungle.ads.internal.ConfigManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class p1 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f12302a;

    /* renamed from: b  reason: collision with root package name */
    public final d f12303b;

    /* renamed from: c  reason: collision with root package name */
    public final InitConfig f12304c;

    /* renamed from: d  reason: collision with root package name */
    public final SharedPreferences f12305d;

    /* renamed from: e  reason: collision with root package name */
    public final SharedPreferences f12306e;

    /* renamed from: f  reason: collision with root package name */
    public final SharedPreferences f12307f;

    /* renamed from: g  reason: collision with root package name */
    public volatile JSONObject f12308g;

    /* renamed from: h  reason: collision with root package name */
    public volatile String f12309h;

    /* renamed from: i  reason: collision with root package name */
    public volatile JSONObject f12310i;

    /* renamed from: j  reason: collision with root package name */
    public final Set<String> f12311j;

    /* renamed from: k  reason: collision with root package name */
    public final Set<String> f12312k;

    /* renamed from: l  reason: collision with root package name */
    public volatile HashSet<String> f12313l;

    /* renamed from: m  reason: collision with root package name */
    public int f12314m;

    /* renamed from: n  reason: collision with root package name */
    public int f12315n;

    /* renamed from: o  reason: collision with root package name */
    public long f12316o;

    /* renamed from: p  reason: collision with root package name */
    public int f12317p;

    /* renamed from: q  reason: collision with root package name */
    public long f12318q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f12319r;

    /* renamed from: s  reason: collision with root package name */
    public int f12320s;

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {
        public a() {
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            String str;
            String str2;
            String str3;
            String str4;
            Integer num;
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", p1.this.f12303b.f11913m);
                long j10 = p1.this.f12307f.getLong("session_interval", 0L);
                if (j10 <= 0) {
                    str = "--";
                } else {
                    str = j10 + "ms";
                }
                jSONObject2.put("后台会话时长", str);
                long j11 = p1.this.f12307f.getLong("batch_event_interval", 0L);
                if (j11 <= 0) {
                    str2 = "--";
                } else {
                    str2 = j11 + "ms";
                }
                jSONObject2.put("事件上报周期", str2);
                long j12 = p1.this.f12307f.getLong("abtest_fetch_interval", 0L);
                if (j12 <= 0) {
                    str3 = "--";
                } else {
                    str3 = j12 + "ms";
                }
                jSONObject2.put("AB实验更新周期", str3);
                jSONObject2.put("全埋点开关", p1.this.f12307f.getBoolean("bav_log_collect", false));
                jSONObject2.put("AB实验开关", p1.this.f12307f.getBoolean("bav_ab_config", false));
                jSONObject2.put("实时埋点事件", p1.this.f12307f.getString("real_time_events", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
                jSONObject2.put("禁止采集手机详情", p1.this.f12307f.getBoolean("forbid_report_phone_detail_info", false));
                long j13 = p1.this.f12307f.getLong(Module.CommonKey.FetchInterval, 0L);
                if (j13 <= 0) {
                    str4 = "--";
                } else {
                    str4 = j13 + "ms";
                }
                jSONObject2.put("服务端配置更新周期", str4);
                jSONObject2.put("禁止内部监控开关", p1.this.f12307f.getBoolean("applog_disable_monitor", false));
                int i10 = p1.this.f12307f.getInt("batch_event_size", -1);
                StringBuilder sb2 = new StringBuilder();
                if (i10 < 0) {
                    num = "--";
                } else {
                    num = Integer.valueOf(i10);
                }
                sb2.append(num);
                sb2.append("条");
                jSONObject2.put("事件累计上报数量", sb2.toString());
                jSONObject2.put("禁止采集的敏感字段", p1.this.f12307f.getString("sensitive_fields", "--"));
                jSONObject2.put("服务端黑名单事件", p1.this.f12312k);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public p1(d dVar, Context context, InitConfig initConfig) {
        HashSet hashSet = new HashSet();
        this.f12311j = hashSet;
        HashSet hashSet2 = new HashSet();
        this.f12312k = hashSet2;
        this.f12314m = 0;
        this.f12315n = 27;
        this.f12316o = 0L;
        this.f12317p = 0;
        this.f12318q = 0L;
        this.f12319r = false;
        this.f12320s = 1;
        this.f12303b = dVar;
        this.f12302a = context;
        this.f12304c = initConfig;
        SharedPreferences a10 = g4.a(context, initConfig.getSpName(), 0);
        this.f12307f = a10;
        this.f12305d = g4.a(context, b.a(dVar, "header_custom"), 0);
        this.f12306e = g4.a(context, b.a(dVar, "last_sp_session"), 0);
        Set<String> stringSet = a10.getStringSet("block_events_v1", null);
        if (stringSet != null) {
            hashSet.addAll(stringSet);
        }
        Set<String> stringSet2 = a10.getStringSet("block_events_v3", null);
        if (stringSet2 != null) {
            hashSet2.addAll(stringSet2);
        }
    }

    public JSONObject a() {
        JSONObject jSONObject = this.f12308g;
        if (jSONObject == null) {
            synchronized (this) {
                try {
                    jSONObject = new JSONObject(this.f12305d.getString("ab_configure", ""));
                } catch (Throwable unused) {
                }
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } finally {
                    }
                }
                this.f12308g = jSONObject;
            }
        }
        return jSONObject;
    }

    public String b() {
        String channel = this.f12304c.getChannel();
        if (TextUtils.isEmpty(channel)) {
            channel = this.f12304c.getTweakedChannel();
        }
        if (TextUtils.isEmpty(channel)) {
            try {
                return this.f12302a.getPackageManager().getApplicationInfo(this.f12302a.getPackageName(), 128).metaData.getString("UMENG_CHANNEL");
            } catch (Throwable th2) {
                this.f12303b.D.error(Collections.singletonList(ConfigManager.TAG), "getChannel failed", th2, new Object[0]);
                return channel;
            }
        }
        return channel;
    }

    public String c() {
        String str = this.f12309h;
        if (TextUtils.isEmpty(str)) {
            synchronized (this) {
                str = this.f12305d.getString("external_ab_version", "");
                this.f12309h = str;
            }
        }
        return str;
    }

    public long d() {
        return this.f12307f.getLong("session_interval", 30000L);
    }

    public String e() {
        StringBuilder a10 = com.bytedance.bdtracker.a.a("ssid_");
        a10.append(this.f12304c.getAid());
        return a10.toString();
    }

    public String f() {
        return this.f12305d.getString("user_unique_id", "");
    }

    public boolean g() {
        if (this.f12304c.isAbEnable() && this.f12307f.getBoolean("bav_ab_config", this.f12304c.isAbEnable())) {
            return true;
        }
        return false;
    }

    public boolean h() {
        int i10;
        if (this.f12304c.getProcess() == 0) {
            String b10 = l0.b.b();
            if (!TextUtils.isEmpty(b10)) {
                InitConfig initConfig = this.f12304c;
                if (b10.contains(":")) {
                    i10 = 2;
                } else {
                    i10 = 1;
                }
                initConfig.setProcess(i10);
            } else {
                this.f12304c.setProcess(0);
            }
        }
        if (this.f12304c.getProcess() != 1) {
            return false;
        }
        return true;
    }

    public boolean i() {
        return this.f12307f.getBoolean("monitor_enabled", this.f12304c.isMonitorEnabled());
    }

    public boolean j() {
        if (this.f12304c.isOaidEnabled() && !a("oaid")) {
            return true;
        }
        return false;
    }

    public void k() {
        if (this.f12307f.getLong("app_log_last_config_time", 0L) <= 0) {
            return;
        }
        LogUtils.sendJsonFetcher("remote_settings", new a());
    }

    public void a(HashSet<String> hashSet, HashSet<String> hashSet2) {
        this.f12311j.clear();
        this.f12312k.clear();
        if (hashSet != null) {
            this.f12311j.addAll(hashSet);
        }
        this.f12307f.edit().putStringSet("block_events_v1", this.f12311j).apply();
        if (hashSet2 != null) {
            this.f12312k.addAll(hashSet2);
        }
        this.f12307f.edit().putStringSet("block_events_v3", this.f12312k).apply();
    }

    public boolean a(int i10) {
        long j10 = i10;
        return j10 >= 50 && j10 <= 9999;
    }

    public final boolean a(long j10) {
        return j10 >= 10000 && j10 <= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    public final boolean a(String str) {
        String string = this.f12307f.getString("sensitive_fields", "");
        return !TextUtils.isEmpty(string) && string.contains(str);
    }

    public boolean a(List<u3> list, e0 e0Var) {
        h2 h2Var;
        if (list == null || list.size() == 0 || (this.f12311j.isEmpty() && this.f12312k.isEmpty())) {
            return true;
        }
        Iterator<u3> it = list.iterator();
        while (it.hasNext()) {
            u3 next = it.next();
            if (next instanceof b4) {
                if (this.f12312k.contains(((b4) next).f11880u)) {
                    it.remove();
                    h2Var = e0Var.f11968q;
                    k2.a(h2Var, 2L, e0Var.d(), 1002);
                }
            } else if (next instanceof x3) {
                JSONObject h10 = next.h();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(h10.optString(ITTVideoEngineEventSource.KEY_TAG));
                sb2.append(!TextUtils.isEmpty(h10.optString("label")) ? h10.optString("label") : "");
                if (this.f12311j.contains(sb2.toString())) {
                    it.remove();
                    h2Var = e0Var.f11968q;
                    k2.a(h2Var, 2L, e0Var.d(), 1002);
                }
            }
        }
        return true;
    }

    public List<u3> a(List<u3> list) {
        Iterator<u3> it = list.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            u3 next = it.next();
            if (next instanceof b4) {
                b4 b4Var = (b4) next;
                HashSet<String> hashSet = this.f12313l;
                if (hashSet == null) {
                    try {
                        JSONArray jSONArray = new JSONArray(this.f12307f.getString("real_time_events", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
                        int length = jSONArray.length();
                        HashSet<String> hashSet2 = new HashSet<>();
                        for (int i10 = 0; i10 < length; i10++) {
                            String string = jSONArray.getString(i10);
                            if (!TextUtils.isEmpty(string)) {
                                hashSet2.add(string);
                            }
                        }
                        hashSet = hashSet2;
                    } catch (Throwable th2) {
                        this.f12303b.D.error(Collections.singletonList(ConfigManager.TAG), "getRealTimeEvents failed", th2, new Object[0]);
                        hashSet = new HashSet<>();
                    }
                }
                this.f12313l = hashSet;
                if (hashSet.contains(b4Var.f11880u)) {
                    it.remove();
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public void a(@NonNull JSONObject jSONObject) {
        int optInt = jSONObject.optInt("backoff_ratio", 0);
        this.f12314m = optInt;
        if (optInt < 0 || optInt > 10000) {
            this.f12314m = 0;
        }
        int i10 = this.f12314m > 0 ? 1 : 27;
        int optInt2 = jSONObject.optInt("max_request_frequency", i10);
        this.f12315n = optInt2;
        if (optInt2 < 1 || optInt2 > 27) {
            this.f12315n = i10;
        }
        int i11 = this.f12314m;
        if (i11 > 0 && this.f12316o == 0) {
            this.f12316o = System.currentTimeMillis();
            this.f12317p = 1;
        } else if (i11 == 0) {
            this.f12316o = 0L;
            this.f12317p = 0;
        }
        this.f12318q = jSONObject.optLong("batch_event_interval", 0L) * 1000;
        this.f12319r = jSONObject.optInt("enter_background_not_send") == 1;
        IAppLogLogger iAppLogLogger = this.f12303b.D;
        List<String> singletonList = Collections.singletonList(ConfigManager.TAG);
        StringBuilder a10 = com.bytedance.bdtracker.a.a("updateLogRespConfig mBackoffRatio: ");
        a10.append(this.f12314m);
        a10.append(", mMaxRequestFrequency: ");
        a10.append(this.f12315n);
        a10.append(", mBackoffWindowStartTime: ");
        a10.append(this.f12316o);
        a10.append(", mBackoffWindowSendCount: ");
        a10.append(this.f12317p);
        a10.append(", mEventIntervalFromLogResp: ");
        a10.append(this.f12318q);
        iAppLogLogger.debug(singletonList, a10.toString(), new Object[0]);
    }
}
