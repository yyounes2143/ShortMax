package androidx.datastore.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: StorageConnection.kt */
@Metadata
/* loaded from: classes2.dex */
public interface ReadScope<T> extends Closeable {
    @Nullable
    Object readData(@NotNull c<? super T> cVar);
}
