package androidx.datastore.core;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: StorageConnection.kt */
@Metadata
/* loaded from: classes2.dex */
public interface StorageConnection<T> extends Closeable {
    @NotNull
    InterProcessCoordinator getCoordinator();

    @Nullable
    <R> Object readScope(@NotNull n<? super ReadScope<T>, ? super Boolean, ? super c<? super R>, ? extends Object> nVar, @NotNull c<? super R> cVar);

    @Nullable
    Object writeScope(@NotNull Function2<? super WriteScope<T>, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar);
}
