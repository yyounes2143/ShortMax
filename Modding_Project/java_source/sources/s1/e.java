package s1;

import android.app.Activity;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CodelessManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class e {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static SensorManager f66208c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static l f66209d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static String f66210e;

    /* renamed from: h  reason: collision with root package name */
    private static volatile boolean f66213h;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f66206a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final m f66207b = new m();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f66211f = new AtomicBoolean(true);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final AtomicBoolean f66212g = new AtomicBoolean(false);

    private e() {
    }

    private final void c(final String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (f66213h) {
                return;
            }
            f66213h = true;
            v.u().execute(new Runnable() { // from class: s1.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.d(str);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str) {
        String str2;
        String str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            com.facebook.internal.b e10 = com.facebook.internal.b.f16149f.e(v.l());
            JSONArray jSONArray = new JSONArray();
            String str4 = Build.MODEL;
            if (str4 == null) {
                str4 = "";
            }
            jSONArray.put(str4);
            if (e10 != null) {
                str2 = e10.h();
            } else {
                str2 = null;
            }
            if (str2 != null) {
                jSONArray.put(e10.h());
            } else {
                jSONArray.put("");
            }
            jSONArray.put(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            if (a2.h.e()) {
                str3 = "1";
            }
            jSONArray.put(str3);
            Locale B = u0.B();
            jSONArray.put(B.getLanguage() + '_' + B.getCountry());
            String jSONArray2 = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(jSONArray2, "extInfoArray.toString()");
            bundle.putString("device_session_id", g());
            bundle.putString("extinfo", jSONArray2);
            GraphRequest.c cVar = GraphRequest.f14841n;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            boolean z10 = true;
            String format = String.format(Locale.US, "%s/app_indexing_session", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            JSONObject c10 = cVar.B(null, format, bundle, null).k().c();
            AtomicBoolean atomicBoolean = f66212g;
            if (c10 == null || !c10.optBoolean("is_app_indexing_enabled", false)) {
                z10 = false;
            }
            atomicBoolean.set(z10);
            if (!atomicBoolean.get()) {
                f66210e = null;
            } else {
                l lVar = f66209d;
                if (lVar != null) {
                    lVar.h();
                }
            }
            f66213h = false;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final void e() {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            f66211f.set(false);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final void f() {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            f66211f.set(true);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    @NotNull
    public static final String g() {
        if (o4.a.d(e.class)) {
            return null;
        }
        try {
            if (f66210e == null) {
                f66210e = UUID.randomUUID().toString();
            }
            String str = f66210e;
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            return str;
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return null;
        }
    }

    public static final boolean h() {
        if (o4.a.d(e.class)) {
            return false;
        }
        try {
            return f66212g.get();
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return false;
        }
    }

    private final boolean i() {
        o4.a.d(this);
        return false;
    }

    public static final void j(@NotNull Activity activity) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            g.f66215f.a().f(activity);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final void k(@NotNull Activity activity) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            if (!f66211f.get()) {
                return;
            }
            g.f66215f.a().h(activity);
            l lVar = f66209d;
            if (lVar != null) {
                lVar.l();
            }
            SensorManager sensorManager = f66208c;
            if (sensorManager != null) {
                sensorManager.unregisterListener(f66207b);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
        if (s1.e.f66206a.i() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void l(@org.jetbrains.annotations.NotNull android.app.Activity r7) {
        /*
            java.lang.Class<s1.e> r0 = s1.e.class
            boolean r1 = o4.a.d(r0)
            if (r1 == 0) goto L9
            return
        L9:
            java.lang.String r1 = "activity"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)     // Catch: java.lang.Throwable -> L36
            java.util.concurrent.atomic.AtomicBoolean r1 = s1.e.f66211f     // Catch: java.lang.Throwable -> L36
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L36
            if (r1 != 0) goto L17
            return
        L17:
            s1.g$a r1 = s1.g.f66215f     // Catch: java.lang.Throwable -> L36
            s1.g r1 = r1.a()     // Catch: java.lang.Throwable -> L36
            r1.e(r7)     // Catch: java.lang.Throwable -> L36
            android.content.Context r1 = r7.getApplicationContext()     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = com.facebook.v.m()     // Catch: java.lang.Throwable -> L36
            com.facebook.internal.p r3 = com.facebook.internal.FetchedAppSettingsManager.f(r2)     // Catch: java.lang.Throwable -> L36
            r4 = 1
            if (r3 == 0) goto L38
            boolean r5 = r3.d()     // Catch: java.lang.Throwable -> L36
            if (r5 != r4) goto L38
            goto L40
        L36:
            r7 = move-exception
            goto L85
        L38:
            s1.e r5 = s1.e.f66206a     // Catch: java.lang.Throwable -> L36
            boolean r5 = r5.i()     // Catch: java.lang.Throwable -> L36
            if (r5 == 0) goto L71
        L40:
            java.lang.String r5 = "sensor"
            java.lang.Object r1 = r1.getSystemService(r5)     // Catch: java.lang.Throwable -> L36
            android.hardware.SensorManager r1 = (android.hardware.SensorManager) r1     // Catch: java.lang.Throwable -> L36
            if (r1 != 0) goto L4b
            return
        L4b:
            s1.e.f66208c = r1     // Catch: java.lang.Throwable -> L36
            android.hardware.Sensor r4 = r1.getDefaultSensor(r4)     // Catch: java.lang.Throwable -> L36
            s1.l r5 = new s1.l     // Catch: java.lang.Throwable -> L36
            r5.<init>(r7)     // Catch: java.lang.Throwable -> L36
            s1.e.f66209d = r5     // Catch: java.lang.Throwable -> L36
            s1.m r7 = s1.e.f66207b     // Catch: java.lang.Throwable -> L36
            s1.c r6 = new s1.c     // Catch: java.lang.Throwable -> L36
            r6.<init>()     // Catch: java.lang.Throwable -> L36
            r7.a(r6)     // Catch: java.lang.Throwable -> L36
            r6 = 2
            r1.registerListener(r7, r4, r6)     // Catch: java.lang.Throwable -> L36
            if (r3 == 0) goto L71
            boolean r7 = r3.d()     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto L71
            r5.h()     // Catch: java.lang.Throwable -> L36
        L71:
            s1.e r7 = s1.e.f66206a     // Catch: java.lang.Throwable -> L36
            boolean r1 = r7.i()     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L84
            java.util.concurrent.atomic.AtomicBoolean r1 = s1.e.f66212g     // Catch: java.lang.Throwable -> L36
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L36
            if (r1 != 0) goto L84
            r7.c(r2)     // Catch: java.lang.Throwable -> L36
        L84:
            return
        L85:
            o4.a.b(r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s1.e.l(android.app.Activity):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(p pVar, String appId) {
        boolean z10;
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(appId, "$appId");
            if (pVar != null && pVar.d()) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean t10 = v.t();
            if (z10 && t10) {
                f66206a.c(appId);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    public static final void n(boolean z10) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            f66212g.set(z10);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }
}
