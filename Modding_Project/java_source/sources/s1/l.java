package s1;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.b0;
import com.facebook.internal.f0;
import com.facebook.internal.i0;
import com.facebook.internal.u0;
import com.facebook.v;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s1.l;
/* compiled from: ViewIndexer.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f66241e = new a(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final String f66242f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static l f66243g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f66244a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Activity> f66245b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Timer f66246c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f66247d;

    /* compiled from: ViewIndexer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(b0 it) {
            Intrinsics.checkNotNullParameter(it, "it");
            i0.f16209e.b(LoggingBehavior.APP_EVENTS, l.d(), "App index sent to FB!");
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @Nullable
        public final GraphRequest b(@Nullable String str, @Nullable AccessToken accessToken, @Nullable String str2, @NotNull String requestType) {
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            if (str == null) {
                return null;
            }
            GraphRequest.c cVar = GraphRequest.f14841n;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%s/app_indexing", Arrays.copyOf(new Object[]{str2}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            GraphRequest A = cVar.A(accessToken, format, null, null);
            Bundle u10 = A.u();
            if (u10 == null) {
                u10 = new Bundle();
            }
            u10.putString("tree", str);
            u10.putString("app_version", a2.h.c());
            u10.putString("platform", "android");
            u10.putString("request_type", requestType);
            if (Intrinsics.areEqual(requestType, "app_indexing")) {
                u10.putString("device_session_id", e.g());
            }
            A.H(u10);
            A.D(new GraphRequest.b() { // from class: s1.k
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    l.a.c(b0Var);
                }
            });
            return A;
        }

        private a() {
        }
    }

    /* compiled from: ViewIndexer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private static final class b implements Callable<String> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<View> f66248a;

        public b(@NotNull View rootView) {
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            this.f66248a = new WeakReference<>(rootView);
        }

        @Override // java.util.concurrent.Callable
        @NotNull
        /* renamed from: a */
        public String call() {
            View view = this.f66248a.get();
            if (view != null && view.getWidth() != 0 && view.getHeight() != 0) {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(view.width,…t, Bitmap.Config.RGB_565)");
                view.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
                String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(outputStr…eArray(), Base64.NO_WRAP)");
                return encodeToString;
            }
            return "";
        }
    }

    /* compiled from: ViewIndexer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends TimerTask {
        c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                Activity activity = (Activity) l.c(l.this).get();
                View d10 = a2.h.d(activity);
                if (activity != null && d10 != null) {
                    String simpleName = activity.getClass().getSimpleName();
                    if (!e.h()) {
                        return;
                    }
                    if (f0.b()) {
                        t1.c.a();
                        return;
                    }
                    FutureTask futureTask = new FutureTask(new b(d10));
                    l.e(l.this).post(futureTask);
                    String str = "";
                    try {
                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                    } catch (Exception e10) {
                        Log.e(l.d(), "Failed to take screenshot.", e10);
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("screenname", simpleName);
                        jSONObject.put("screenshot", str);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(t1.d.d(d10));
                        jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, jSONArray);
                    } catch (JSONException unused) {
                        Log.e(l.d(), "Failed to create JSONObject");
                    }
                    String jSONObject2 = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "viewTree.toString()");
                    l.f(l.this, jSONObject2);
                }
            } catch (Exception e11) {
                Log.e(l.d(), "UI Component tree indexing failure!", e11);
            }
        }
    }

    static {
        String canonicalName = l.class.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = "";
        }
        f66242f = canonicalName;
    }

    public l(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f66245b = new WeakReference<>(activity);
        this.f66247d = null;
        this.f66244a = new Handler(Looper.getMainLooper());
        f66243g = this;
    }

    public static final /* synthetic */ WeakReference c(l lVar) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            return lVar.f66245b;
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    public static final /* synthetic */ String d() {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            return f66242f;
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    public static final /* synthetic */ Handler e(l lVar) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            return lVar.f66244a;
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    public static final /* synthetic */ void f(l lVar, String str) {
        if (o4.a.d(l.class)) {
            return;
        }
        try {
            lVar.j(str);
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(l this$0, TimerTask indexingTask) {
        if (o4.a.d(l.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(indexingTask, "$indexingTask");
            try {
                Timer timer = this$0.f66246c;
                if (timer != null) {
                    timer.cancel();
                }
                this$0.f66247d = null;
                Timer timer2 = new Timer();
                timer2.scheduleAtFixedRate(indexingTask, 0L, 1000L);
                this$0.f66246c = timer2;
            } catch (Exception e10) {
                Log.e(f66242f, "Error scheduling indexing job", e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
        }
    }

    private final void j(final String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            v.u().execute(new Runnable() { // from class: s1.j
                @Override // java.lang.Runnable
                public final void run() {
                    l.k(str, this);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String tree, l this$0) {
        if (o4.a.d(l.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(tree, "$tree");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            String n02 = u0.n0(tree);
            AccessToken e10 = AccessToken.f14731l.e();
            if (n02 != null && Intrinsics.areEqual(n02, this$0.f66247d)) {
                return;
            }
            this$0.g(f66241e.b(tree, e10, v.m(), "app_indexing"), n02);
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
        }
    }

    public final void g(@Nullable GraphRequest graphRequest, @Nullable String str) {
        if (o4.a.d(this) || graphRequest == null) {
            return;
        }
        try {
            b0 k10 = graphRequest.k();
            try {
                JSONObject c10 = k10.c();
                if (c10 != null) {
                    if (Intrinsics.areEqual("true", c10.optString("success"))) {
                        i0.f16209e.b(LoggingBehavior.APP_EVENTS, f66242f, "Successfully send UI component tree to server");
                        this.f66247d = str;
                    }
                    if (c10.has("is_app_indexing_enabled")) {
                        e.n(c10.getBoolean("is_app_indexing_enabled"));
                        return;
                    }
                    return;
                }
                String str2 = f66242f;
                Log.e(str2, "Error sending UI component tree to Facebook: " + k10.b());
            } catch (JSONException e10) {
                Log.e(f66242f, "Error decoding server response.", e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void h() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            final c cVar = new c();
            try {
                v.u().execute(new Runnable() { // from class: s1.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.i(l.this, cVar);
                    }
                });
            } catch (RejectedExecutionException e10) {
                Log.e(f66242f, "Error scheduling indexing job", e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void l() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (this.f66245b.get() == null) {
                return;
            }
            try {
                Timer timer = this.f66246c;
                if (timer != null) {
                    timer.cancel();
                }
                this.f66246c = null;
            } catch (Exception e10) {
                Log.e(f66242f, "Error unscheduling indexing job", e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
