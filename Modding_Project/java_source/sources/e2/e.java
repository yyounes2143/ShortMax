package e2;

import android.app.Activity;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.v;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SuggestedEventsManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f50763a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f50764b = new AtomicBoolean(false);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f50765c = new LinkedHashSet();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f50766d = new LinkedHashSet();

    private e() {
    }

    public static final synchronized void b() {
        synchronized (e.class) {
            if (o4.a.d(e.class)) {
                return;
            }
            v.u().execute(new Runnable() { // from class: e2.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f50764b;
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            f50763a.d();
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    private final void d() {
        String x10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null || (x10 = u10.x()) == null) {
                return;
            }
            g(x10);
            if (f50765c.isEmpty() && f50766d.isEmpty()) {
                return;
            }
            File l10 = ModelManager.l(ModelManager.Task.MTML_APP_EVENT_PREDICTION);
            if (l10 == null) {
                return;
            }
            a.d(l10);
            Activity m10 = a2.g.m();
            if (m10 != null) {
                h(m10);
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final boolean e(@NotNull String event) {
        if (o4.a.d(e.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(event, "event");
            return f50766d.contains(event);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return false;
        }
    }

    public static final boolean f(@NotNull String event) {
        if (o4.a.d(e.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(event, "event");
            return f50765c.contains(event);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return false;
        }
    }

    public static final void h(@NotNull Activity activity) {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            try {
                if (!f50764b.get() || !a.f() || (f50765c.isEmpty() && f50766d.isEmpty())) {
                    g.f50768d.b(activity);
                    return;
                }
                g.f50768d.a(activity);
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void g(@Nullable String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("production_events")) {
                JSONArray jSONArray = jSONObject.getJSONArray("production_events");
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    Set<String> set = f50765c;
                    String string = jSONArray.getString(i10);
                    Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                    set.add(string);
                }
            }
            if (jSONObject.has("eligible_for_prediction_events")) {
                JSONArray jSONArray2 = jSONObject.getJSONArray("eligible_for_prediction_events");
                int length2 = jSONArray2.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    Set<String> set2 = f50766d;
                    String string2 = jSONArray2.getString(i11);
                    Intrinsics.checkNotNullExpressionValue(string2, "jsonArray.getString(i)");
                    set2.add(string2);
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
