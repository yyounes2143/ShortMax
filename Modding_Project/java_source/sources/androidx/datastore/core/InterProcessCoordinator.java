package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InterProcessCoordinator.kt */
@Metadata
/* loaded from: classes2.dex */
public interface InterProcessCoordinator {
    @NotNull
    b<Unit> getUpdateNotifications();

    @Nullable
    Object getVersion(@NotNull c<? super Integer> cVar);

    @Nullable
    Object incrementAndGetVersion(@NotNull c<? super Integer> cVar);

    @Nullable
    <T> Object lock(@NotNull Function1<? super c<? super T>, ? extends Object> function1, @NotNull c<? super T> cVar);

    @Nullable
    <T> Object tryLock(@NotNull Function2<? super Boolean, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar);
}
