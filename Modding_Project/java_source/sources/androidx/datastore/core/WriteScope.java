package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: StorageConnection.kt */
@Metadata
/* loaded from: classes2.dex */
public interface WriteScope<T> extends ReadScope<T> {
    @Nullable
    Object writeData(T t10, @NotNull c<? super Unit> cVar);
}
