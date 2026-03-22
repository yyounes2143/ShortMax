package com.bytedance.bdtracker;

import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class v2 implements q2 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public String f12466a;

    /* renamed from: b  reason: collision with root package name */
    public long f12467b;

    /* renamed from: c  reason: collision with root package name */
    public int f12468c = 1;

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        params.put("api_name", this.f12466a);
        params.put("api_time", this.f12467b);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "api_call";
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
        return Integer.valueOf(this.f12468c);
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        return l0.b.a();
    }
}
