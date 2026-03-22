package k9;

import j9.k0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CrashEventReceiver.kt */
@Metadata
/* loaded from: classes5.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f60685a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static k0 f60686b;

    private a() {
    }

    public static final void b() {
        try {
            if (f60686b == null) {
                f60685a.c(k0.f60318a.a());
            }
            a aVar = f60685a;
            if (aVar.a().b()) {
                aVar.a().c();
            }
        } catch (Exception unused) {
        }
    }

    @NotNull
    public final k0 a() {
        k0 k0Var = f60686b;
        if (k0Var != null) {
            return k0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sharedSessionRepository");
        return null;
    }

    public final void c(@NotNull k0 k0Var) {
        Intrinsics.checkNotNullParameter(k0Var, "<set-?>");
        f60686b = k0Var;
    }
}
