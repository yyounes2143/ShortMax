package androidx.datastore.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CorruptionHandler.kt */
@Metadata
/* loaded from: classes2.dex */
public interface CorruptionHandler<T> {
    @Nullable
    Object handleCorruption(@NotNull CorruptionException corruptionException, @NotNull c<? super T> cVar);
}
