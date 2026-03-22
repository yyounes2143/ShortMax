package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import com.facebook.appevents.h0;
import com.facebook.login.LoginClient;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LoginLogger.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLoginLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginLogger.kt\ncom/facebook/login/LoginLogger\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,260:1\n467#2,7:261\n*S KotlinDebug\n*F\n+ 1 LoginLogger.kt\ncom/facebook/login/LoginLogger\n*L\n135#1:261,7\n*E\n"})
/* loaded from: classes3.dex */
public final class o {
    @NotNull

    /* renamed from: d */
    public static final a f16601d = new a(null);

    /* renamed from: e */
    private static final ScheduledExecutorService f16602e = Executors.newSingleThreadScheduledExecutor();
    @NotNull

    /* renamed from: a */
    private final String f16603a;
    @NotNull

    /* renamed from: b */
    private final h0 f16604b;
    @Nullable

    /* renamed from: c */
    private String f16605c;

    /* compiled from: LoginLogger.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bundle b(String str) {
            Bundle bundle = new Bundle();
            bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
            bundle.putString("0_auth_logger_id", str);
            bundle.putString("3_method", "");
            bundle.putString("2_result", "");
            bundle.putString("5_error_message", "");
            bundle.putString("4_error_code", "");
            bundle.putString("6_extras", "");
            return bundle;
        }

        private a() {
        }
    }

    public o(@NotNull Context context, @NotNull String applicationId) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        this.f16603a = applicationId;
        this.f16604b = new h0(context, applicationId);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (packageInfo = packageManager.getPackageInfo(FbValidationUtils.FB_PACKAGE, 0)) != null) {
                this.f16605c = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    private final void g(String str) {
        if (!o4.a.d(this)) {
            try {
                final Bundle b10 = f16601d.b(str);
                f16602e.schedule(new Runnable() { // from class: com.facebook.login.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        o.h(o.this, b10);
                    }
                }, 5L, TimeUnit.SECONDS);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public static final void h(o this$0, Bundle bundle) {
        if (o4.a.d(o.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(bundle, "$bundle");
            this$0.f16604b.g("fb_mobile_login_heartbeat", bundle);
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    public static /* synthetic */ void k(o oVar, String str, String str2, String str3, int i10, Object obj) {
        if (o4.a.d(o.class)) {
            return;
        }
        if ((i10 & 4) != 0) {
            str3 = "";
        }
        try {
            oVar.j(str, str2, str3);
        } catch (Throwable th2) {
            o4.a.b(th2, o.class);
        }
    }

    @NotNull
    public final String b() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f16603a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public final void c(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Map<String, String> map, @Nullable String str6) {
        if (!o4.a.d(this)) {
            try {
                Bundle b10 = f16601d.b(str);
                if (str3 != null) {
                    b10.putString("2_result", str3);
                }
                if (str4 != null) {
                    b10.putString("5_error_message", str4);
                }
                if (str5 != null) {
                    b10.putString("4_error_code", str5);
                }
                if (map != null && !map.isEmpty()) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (entry.getKey() != null) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    b10.putString("6_extras", new JSONObject(linkedHashMap).toString());
                }
                b10.putString("3_method", str2);
                this.f16604b.g(str6, b10);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public final void d(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!o4.a.d(this)) {
            try {
                Bundle b10 = f16601d.b(str);
                b10.putString("3_method", str2);
                this.f16604b.g(str3, b10);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public final void e(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!o4.a.d(this)) {
            try {
                Bundle b10 = f16601d.b(str);
                b10.putString("3_method", str2);
                this.f16604b.g(str3, b10);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    public final void f(@Nullable String str, @NotNull Map<String, String> loggingExtras, @Nullable LoginClient.Result.Code code, @Nullable Map<String, String> map, @Nullable Exception exc, @Nullable String str2) {
        String str3;
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(loggingExtras, "loggingExtras");
            Bundle b10 = f16601d.b(str);
            if (code != null) {
                b10.putString("2_result", code.getLoggingValue());
            }
            JSONObject jSONObject = null;
            if (exc != null) {
                str3 = exc.getMessage();
            } else {
                str3 = null;
            }
            if (str3 != null) {
                b10.putString("5_error_message", exc.getMessage());
            }
            if (!loggingExtras.isEmpty()) {
                jSONObject = new JSONObject(loggingExtras);
            }
            if (map != null) {
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                try {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        if (key != null) {
                            jSONObject.put(key, value);
                        }
                    }
                } catch (JSONException unused) {
                }
            }
            if (jSONObject != null) {
                b10.putString("6_extras", jSONObject.toString());
            }
            this.f16604b.g(str2, b10);
            if (code == LoginClient.Result.Code.SUCCESS) {
                g(str);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void i(@NotNull LoginClient.Request pendingLoginRequest, @Nullable String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(pendingLoginRequest, "pendingLoginRequest");
            Bundle b10 = f16601d.b(pendingLoginRequest.b());
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("login_behavior", pendingLoginRequest.k().toString());
                jSONObject.put("request_code", LoginClient.f16448m.b());
                jSONObject.put("permissions", TextUtils.join(",", pendingLoginRequest.o()));
                jSONObject.put("default_audience", pendingLoginRequest.g().toString());
                jSONObject.put("isReauthorize", pendingLoginRequest.z());
                String str2 = this.f16605c;
                if (str2 != null) {
                    jSONObject.put("facebookVersion", str2);
                }
                if (pendingLoginRequest.l() != null) {
                    jSONObject.put("target_app", pendingLoginRequest.l().toString());
                }
                b10.putString("6_extras", jSONObject.toString());
            } catch (JSONException unused) {
            }
            this.f16604b.g(str, b10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void j(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (!o4.a.d(this)) {
            try {
                Bundle b10 = f16601d.b("");
                b10.putString("2_result", LoginClient.Result.Code.ERROR.getLoggingValue());
                b10.putString("5_error_message", str2);
                b10.putString("3_method", str3);
                this.f16604b.g(str, b10);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }
}
