package com.bytedance.bdtracker;

import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class x2 implements p2 {

    /* renamed from: a  reason: collision with root package name */
    public int f12520a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public Integer f12521b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public String f12522c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public String f12523d;

    /* renamed from: e  reason: collision with root package name */
    public long f12524e;

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        if (this.f12522c != null) {
            params.put("err_code", 2003);
            params.put("err_message", this.f12522c);
            params.put("err_underlying_code", this.f12521b);
        }
        params.put("dim_success", this.f12520a);
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        String str = this.f12523d;
        if (str != null) {
            if (StringsKt.b0(str, "?", false, 2, null)) {
                str = str.substring(0, StringsKt.q0(str, "?", 0, false, 6, null));
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            if (str != null) {
                return str;
            }
        }
        return "";
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
        return "network_service";
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<Integer> f() {
        return CollectionsKt.q(0, 500, 1000, 1500, 2000, 2500, 5000);
    }

    @Override // com.bytedance.bdtracker.p2
    public Object g() {
        return Long.valueOf(this.f12524e);
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        if (this.f12521b == null) {
            return l0.b.a();
        }
        return CollectionsKt.q("metrics_category", "metrics_name", "err_underlying_code");
    }
}
