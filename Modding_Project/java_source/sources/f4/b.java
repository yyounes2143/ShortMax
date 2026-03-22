package f4;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrescoSystrace.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f51599a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f51600b = new C0740b();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static c f51601c;

    /* compiled from: FrescoSystrace.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
    }

    /* compiled from: FrescoSystrace.kt */
    @Metadata
    /* renamed from: f4.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private static final class C0740b implements a {
    }

    /* compiled from: FrescoSystrace.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface c {
        void a(@NotNull String str);

        void b();

        boolean isTracing();
    }

    private b() {
    }

    public static final void a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        f51599a.c().a(name);
    }

    public static final void b() {
        f51599a.c().b();
    }

    private final c c() {
        f4.a aVar;
        c cVar = f51601c;
        if (cVar == null) {
            synchronized (b.class) {
                aVar = new f4.a();
                f51601c = aVar;
            }
            return aVar;
        }
        return cVar;
    }

    public static final boolean d() {
        return f51599a.c().isTracing();
    }
}
