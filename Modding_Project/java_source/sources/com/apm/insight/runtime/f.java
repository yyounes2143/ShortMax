package com.apm.insight.runtime;

import android.content.Context;
import com.apm.insight.l.c;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.vungle.ads.internal.signals.SignalManager;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: CrashTimes.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private Context f7192a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Long> f7193b;

    /* renamed from: c  reason: collision with root package name */
    private int f7194c;

    /* renamed from: d  reason: collision with root package name */
    private int f7195d;

    public f(Context context) {
        this.f7193b = null;
        this.f7194c = 50;
        this.f7195d = 100;
        this.f7192a = context;
        this.f7193b = b();
        this.f7194c = a.a(this.f7194c, "custom_event_settings", "npth_simple_setting", "crash_limit_issue");
        this.f7195d = a.a(this.f7195d, "custom_event_settings", "npth_simple_setting", "crash_limit_all");
    }

    private HashMap<String, Long> b() {
        JSONArray a10;
        File h10 = com.apm.insight.l.j.h(this.f7192a);
        HashMap<String, Long> hashMap = new HashMap<>();
        hashMap.put(CrashHianalyticsData.TIME, Long.valueOf(System.currentTimeMillis()));
        try {
            a10 = com.apm.insight.l.f.a(h10.getAbsolutePath());
        } catch (IOException unused) {
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
        if (com.apm.insight.a.a(a10)) {
            return hashMap;
        }
        Long decode = Long.decode(a10.optString(0, null));
        if (System.currentTimeMillis() - decode.longValue() > SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
            File g10 = com.apm.insight.l.j.g(this.f7192a);
            h10.renameTo(new File(g10, String.valueOf(System.currentTimeMillis())));
            String[] list = g10.list();
            if (list != null && list.length > 5) {
                Arrays.sort(list);
                new File(g10, list[0]).delete();
            }
            return hashMap;
        }
        hashMap.put(CrashHianalyticsData.TIME, decode);
        for (int i10 = 1; i10 < a10.length(); i10++) {
            String[] split = a10.optString(i10, "").split(" ");
            if (split.length == 2) {
                hashMap.put(split[0], Long.decode(split[1]));
            }
        }
        return hashMap;
    }

    public final void a() {
        HashMap<String, Long> hashMap = this.f7193b;
        Long remove = hashMap.remove(CrashHianalyticsData.TIME);
        if (remove == null) {
            com.apm.insight.c.a();
            j.a(new RuntimeException("err times, no time"), "NPTH_CATCH");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(remove);
        sb2.append('\n');
        for (Map.Entry<String, Long> entry : hashMap.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(' ');
            sb2.append(entry.getValue());
            sb2.append('\n');
        }
        try {
            com.apm.insight.l.f.a(com.apm.insight.l.j.h(this.f7192a), sb2.toString(), false);
        } catch (IOException unused) {
        }
    }

    public final boolean a(String str) {
        if (str == null) {
            str = DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
        }
        return c.AnonymousClass1.a(this.f7193b, str, 1L).longValue() < ((long) this.f7194c) && c.AnonymousClass1.a(this.f7193b, Module.ALL, 1L).longValue() < ((long) this.f7195d);
    }
}
