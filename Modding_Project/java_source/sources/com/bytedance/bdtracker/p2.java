package com.bytedance.bdtracker;

import com.bytedance.applog.log.LoggerImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public interface p2 extends o2 {

    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull
        public static JSONObject a(p2 p2Var) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("metrics_category", p2Var.e());
                jSONObject.put("metrics_name", p2Var.b());
                jSONObject.put("metrics_value", p2Var.g());
                p2Var.a(jSONObject);
            } catch (Throwable th2) {
                LoggerImpl.global().error("JSON handle failed", th2, new Object[0]);
            }
            return jSONObject;
        }

        public static void a(@NotNull JSONObject params) {
            Intrinsics.checkParameterIsNotNull(params, "params");
        }
    }

    void a(@NotNull JSONObject jSONObject);

    @NotNull
    String b();

    @NotNull
    JSONObject d();

    @NotNull
    String e();

    @NotNull
    Object g();
}
