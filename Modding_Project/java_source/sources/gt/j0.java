package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultExecutor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f52543a = mt.b0.f("kotlinx.coroutines.main.delay", false);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final m0 f52544b = b();

    @NotNull
    public static final m0 a() {
        return f52544b;
    }

    private static final m0 b() {
        if (!f52543a) {
            return i0.f52539g;
        }
        j1 c10 = q0.c();
        if (!mt.r.c(c10) && (c10 instanceof m0)) {
            return (m0) c10;
        }
        return i0.f52539g;
    }
}
