package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DataMigration.kt */
@Metadata
/* loaded from: classes2.dex */
public interface DataMigration<T> {
    @Nullable
    Object cleanUp(@NotNull c<? super Unit> cVar);

    @Nullable
    Object migrate(T t10, @NotNull c<? super T> cVar);

    @Nullable
    Object shouldMigrate(T t10, @NotNull c<? super Boolean> cVar);
}
