package q1;

import android.app.Activity;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MetadataIndexer.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f65021a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final String f65022b = b.class.getCanonicalName();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f65023c;

    private b() {
    }

    public static final void b() {
        try {
            if (o4.a.d(b.class)) {
                return;
            }
            try {
                v.u().execute(new Runnable() { // from class: q1.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.c();
                    }
                });
            } catch (Exception e10) {
                u0.j0(f65022b, e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c() {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            if (!com.facebook.internal.b.f16149f.h(v.l())) {
                f65021a.e();
                f65023c = true;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    @UiThread
    public static final void d(@NotNull Activity activity) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            try {
                if (f65023c && !d.f65025d.c().isEmpty()) {
                    f.f65032e.e(activity);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    private final void e() {
        String p10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null || (p10 = u10.p()) == null) {
                return;
            }
            d.f65025d.d(p10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
