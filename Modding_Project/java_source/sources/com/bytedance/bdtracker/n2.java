package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class n2 implements z2 {

    /* renamed from: a  reason: collision with root package name */
    public final long f12250a = 1;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public String f12251b;

    /* renamed from: c  reason: collision with root package name */
    public long f12252c;

    public n2(@Nullable String str, long j10) {
        this.f12251b = str;
        this.f12252c = j10;
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        params.put("api_name", this.f12251b);
        params.put("api_time", this.f12252c);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "api_usage";
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
        return this.f12250a;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        if (TextUtils.isEmpty(this.f12251b)) {
            return l0.b.a();
        }
        return CollectionsKt.q("metrics_category", "metrics_name", "api_name");
    }
}
