package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SequenceBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class i<T> {
    @Nullable
    public abstract Object a(T t10, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    public abstract Object b(@NotNull Iterator<? extends T> it, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    public final Object c(@NotNull Sequence<? extends T> sequence, @NotNull rs.c<? super Unit> cVar) {
        Object b10 = b(sequence.iterator(), cVar);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Unit.f60915a;
    }
}
