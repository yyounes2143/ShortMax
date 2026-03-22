package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: StorageConnection.kt */
@Metadata
/* loaded from: classes2.dex */
public final class StorageConnectionKt {
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <T> Object readData(@NotNull StorageConnection<T> storageConnection, @NotNull c<? super T> cVar) {
        return storageConnection.readScope(new StorageConnectionKt$readData$2(null), cVar);
    }

    @Nullable
    public static final <T> Object writeData(@NotNull StorageConnection<T> storageConnection, T t10, @NotNull c<? super Unit> cVar) {
        Object writeScope = storageConnection.writeScope(new StorageConnectionKt$writeData$2(t10, null), cVar);
        if (writeScope == kotlin.coroutines.intrinsics.a.f()) {
            return writeScope;
        }
        return Unit.f60915a;
    }
}
