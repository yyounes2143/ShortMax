package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeepRecursive.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a<T, R> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final at.n<b<T, R>, T, rs.c<? super R>, Object> f62625a;

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull at.n<? super b<T, R>, ? super T, ? super rs.c<? super R>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.f62625a = block;
    }

    @NotNull
    public final at.n<b<T, R>, T, rs.c<? super R>, Object> a() {
        return this.f62625a;
    }
}
