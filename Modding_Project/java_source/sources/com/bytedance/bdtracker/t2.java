package com.bytedance.bdtracker;

import androidx.core.app.NotificationCompat;
import com.bytedance.applog.monitor.MonitorSampling;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class t2 implements u2 {

    /* renamed from: a  reason: collision with root package name */
    public int f12398a = -1;

    /* renamed from: b  reason: collision with root package name */
    public final long f12399b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12400c;

    /* renamed from: d  reason: collision with root package name */
    public final long f12401d;

    public t2(long j10, @Nullable String str, long j11) {
        this.f12399b = j10;
        this.f12400c = str;
        this.f12401d = j11;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        return this.f12398a == -1 ? CollectionsKt.q("metrics_category", "metrics_name", "dims_0", "launch_id", CrashHianalyticsData.PROCESS_ID) : CollectionsKt.q("metrics_category", "metrics_name", "dims_0", "launch_id", CrashHianalyticsData.PROCESS_ID, "err_code");
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "event_process";
    }

    @Override // com.bytedance.bdtracker.o2
    public int c() {
        return 7;
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public JSONObject d() {
        return p2.a.a(this);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String e() {
        return NotificationCompat.CATEGORY_EVENT;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<Number> f() {
        return l0.b.d();
    }

    @Override // com.bytedance.bdtracker.p2
    public Object g() {
        return Long.valueOf(this.f12401d);
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        params.put("dims_0", this.f12399b);
        params.put(CrashHianalyticsData.PROCESS_ID, this.f12400c);
        params.put("launch_id", MonitorSampling.INSTANCE.getGlobalColdLaunchId$agent_liteGlobalRelease());
        if (this.f12399b == 13) {
            params.put("err_code", this.f12398a);
        }
    }
}
