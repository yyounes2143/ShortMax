package androidx.datastore.preferences.core;

import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.Storage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import gt.g0;
import gt.q0;
import gt.r1;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.f;
/* compiled from: PreferenceDataStoreFactory.jvmAndroid.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PreferenceDataStoreFactory {
    @NotNull
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        if ((i10 & 8) != 0) {
            g0Var = i.a(Actual_jvmAndroidKt.ioDispatcher().plus(r1.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create(storage, replaceFileCorruptionHandler, list, g0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore createWithPath$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 2) != 0) {
            list = CollectionsKt.n();
        }
        if ((i10 & 4) != 0) {
            g0Var = i.a(Actual_jvmAndroidKt.ioDispatcher().plus(r1.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.createWithPath(replaceFileCorruptionHandler, list, g0Var, function0);
    }

    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return create$default(this, storage, (ReplaceFileCorruptionHandler) null, (List) null, (g0) null, 14, (Object) null);
    }

    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull Function0<Path> produceFile) {
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, migrations, null, produceFile, 4, null);
    }

    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return create$default(this, storage, replaceFileCorruptionHandler, (List) null, (g0) null, 12, (Object) null);
    }

    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function0<Path> produceFile) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return createWithPath$default(this, replaceFileCorruptionHandler, null, null, produceFile, 6, null);
    }

    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        return create$default(this, storage, replaceFileCorruptionHandler, migrations, (g0) null, 8, (Object) null);
    }

    @NotNull
    public final DataStore<Preferences> createWithPath(@NotNull Function0<Path> produceFile) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return createWithPath$default(this, null, null, null, produceFile, 7, null);
    }

    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, migrations, (g0) null, produceFile, 4, (Object) null);
    }

    @NotNull
    public final DataStore<Preferences> createWithPath(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull g0 scope, @NotNull final Function0<Path> produceFile) {
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create(replaceFileCorruptionHandler, migrations, scope, new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$createWithPath$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                return produceFile.invoke().toFile();
            }
        });
    }

    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, replaceFileCorruptionHandler, (List) null, (g0) null, produceFile, 6, (Object) null);
    }

    @NotNull
    public final DataStore<Preferences> create(@NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return create$default(this, (ReplaceFileCorruptionHandler) null, (List) null, (g0) null, produceFile, 7, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataStore create$default(PreferenceDataStoreFactory preferenceDataStoreFactory, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, g0 g0Var, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 2) != 0) {
            list = CollectionsKt.n();
        }
        if ((i10 & 4) != 0) {
            g0Var = i.a(q0.b().plus(r1.b(null, 1, null)));
        }
        return preferenceDataStoreFactory.create(replaceFileCorruptionHandler, list, g0Var, function0);
    }

    @NotNull
    public final DataStore<Preferences> create(@Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull g0 scope, @NotNull final Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return new PreferenceDataStore(create(new FileStorage(PreferencesFileSerializer.INSTANCE, null, new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                File invoke = produceFile.invoke();
                if (Intrinsics.areEqual(f.x(invoke), "preferences_pb")) {
                    File absoluteFile = invoke.getAbsoluteFile();
                    Intrinsics.checkNotNullExpressionValue(absoluteFile, "file.absoluteFile");
                    return absoluteFile;
                }
                throw new IllegalStateException(("File extension for file: " + invoke + " does not match required extension for Preferences file: preferences_pb").toString());
            }
        }, 2, null), replaceFileCorruptionHandler, migrations, scope));
    }

    @NotNull
    public final DataStore<Preferences> create(@NotNull Storage<Preferences> storage, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull List<? extends DataMigration<Preferences>> migrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.create(storage, replaceFileCorruptionHandler, migrations, scope));
    }
}
