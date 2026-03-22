package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import gt.g0;
import gt.q0;
import gt.r1;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiProcessDataStoreFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MultiProcessDataStoreFactory {
    @NotNull
    public static final MultiProcessDataStoreFactory INSTANCE = new MultiProcessDataStoreFactory();

    private MultiProcessDataStoreFactory() {
    }

    public static /* synthetic */ DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        if ((i10 & 8) != 0) {
            g0Var = i.a(q0.b().plus(r1.b(null, 1, null)));
        }
        return multiProcessDataStoreFactory.create(storage, replaceFileCorruptionHandler, list, g0Var);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, migrations, null, produceFile, 8, null);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, serializer, replaceFileCorruptionHandler, null, null, produceFile, 12, null);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, serializer, null, null, null, produceFile, 14, null);
    }

    public static /* synthetic */ DataStore create$default(MultiProcessDataStoreFactory multiProcessDataStoreFactory, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, Function0 function0, int i10, Object obj) {
        ReplaceFileCorruptionHandler replaceFileCorruptionHandler2 = (i10 & 2) != 0 ? null : replaceFileCorruptionHandler;
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        List list2 = list;
        if ((i10 & 8) != 0) {
            g0Var = i.a(q0.b().plus(r1.b(null, 1, null)));
        }
        return multiProcessDataStoreFactory.create(serializer, replaceFileCorruptionHandler2, list2, g0Var, function0);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return create$default(this, storage, null, null, null, 14, null);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, null, null, 12, null);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, migrations, null, 8, null);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Storage<T> storage, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        List e10 = CollectionsKt.e(DataMigrationInitializer.Companion.getInitializer(migrations));
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(storage, e10, replaceFileCorruptionHandler, scope);
    }

    @NotNull
    public final <T> DataStore<T> create(@NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<T>> migrations, @NotNull final g0 scope, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        FileStorage fileStorage = new FileStorage(serializer, new Function1<File, InterProcessCoordinator>() { // from class: androidx.datastore.core.MultiProcessDataStoreFactory$create$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final InterProcessCoordinator invoke(@NotNull File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new MultiProcessCoordinator(g0.this.getCoroutineContext(), it);
            }
        }, produceFile);
        List e10 = CollectionsKt.e(DataMigrationInitializer.Companion.getInitializer(migrations));
        if (replaceFileCorruptionHandler == null) {
            replaceFileCorruptionHandler = (ReplaceFileCorruptionHandler<T>) new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(fileStorage, e10, replaceFileCorruptionHandler, scope);
    }
}
