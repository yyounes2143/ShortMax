package ga;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52235a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static InterfaceC0751a f52236b = new b();

    @Metadata
    /* renamed from: ga.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0751a {
        void a(@Nullable String str, @Nullable String str2);

        void b(@Nullable String str, @Nullable String str2);

        void c(@Nullable String str, @Nullable String str2);
    }

    public final void a(@NotNull InterfaceC0751a logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        f52236b = logger;
    }

    public final void b(@Nullable String str, @Nullable String str2) {
        f52236b.c(str, str2);
    }

    public final void c(@Nullable String str, @Nullable String str2) {
        f52236b.a(str, str2);
    }

    public final void d(@Nullable String str, @Nullable String str2) {
        f52236b.b(str, str2);
    }
}
