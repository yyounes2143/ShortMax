package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: NoOpCorruptionHandler.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NoOpCorruptionHandler<T> implements CorruptionHandler<T> {
    @Override // androidx.datastore.core.CorruptionHandler
    @Nullable
    public Object handleCorruption(@NotNull CorruptionException corruptionException, @NotNull c<? super T> cVar) throws CorruptionException {
        throw corruptionException;
    }
}
