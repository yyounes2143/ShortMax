package com.bytedance.bdtracker;

import com.adjust.sdk.Constants;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class w2 implements z2 {

    /* renamed from: a  reason: collision with root package name */
    public long f12496a;

    public w2(long j10) {
        this.f12496a = j10;
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        l0.b.a((z2) this, params);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "db_delay_interval";
    }

    @Override // com.bytedance.bdtracker.o2
    public int c() {
        return 23;
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public JSONObject d() {
        return p2.a.a(this);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String e() {
        return "sdk_usage";
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<Integer> f() {
        return CollectionsKt.q(0, 1000, 10000, 60000, 300000, 1200000, Integer.valueOf((int) Constants.ONE_HOUR), 21600000);
    }

    @Override // com.bytedance.bdtracker.p2
    public Object g() {
        return Long.valueOf(h());
    }

    public long h() {
        return this.f12496a;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        return l0.b.a();
    }
}
