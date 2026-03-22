package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DataStore.kt */
@Metadata
/* loaded from: classes2.dex */
public interface DataStore<T> {
    @NotNull
    b<T> getData();

    @Nullable
    Object updateData(@NotNull Function2<? super T, ? super c<? super T>, ? extends Object> function2, @NotNull c<? super T> cVar);
}
