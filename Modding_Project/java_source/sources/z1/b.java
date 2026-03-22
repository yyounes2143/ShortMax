package z1;

import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BlocklistEventsManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71221b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f71220a = new b();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static Set<String> f71222c = new HashSet();

    private b() {
    }

    public static final void a() {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            f71220a.c();
            Set<String> set = f71222c;
            if (set != null && !set.isEmpty()) {
                f71221b = true;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    public static final boolean b(@NotNull String eventName) {
        if (o4.a.d(b.class)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (!f71221b) {
                return false;
            }
            return f71222c.contains(eventName);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return false;
        }
    }

    private final void c() {
        HashSet<String> m10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 != null && (m10 = u0.m(u10.c())) != null) {
                f71222c = m10;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
