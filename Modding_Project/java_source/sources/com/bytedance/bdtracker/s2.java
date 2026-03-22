package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.p2;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class s2 implements q2 {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f12383a;

    public s2(@NotNull Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        this.f12383a = throwable;
    }

    @Override // com.bytedance.bdtracker.p2
    public void a(@NotNull JSONObject params) {
        Intrinsics.checkParameterIsNotNull(params, "params");
        StringWriter stringWriter = new StringWriter();
        this.f12383a.printStackTrace(new PrintWriter(stringWriter));
        String message = this.f12383a.getMessage();
        if (message == null) {
            message = "unknown";
        }
        params.put("err_underlying_code", message);
        params.put("err_message", stringWriter.toString());
    }

    @Override // com.bytedance.bdtracker.p2
    @NotNull
    public String b() {
        return "db_exception";
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
        return 1;
    }

    @Override // com.bytedance.bdtracker.o2
    @NotNull
    public List<String> a() {
        if (TextUtils.isEmpty(this.f12383a.getMessage())) {
            return l0.b.a();
        }
        return CollectionsKt.q("metrics_category", "metrics_name", "err_underlying_code");
    }
}
