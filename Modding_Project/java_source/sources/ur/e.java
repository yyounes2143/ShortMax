package ur;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClientEvents.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final tr.c f68593a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f68594b;

    public e(@NotNull tr.c response, @NotNull Throwable cause) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(cause, "cause");
        this.f68593a = response;
        this.f68594b = cause;
    }
}
