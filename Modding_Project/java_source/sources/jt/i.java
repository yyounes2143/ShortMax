package jt;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata
/* loaded from: classes8.dex */
public interface i<E> {
    void cancel(@Nullable CancellationException cancellationException);

    @NotNull
    f<E> iterator();

    @NotNull
    pt.d<kotlinx.coroutines.channels.a<E>> j();

    @NotNull
    Object l();

    @Nullable
    Object n(@NotNull rs.c<? super kotlinx.coroutines.channels.a<? extends E>> cVar);

    @Nullable
    Object w(@NotNull rs.c<? super E> cVar);
}
