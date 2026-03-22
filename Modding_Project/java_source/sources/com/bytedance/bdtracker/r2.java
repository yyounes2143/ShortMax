package com.bytedance.bdtracker;

import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class r2 implements q2 {

    /* renamed from: a  reason: collision with root package name */
    public final int f12370a;

    public r2(int i10) {
        this.f12370a = i10;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        return l0.b.a();
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "data_storage_count";
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
        return "data_statistics";
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<Number> f() {
        return l0.b.d();
    }

    @Override // com.bytedance.bdtracker.p2
    public Object g() {
        return Integer.valueOf(this.f12370a);
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        Intrinsics.checkParameterIsNotNull(params, "params");
        p2.a.a(params);
    }
}
