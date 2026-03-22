package bd;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingLogger.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f2605a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static c f2606b = new a();

    private b() {
    }

    public final void a(@Nullable String str, @Nullable String str2) {
        f2606b.a(str, str2);
    }

    public final void b(@Nullable String str, @Nullable String str2) {
        f2606b.b(str, str2);
    }

    public final void c(@NotNull c logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        f2606b = logger;
    }
}
