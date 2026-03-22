package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DatabaseConfiguration.android.kt */
@Metadata
/* loaded from: classes2.dex */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationForAllTables;
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    @NotNull
    public final List<AutoMigrationSpec> autoMigrationSpecs;
    @Nullable
    public final List<RoomDatabase.Callback> callbacks;
    @NotNull
    public final Context context;
    @Nullable
    public final String copyFromAssetPath;
    @Nullable
    public final File copyFromFile;
    @Nullable
    public final Callable<InputStream> copyFromInputStream;
    @NotNull
    public final RoomDatabase.JournalMode journalMode;
    @NotNull
    public final RoomDatabase.MigrationContainer migrationContainer;
    @Nullable
    private final Set<Integer> migrationNotRequiredFrom;
    public final boolean multiInstanceInvalidation;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Nullable
    public final Intent multiInstanceInvalidationServiceIntent;
    @Nullable
    public final String name;
    @Nullable
    public final RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback;
    @Nullable
    public final CoroutineContext queryCoroutineContext;
    @NotNull
    public final Executor queryExecutor;
    public final boolean requireMigration;
    @Nullable
    public final SQLiteDriver sqliteDriver;
    @Nullable
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;
    @NotNull
    public final Executor transactionExecutor;
    @NotNull
    public final List<Object> typeConverters;
    private boolean useTempTrackingTable;

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"LambdaLast"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @Nullable SupportSQLiteOpenHelper.Factory factory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, @Nullable Intent intent, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs, boolean z13, @Nullable SQLiteDriver sQLiteDriver, @Nullable CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        this.context = context;
        this.name = str;
        this.sqliteOpenHelperFactory = factory;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z10;
        this.journalMode = journalMode;
        this.queryExecutor = queryExecutor;
        this.transactionExecutor = transactionExecutor;
        this.multiInstanceInvalidationServiceIntent = intent;
        this.requireMigration = z11;
        this.allowDestructiveMigrationOnDowngrade = z12;
        this.migrationNotRequiredFrom = set;
        this.copyFromAssetPath = str2;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.prepackagedDatabaseCallback = prepackagedDatabaseCallback;
        this.typeConverters = typeConverters;
        this.autoMigrationSpecs = autoMigrationSpecs;
        this.allowDestructiveMigrationForAllTables = z13;
        this.sqliteDriver = sQLiteDriver;
        this.queryCoroutineContext = coroutineContext;
        this.multiInstanceInvalidation = intent != null;
        this.useTempTrackingTable = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DatabaseConfiguration copy$default(DatabaseConfiguration databaseConfiguration, Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, List list2, List list3, boolean z13, SQLiteDriver sQLiteDriver, CoroutineContext coroutineContext, int i10, Object obj) {
        if (obj == null) {
            return databaseConfiguration.copy((i10 & 1) != 0 ? databaseConfiguration.context : context, (i10 & 2) != 0 ? databaseConfiguration.name : str, (i10 & 4) != 0 ? databaseConfiguration.sqliteOpenHelperFactory : factory, (i10 & 8) != 0 ? databaseConfiguration.migrationContainer : migrationContainer, (i10 & 16) != 0 ? databaseConfiguration.callbacks : list, (i10 & 32) != 0 ? databaseConfiguration.allowMainThreadQueries : z10, (i10 & 64) != 0 ? databaseConfiguration.journalMode : journalMode, (i10 & 128) != 0 ? databaseConfiguration.queryExecutor : executor, (i10 & 256) != 0 ? databaseConfiguration.transactionExecutor : executor2, (i10 & 512) != 0 ? databaseConfiguration.multiInstanceInvalidationServiceIntent : intent, (i10 & 1024) != 0 ? databaseConfiguration.requireMigration : z11, (i10 & 2048) != 0 ? databaseConfiguration.allowDestructiveMigrationOnDowngrade : z12, (i10 & 4096) != 0 ? databaseConfiguration.migrationNotRequiredFrom : set, (i10 & 8192) != 0 ? databaseConfiguration.copyFromAssetPath : str2, (i10 & 16384) != 0 ? databaseConfiguration.copyFromFile : file, (i10 & 32768) != 0 ? databaseConfiguration.copyFromInputStream : callable, (i10 & 65536) != 0 ? databaseConfiguration.prepackagedDatabaseCallback : prepackagedDatabaseCallback, (i10 & 131072) != 0 ? databaseConfiguration.typeConverters : list2, (i10 & 262144) != 0 ? databaseConfiguration.autoMigrationSpecs : list3, (i10 & 524288) != 0 ? databaseConfiguration.allowDestructiveMigrationForAllTables : z13, (i10 & 1048576) != 0 ? databaseConfiguration.sqliteDriver : sQLiteDriver, (i10 & 2097152) != 0 ? databaseConfiguration.queryCoroutineContext : coroutineContext);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final DatabaseConfiguration copy(@NotNull Context context, @Nullable String str, @Nullable SupportSQLiteOpenHelper.Factory factory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, @Nullable Intent intent, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs, boolean z13, @Nullable SQLiteDriver sQLiteDriver, @Nullable CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        return new DatabaseConfiguration(context, str, factory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, intent, z11, z12, set, str2, file, callable, prepackagedDatabaseCallback, typeConverters, autoMigrationSpecs, z13, sQLiteDriver, coroutineContext);
    }

    @Nullable
    public final Set<Integer> getMigrationNotRequiredFrom$room_runtime() {
        return this.migrationNotRequiredFrom;
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    public boolean isMigrationRequired(int i10, int i11) {
        return MigrationUtil.isMigrationRequired(this, i10, i11);
    }

    @ms.c
    public boolean isMigrationRequiredFrom(int i10) {
        return isMigrationRequired(i10, i10 + 1);
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z10) {
        this.useTempTrackingTable = z10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, boolean z11, @Nullable Set<Integer> set) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, queryExecutor, null, z11, false, set, null, null, null, null, CollectionsKt.n(), CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, null, null, null, null, CollectionsKt.n(), CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, str2, file, null, null, CollectionsKt.n(), CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, str2, file, callable, null, CollectionsKt.n(), CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @SuppressLint({"LambdaLast"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, str2, file, callable, prepackagedDatabaseCallback, CollectionsKt.n(), CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @SuppressLint({"LambdaLast"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, str2, file, callable, prepackagedDatabaseCallback, typeConverters, CollectionsKt.n(), false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @SuppressLint({"LambdaLast"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, boolean z11, boolean z12, boolean z13, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, z11 ? new Intent(context, MultiInstanceInvalidationService.class) : null, z12, z13, set, str2, file, callable, null, typeConverters, autoMigrationSpecs, false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @SuppressLint({"LambdaLast"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, @Nullable Intent intent, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, intent, z11, z12, set, str2, file, callable, null, typeConverters, autoMigrationSpecs, false, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DatabaseConfiguration(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory, @NotNull RoomDatabase.MigrationContainer migrationContainer, @Nullable List<? extends RoomDatabase.Callback> list, boolean z10, @NotNull RoomDatabase.JournalMode journalMode, @NotNull Executor queryExecutor, @NotNull Executor transactionExecutor, @Nullable Intent intent, boolean z11, boolean z12, @Nullable Set<Integer> set, @Nullable String str2, @Nullable File file, @Nullable Callable<InputStream> callable, @Nullable RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback, @NotNull List<? extends Object> typeConverters, @NotNull List<? extends AutoMigrationSpec> autoMigrationSpecs, boolean z13) {
        this(context, str, sqliteOpenHelperFactory, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, intent, z11, z12, set, str2, file, callable, null, typeConverters, autoMigrationSpecs, z13, null, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sqliteOpenHelperFactory, "sqliteOpenHelperFactory");
        Intrinsics.checkNotNullParameter(migrationContainer, "migrationContainer");
        Intrinsics.checkNotNullParameter(journalMode, "journalMode");
        Intrinsics.checkNotNullParameter(queryExecutor, "queryExecutor");
        Intrinsics.checkNotNullParameter(transactionExecutor, "transactionExecutor");
        Intrinsics.checkNotNullParameter(typeConverters, "typeConverters");
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
    }
}
