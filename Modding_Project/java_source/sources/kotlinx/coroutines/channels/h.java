package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata
/* loaded from: classes8.dex */
public interface h<E> {

    /* compiled from: Channel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static /* synthetic */ boolean a(h hVar, Throwable th2, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    th2 = null;
                }
                return hVar.a(th2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }
    }

    boolean a(@Nullable Throwable th2);

    void c(@NotNull Function1<? super Throwable, Unit> function1);

    @NotNull
    Object h(E e10);

    boolean o();

    @Nullable
    Object p(E e10, @NotNull rs.c<? super Unit> cVar);
}
