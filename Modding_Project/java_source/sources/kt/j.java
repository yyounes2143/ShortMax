package kt;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Emitters.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j implements c<Object> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f62041a;

    public j(@NotNull Throwable th2) {
        this.f62041a = th2;
    }

    @Override // kt.c
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull rs.c<? super Unit> cVar) {
        throw this.f62041a;
    }
}
