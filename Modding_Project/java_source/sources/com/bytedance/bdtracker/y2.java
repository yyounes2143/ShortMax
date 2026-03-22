package com.bytedance.bdtracker;

import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class y2 implements z2 {

    /* renamed from: a  reason: collision with root package name */
    public final long f12530a;

    public y2(long j10) {
        this.f12530a = j10;
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        l0.b.a((z2) this, params);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "sdk_init";
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
        return "sdk_usage";
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<Number> f() {
        return l0.b.d();
    }

    @Override // com.bytedance.bdtracker.p2
    public Object g() {
        return Long.valueOf(h());
    }

    public long h() {
        return this.f12530a;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        return l0.b.a();
    }
}
