package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelperFactory;
import androidx.room.support.PrePackagedCopyOpenHelperFactory;
import androidx.room.support.QueryInterceptorOpenHelperFactory;
import androidx.room.util.DBUtil;
import androidx.room.util.KClassUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import androidx.sqlite.driver.SupportSQLiteConnection;
import gt.d1;
import gt.g0;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomDatabase.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2191:1\n379#1,15:2193\n379#1,15:2208\n1#2:2192\n480#3:2223\n426#3:2224\n1252#4,4:2225\n1193#4,2:2229\n1267#4,2:2231\n1563#4:2233\n1634#4,3:2234\n1270#4:2237\n1563#4:2238\n1634#4,3:2239\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase\n*L\n287#1:2193,15\n291#1:2208,15\n364#1:2223\n364#1:2224\n364#1:2225,4\n474#1:2229,2\n474#1:2231,2\n475#1:2233\n475#1:2234,3\n474#1:2237\n502#1:2238\n502#1:2239,3\n*E\n"})
/* loaded from: classes2.dex */
public abstract class RoomDatabase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    @Nullable
    private AutoCloser autoCloser;
    private DatabaseConfiguration configuration;
    private RoomConnectionManager connectionManager;
    private g0 coroutineScope;
    private Executor internalQueryExecutor;
    private InvalidationTracker internalTracker;
    private Executor internalTransactionExecutor;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Nullable
    protected List<? extends Callback> mCallbacks;
    @Nullable
    protected volatile SupportSQLiteDatabase mDatabase;
    private CoroutineContext transactionContext;
    @NotNull
    private final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(this));
    @NotNull
    private final ThreadLocal<CoroutineContext> suspendingTransactionContext = new ThreadLocal<>();
    @NotNull
    private final Map<KClass<?>, Object> typeConverters = new LinkedHashMap();
    private boolean useTempTrackingTable = true;

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2191:1\n1#2:2192\n*E\n"})
    /* loaded from: classes2.dex */
    public static class Builder<T extends RoomDatabase> {
        private boolean allowDestructiveMigrationForAllTables;
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;
        @Nullable
        private TimeUnit autoCloseTimeUnit;
        private long autoCloseTimeout;
        @NotNull
        private final List<AutoMigrationSpec> autoMigrationSpecs;
        @NotNull
        private final List<Callback> callbacks;
        @NotNull
        private final Context context;
        @Nullable
        private String copyFromAssetPath;
        @Nullable
        private File copyFromFile;
        @Nullable
        private Callable<InputStream> copyFromInputStream;
        @Nullable
        private SQLiteDriver driver;
        @Nullable
        private final Function0<T> factory;
        private boolean inMemoryTrackingTableMode;
        @NotNull
        private JournalMode journalMode;
        @NotNull
        private final KClass<T> klass;
        @NotNull
        private final MigrationContainer migrationContainer;
        @NotNull
        private final Set<Integer> migrationStartAndEndVersions;
        @NotNull
        private Set<Integer> migrationsNotRequiredFrom;
        @Nullable
        private Intent multiInstanceInvalidationIntent;
        @Nullable
        private final String name;
        @Nullable
        private PrepackagedDatabaseCallback prepackagedDatabaseCallback;
        @Nullable
        private QueryCallback queryCallback;
        @Nullable
        private CoroutineContext queryCallbackCoroutineContext;
        @Nullable
        private Executor queryCallbackExecutor;
        @Nullable
        private CoroutineContext queryCoroutineContext;
        @Nullable
        private Executor queryExecutor;
        private boolean requireMigration;
        @Nullable
        private SupportSQLiteOpenHelper.Factory supportOpenHelperFactory;
        @Nullable
        private Executor transactionExecutor;
        @NotNull
        private final List<Object> typeConverters;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(@NotNull KClass<T> klass, @Nullable String str, @Nullable Function0<? extends T> function0, @NotNull Context context) {
            Intrinsics.checkNotNullParameter(klass, "klass");
            Intrinsics.checkNotNullParameter(context, "context");
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = klass;
            this.context = context;
            this.name = str;
            this.factory = function0;
        }

        @NotNull
        public Builder<T> addAutoMigrationSpec(@NotNull AutoMigrationSpec autoMigrationSpec) {
            Intrinsics.checkNotNullParameter(autoMigrationSpec, "autoMigrationSpec");
            this.autoMigrationSpecs.add(autoMigrationSpec);
            return this;
        }

        @NotNull
        public Builder<T> addCallback(@NotNull Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.callbacks.add(callback);
            return this;
        }

        @NotNull
        public Builder<T> addMigrations(@NotNull Migration... migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            for (Migration migration : migrations) {
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        @NotNull
        public Builder<T> addTypeConverter(@NotNull Object typeConverter) {
            Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
            this.typeConverters.add(typeConverter);
            return this;
        }

        @NotNull
        public Builder<T> allowMainThreadQueries() {
            this.allowMainThreadQueries = true;
            return this;
        }

        @NotNull
        public T build() {
            AutoClosingRoomOpenHelperFactory autoClosingRoomOpenHelperFactory;
            boolean z10;
            boolean z11;
            boolean z12;
            SupportSQLiteOpenHelper.Factory factory;
            T t10;
            CoroutineContext coroutineContext;
            int i10;
            int i11;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.transactionExecutor = iOThreadExecutor;
                this.queryExecutor = iOThreadExecutor;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
            SQLiteDriver sQLiteDriver = this.driver;
            if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
                autoClosingRoomOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            } else if (sQLiteDriver == null) {
                autoClosingRoomOpenHelperFactory = this.supportOpenHelperFactory;
            } else if (this.supportOpenHelperFactory == null) {
                autoClosingRoomOpenHelperFactory = null;
            } else {
                throw new IllegalArgumentException("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
            }
            int i12 = 0;
            if (this.autoCloseTimeout > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (this.queryCallback != null) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (autoClosingRoomOpenHelperFactory != null) {
                if (z10) {
                    if (this.name != null) {
                        long j10 = this.autoCloseTimeout;
                        TimeUnit timeUnit = this.autoCloseTimeUnit;
                        if (timeUnit != null) {
                            autoClosingRoomOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(autoClosingRoomOpenHelperFactory, new AutoCloser(j10, timeUnit, null, 4, null));
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                    }
                }
                if (z11) {
                    if (this.name != null) {
                        String str = this.copyFromAssetPath;
                        if (str == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        File file = this.copyFromFile;
                        if (file == null) {
                            i11 = 0;
                        } else {
                            i11 = 1;
                        }
                        Callable<InputStream> callable = this.copyFromInputStream;
                        if (callable != null) {
                            i12 = 1;
                        }
                        if (i10 + i11 + i12 == 1) {
                            autoClosingRoomOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, autoClosingRoomOpenHelperFactory);
                        } else {
                            throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                        }
                    } else {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                }
                if (z12) {
                    Executor executor2 = this.queryCallbackExecutor;
                    if ((executor2 != null && (coroutineContext = d1.b(executor2)) != null) || (coroutineContext = this.queryCallbackCoroutineContext) != null) {
                        g0 a10 = kotlinx.coroutines.i.a(coroutineContext);
                        QueryCallback queryCallback = this.queryCallback;
                        if (queryCallback != null) {
                            autoClosingRoomOpenHelperFactory = new QueryInterceptorOpenHelperFactory(autoClosingRoomOpenHelperFactory, a10, queryCallback);
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                }
                factory = autoClosingRoomOpenHelperFactory;
            } else {
                factory = null;
            }
            if (factory == null) {
                if (!z10) {
                    if (!z11) {
                        if (z12) {
                            throw new IllegalArgumentException("Query Callback is not supported when an SQLiteDriver is configured.");
                        }
                    } else {
                        throw new IllegalArgumentException("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                    }
                } else {
                    throw new IllegalArgumentException("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                }
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List<Callback> list = this.callbacks;
            boolean z13 = this.allowMainThreadQueries;
            JournalMode resolve$room_runtime = this.journalMode.resolve$room_runtime(context);
            Executor executor3 = this.queryExecutor;
            if (executor3 != null) {
                Executor executor4 = this.transactionExecutor;
                if (executor4 != null) {
                    DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, factory, migrationContainer, list, z13, resolve$room_runtime, executor3, executor4, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, this.prepackagedDatabaseCallback, this.typeConverters, this.autoMigrationSpecs, this.allowDestructiveMigrationForAllTables, this.driver, this.queryCoroutineContext);
                    databaseConfiguration.setUseTempTrackingTable$room_runtime(this.inMemoryTrackingTableMode);
                    Function0<T> function0 = this.factory;
                    if (function0 == null || (t10 = function0.invoke()) == null) {
                        t10 = (T) KClassUtil.findAndInstantiateDatabaseImpl$default(zs.a.b(this.klass), null, 2, null);
                    }
                    t10.init(databaseConfiguration);
                    return t10;
                }
                throw new IllegalArgumentException("Required value was null.");
            }
            throw new IllegalArgumentException("Required value was null.");
        }

        @NotNull
        public Builder<T> createFromAsset(@NotNull String databaseFilePath) {
            Intrinsics.checkNotNullParameter(databaseFilePath, "databaseFilePath");
            this.copyFromAssetPath = databaseFilePath;
            return this;
        }

        @NotNull
        public Builder<T> createFromFile(@NotNull File databaseFile) {
            Intrinsics.checkNotNullParameter(databaseFile, "databaseFile");
            this.copyFromFile = databaseFile;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public Builder<T> createFromInputStream(@NotNull Callable<InputStream> inputStreamCallable) {
            Intrinsics.checkNotNullParameter(inputStreamCallable, "inputStreamCallable");
            this.copyFromInputStream = inputStreamCallable;
            return this;
        }

        @NotNull
        public Builder<T> enableMultiInstanceInvalidation() {
            Intent intent;
            if (this.name != null) {
                intent = new Intent(this.context, MultiInstanceInvalidationService.class);
            } else {
                intent = null;
            }
            this.multiInstanceInvalidationIntent = intent;
            return this;
        }

        @ms.c
        @NotNull
        public Builder<T> fallbackToDestructiveMigration() {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @ms.c
        @NotNull
        public Builder<T> fallbackToDestructiveMigrationFrom(@NotNull int... startVersions) {
            Intrinsics.checkNotNullParameter(startVersions, "startVersions");
            for (int i10 : startVersions) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i10));
            }
            return this;
        }

        @ms.c
        @NotNull
        public Builder<T> fallbackToDestructiveMigrationOnDowngrade() {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            return this;
        }

        @NotNull
        public Builder<T> openHelperFactory(@Nullable SupportSQLiteOpenHelper.Factory factory) {
            this.supportOpenHelperFactory = factory;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public Builder<T> setAutoCloseTimeout(@IntRange(from = 0) long j10, @NotNull TimeUnit autoCloseTimeUnit) {
            Intrinsics.checkNotNullParameter(autoCloseTimeUnit, "autoCloseTimeUnit");
            if (j10 >= 0) {
                this.autoCloseTimeout = j10;
                this.autoCloseTimeUnit = autoCloseTimeUnit;
                return this;
            }
            throw new IllegalArgumentException("autoCloseTimeout must be >= 0");
        }

        @NotNull
        public final Builder<T> setDriver(@NotNull SQLiteDriver driver) {
            Intrinsics.checkNotNullParameter(driver, "driver");
            this.driver = driver;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public final Builder<T> setInMemoryTrackingMode(boolean z10) {
            this.inMemoryTrackingTableMode = z10;
            return this;
        }

        @NotNull
        public Builder<T> setJournalMode(@NotNull JournalMode journalMode) {
            Intrinsics.checkNotNullParameter(journalMode, "journalMode");
            this.journalMode = journalMode;
            return this;
        }

        @ExperimentalRoomApi
        @NotNull
        public Builder<T> setMultiInstanceInvalidationServiceIntent(@NotNull Intent invalidationServiceIntent) {
            Intrinsics.checkNotNullParameter(invalidationServiceIntent, "invalidationServiceIntent");
            if (this.name == null) {
                invalidationServiceIntent = null;
            }
            this.multiInstanceInvalidationIntent = invalidationServiceIntent;
            return this;
        }

        @NotNull
        public Builder<T> setQueryCallback(@NotNull QueryCallback queryCallback, @NotNull Executor executor) {
            Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
            Intrinsics.checkNotNullParameter(executor, "executor");
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = executor;
            this.queryCallbackCoroutineContext = null;
            return this;
        }

        @NotNull
        public final Builder<T> setQueryCoroutineContext(@NotNull CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.queryExecutor == null && this.transactionExecutor == null) {
                if (context.get(kotlin.coroutines.c.F8) != null) {
                    this.queryCoroutineContext = context;
                    return this;
                }
                throw new IllegalArgumentException("It is required that the coroutine context contain a dispatcher.");
            }
            throw new IllegalArgumentException("This builder has already been configured with an Executor. A RoomDatabase canonly be configured with either an Executor or a CoroutineContext.");
        }

        @NotNull
        public Builder<T> setQueryExecutor(@NotNull Executor executor) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            if (this.queryCoroutineContext == null) {
                this.queryExecutor = executor;
                return this;
            }
            throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
        }

        @NotNull
        public Builder<T> setTransactionExecutor(@NotNull Executor executor) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            if (this.queryCoroutineContext == null) {
                this.transactionExecutor = executor;
                return this;
            }
            throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
        }

        @SuppressLint({"BuilderSetStyle"})
        @NotNull
        public Builder<T> createFromAsset(@NotNull String databaseFilePath, @NotNull PrepackagedDatabaseCallback callback) {
            Intrinsics.checkNotNullParameter(databaseFilePath, "databaseFilePath");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.prepackagedDatabaseCallback = callback;
            this.copyFromAssetPath = databaseFilePath;
            return this;
        }

        @SuppressLint({"BuilderSetStyle", "StreamFiles"})
        @NotNull
        public Builder<T> createFromFile(@NotNull File databaseFile, @NotNull PrepackagedDatabaseCallback callback) {
            Intrinsics.checkNotNullParameter(databaseFile, "databaseFile");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.prepackagedDatabaseCallback = callback;
            this.copyFromFile = databaseFile;
            return this;
        }

        @SuppressLint({"BuilderSetStyle", "LambdaLast"})
        @NotNull
        public Builder<T> createFromInputStream(@NotNull Callable<InputStream> inputStreamCallable, @NotNull PrepackagedDatabaseCallback callback) {
            Intrinsics.checkNotNullParameter(inputStreamCallable, "inputStreamCallable");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.prepackagedDatabaseCallback = callback;
            this.copyFromInputStream = inputStreamCallable;
            return this;
        }

        @NotNull
        public final Builder<T> fallbackToDestructiveMigration(boolean z10) {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z10;
            return this;
        }

        @NotNull
        public Builder<T> fallbackToDestructiveMigrationFrom(boolean z10, @NotNull int... startVersions) {
            Intrinsics.checkNotNullParameter(startVersions, "startVersions");
            for (int i10 : startVersions) {
                this.migrationsNotRequiredFrom.add(Integer.valueOf(i10));
            }
            this.allowDestructiveMigrationForAllTables = z10;
            return this;
        }

        @NotNull
        public final Builder<T> fallbackToDestructiveMigrationOnDowngrade(boolean z10) {
            this.requireMigration = true;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z10;
            return this;
        }

        @NotNull
        public final Builder<T> setQueryCallback(@NotNull CoroutineContext context, @NotNull QueryCallback queryCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
            this.queryCallback = queryCallback;
            this.queryCallbackExecutor = null;
            this.queryCallbackCoroutineContext = context;
            return this;
        }

        public Builder(@NotNull Context context, @NotNull Class<T> klass, @Nullable String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(klass, "klass");
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = zs.a.d(klass);
            this.context = context;
            this.name = str;
            this.factory = null;
        }
    }

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class Callback {
        public void onCreate(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public void onDestructiveMigration(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public void onOpen(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public void onCreate(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onCreate(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onDestructiveMigration(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onDestructiveMigration(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onOpen(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onOpen(((SupportSQLiteConnection) connection).getDb());
            }
        }
    }

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class JournalMode {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC = new JournalMode("AUTOMATIC", 0);
        public static final JournalMode TRUNCATE = new JournalMode("TRUNCATE", 1);
        public static final JournalMode WRITE_AHEAD_LOGGING = new JournalMode("WRITE_AHEAD_LOGGING", 2);

        private static final /* synthetic */ JournalMode[] $values() {
            return new JournalMode[]{AUTOMATIC, TRUNCATE, WRITE_AHEAD_LOGGING};
        }

        static {
            JournalMode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private JournalMode(String str, int i10) {
        }

        @NotNull
        public static ss.a<JournalMode> getEntries() {
            return $ENTRIES;
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }

        @NotNull
        public final JournalMode resolve$room_runtime(@NotNull Context context) {
            ActivityManager activityManager;
            Intrinsics.checkNotNullParameter(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            if (systemService instanceof ActivityManager) {
                activityManager = (ActivityManager) systemService;
            } else {
                activityManager = null;
            }
            if (activityManager != null && !activityManager.isLowRamDevice()) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class PrepackagedDatabaseCallback {
        public void onOpenPrepackagedDatabase(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }
    }

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface QueryCallback {
        void onQuery(@NotNull String str, @NotNull List<? extends Object> list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SupportSQLiteOpenHelper createConnectionManager$lambda$2(RoomDatabase roomDatabase, DatabaseConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return roomDatabase.createOpenHelper(config);
    }

    private final void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            getInvalidationTracker().syncBlocking$room_runtime();
        }
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    private final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (!inTransaction()) {
            getInvalidationTracker().refreshVersionsAsync();
        }
    }

    private final boolean isThreadInSuspendingTransaction() {
        TransactionElement transactionElement;
        CoroutineContext coroutineContext = this.suspendingTransactionContext.get();
        if (coroutineContext != null) {
            transactionElement = (TransactionElement) coroutineContext.get(TransactionElement.Key);
        } else {
            transactionElement = null;
        }
        if (transactionElement != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosed() {
        g0 g0Var = this.coroutineScope;
        RoomConnectionManager roomConnectionManager = null;
        if (g0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            g0Var = null;
        }
        kotlinx.coroutines.i.e(g0Var, null, 1, null);
        getInvalidationTracker().stop$room_runtime();
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        } else {
            roomConnectionManager = roomConnectionManager2;
        }
        roomConnectionManager.close();
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                cancellationSignal = null;
            }
            return roomDatabase.query(supportSQLiteQuery, cancellationSignal);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runInTransaction$lambda$10(Runnable runnable) {
        runnable.run();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object runInTransaction$lambda$12(Function0 function0, SQLiteConnection it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return function0.invoke();
    }

    private final /* synthetic */ <T extends SupportSQLiteOpenHelper> T unwrapOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        if (supportSQLiteOpenHelper == null) {
            return null;
        }
        while (true) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (supportSQLiteOpenHelper != null) {
                return (T) supportSQLiteOpenHelper;
            }
            if (!(supportSQLiteOpenHelper instanceof DelegatingOpenHelper)) {
                return null;
            }
            supportSQLiteOpenHelper = (T) ((DelegatingOpenHelper) supportSQLiteOpenHelper).getDelegate();
        }
    }

    public final void addTypeConverter$room_runtime(@NotNull KClass<?> kclass, @NotNull Object converter) {
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(converter, "converter");
        this.typeConverters.put(kclass, converter);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void assertNotMainThread() {
        if (this.allowMainThreadQueries || !isMainThread$room_runtime()) {
            return;
        }
        throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void assertNotSuspendingTransaction() {
        if (inCompatibilityMode() && !inTransaction() && isThreadInSuspendingTransaction()) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @ms.c
    public void beginTransaction() {
        assertNotMainThread();
        internalBeginTransaction();
    }

    @WorkerThread
    public abstract void clearAllTables();

    public void close() {
        this.closeBarrier.close$room_runtime();
    }

    @NotNull
    public SupportSQLiteStatement compileStatement(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(sql);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public List<Migration> createAutoMigrations(@NotNull Map<KClass<? extends AutoMigrationSpec>, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> linkedHashMap = new LinkedHashMap<>(p0.e(autoMigrationSpecs.size()));
        Iterator<T> it = autoMigrationSpecs.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(zs.a.b((KClass) entry.getKey()), entry.getValue());
        }
        return getAutoMigrations(linkedHashMap);
    }

    @NotNull
    public final RoomConnectionManager createConnectionManager$room_runtime(@NotNull DatabaseConfiguration configuration) {
        RoomOpenDelegate roomOpenDelegate;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        try {
            RoomOpenDelegateMarker createOpenDelegate = createOpenDelegate();
            Intrinsics.checkNotNull(createOpenDelegate, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate");
            roomOpenDelegate = (RoomOpenDelegate) createOpenDelegate;
        } catch (NotImplementedError unused) {
            roomOpenDelegate = null;
        }
        if (roomOpenDelegate == null) {
            return new RoomConnectionManager(configuration, new Function1() { // from class: androidx.room.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    SupportSQLiteOpenHelper createConnectionManager$lambda$2;
                    createConnectionManager$lambda$2 = RoomDatabase.createConnectionManager$lambda$2(RoomDatabase.this, (DatabaseConfiguration) obj);
                    return createConnectionManager$lambda$2;
                }
            }, new RoomDatabase$createConnectionManager$2(this));
        }
        return new RoomConnectionManager(configuration, roomOpenDelegate, new RoomDatabase$createConnectionManager$3(this));
    }

    @NotNull
    protected abstract InvalidationTracker createInvalidationTracker();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    protected RoomOpenDelegateMarker createOpenDelegate() {
        throw new NotImplementedError(null, 1, null);
    }

    @ms.c
    @NotNull
    protected SupportSQLiteOpenHelper createOpenHelper(@NotNull DatabaseConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        throw new NotImplementedError(null, 1, null);
    }

    @ms.c
    public void endTransaction() {
        internalEndTransaction();
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public List<Migration> getAutoMigrations(@NotNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        return CollectionsKt.n();
    }

    @NotNull
    public final CloseBarrier getCloseBarrier$room_runtime() {
        return this.closeBarrier;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final g0 getCoroutineScope() {
        g0 g0Var = this.coroutineScope;
        if (g0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            return null;
        }
        return g0Var;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final SQLiteDriver getDriver() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
            databaseConfiguration = null;
        }
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            return sQLiteDriver;
        }
        throw new IllegalStateException("No SQLiteDriver was configured with Room.");
    }

    @NotNull
    public InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker == null) {
            Intrinsics.throwUninitializedPropertyAccessException("internalTracker");
            return null;
        }
        return invalidationTracker;
    }

    @NotNull
    public SupportSQLiteOpenHelper getOpenHelper() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime != null) {
            return supportOpenHelper$room_runtime;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final String getPath() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        DatabaseConfiguration databaseConfiguration2 = null;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
            databaseConfiguration = null;
        }
        String str = databaseConfiguration.name;
        if (str == null) {
            return null;
        }
        DatabaseConfiguration databaseConfiguration3 = this.configuration;
        if (databaseConfiguration3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
        } else {
            databaseConfiguration2 = databaseConfiguration3;
        }
        return databaseConfiguration2.context.getDatabasePath(str).getPath();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final CoroutineContext getQueryContext() {
        g0 g0Var = this.coroutineScope;
        if (g0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            g0Var = null;
        }
        return g0Var.getCoroutineContext();
    }

    @NotNull
    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("internalQueryExecutor");
            return null;
        }
        return executor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Set<KClass<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecClasses() {
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(requiredAutoMigrationSpecs, 10));
        Iterator<T> it = requiredAutoMigrationSpecs.iterator();
        while (it.hasNext()) {
            arrayList.add(zs.a.d((Class) it.next()));
        }
        return CollectionsKt.i1(arrayList);
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return y0.f();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    protected Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClasses() {
        Set<Map.Entry<Class<?>, List<Class<?>>>> entrySet = getRequiredTypeConverters().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(entrySet, 10)), 16));
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            KClass d10 = zs.a.d((Class) entry.getKey());
            List<Class> list = (List) entry.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (Class cls : list) {
                arrayList.add(zs.a.d(cls));
            }
            Pair a10 = ms.k.a(d10, arrayList);
            linkedHashMap.put(a10.e(), a10.f());
        }
        return linkedHashMap;
    }

    @NotNull
    public final Map<KClass<?>, List<KClass<?>>> getRequiredTypeConverterClassesMap$room_runtime() {
        return getRequiredTypeConverterClasses();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return p0.i();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final ThreadLocal<CoroutineContext> getSuspendingTransactionContext() {
        return this.suspendingTransactionContext;
    }

    @NotNull
    public final CoroutineContext getTransactionContext$room_runtime() {
        CoroutineContext coroutineContext = this.transactionContext;
        if (coroutineContext == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transactionContext");
            return null;
        }
        return coroutineContext;
    }

    @NotNull
    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("internalTransactionExecutor");
            return null;
        }
        return executor;
    }

    @ms.c
    @Nullable
    public <T> T getTypeConverter(@NotNull Class<T> klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        return (T) this.typeConverters.get(zs.a.d(klass));
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean inCompatibilityMode() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        if (roomConnectionManager.getSupportOpenHelper$room_runtime() != null) {
            return true;
        }
        return false;
    }

    public boolean inTransaction() {
        if (isOpenInternal$room_runtime() && getOpenHelper().getWritableDatabase().inTransaction()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010f A[LOOP:0: B:49:0x010f->B:54:0x0118, LOOP_START, PHI: r0 
      PHI: (r0v29 androidx.sqlite.db.SupportSQLiteOpenHelper) = (r0v28 androidx.sqlite.db.SupportSQLiteOpenHelper), (r0v31 androidx.sqlite.db.SupportSQLiteOpenHelper) binds: [B:47:0x010b, B:54:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0162 A[ORIG_RETURN, RETURN] */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(@org.jetbrains.annotations.NotNull androidx.room.DatabaseConfiguration r8) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.init(androidx.room.DatabaseConfiguration):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ms.c
    public void internalInitInvalidationTracker(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        internalInitInvalidationTracker(new SupportSQLiteConnection(db2));
    }

    public final boolean isMainThread$room_runtime() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    public final boolean isOpenInternal$room_runtime() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            SupportSQLiteDatabase delegateDatabase$room_runtime = autoCloser.getDelegateDatabase$room_runtime();
            if (delegateDatabase$room_runtime != null) {
                return delegateDatabase$room_runtime.isOpen();
            }
            return false;
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void performClear(boolean z10, @NotNull String... tableNames) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new RoomDatabase$performClear$1(this, z10, tableNames, null));
    }

    @NotNull
    public final Cursor query(@NotNull SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        return query$default(this, query, null, 2, null);
    }

    public void runInTransaction(@NotNull final Runnable body) {
        Intrinsics.checkNotNullParameter(body, "body");
        runInTransaction(new Function0() { // from class: androidx.room.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit runInTransaction$lambda$10;
                runInTransaction$lambda$10 = RoomDatabase.runInTransaction$lambda$10(body);
                return runInTransaction$lambda$10;
            }
        });
    }

    @ms.c
    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z10) {
        this.useTempTrackingTable = z10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final <R> Object useConnection(boolean z10, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.useConnection(z10, function2, cVar);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public final <T> T getTypeConverter(@NotNull KClass<T> klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        T t10 = (T) this.typeConverters.get(klass);
        Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of androidx.room.RoomDatabase.getTypeConverter");
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final void internalInitInvalidationTracker(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        getInvalidationTracker().internalInit$room_runtime(connection);
    }

    @NotNull
    public Cursor query(@NotNull String query, @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(query, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().query(new SimpleSQLiteQuery(query, objArr));
    }

    public <V> V runInTransaction(@NotNull final Callable<V> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return (V) runInTransaction(new Function0() { // from class: androidx.room.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object call;
                call = body.call();
                return call;
            }
        });
    }

    /* compiled from: RoomDatabase.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2191:1\n13472#2,2:2192\n1869#3,2:2194\n384#4,7:2196\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$MigrationContainer\n*L\n1830#1:2192,2\n1840#1:2194,2\n1853#1:2196,7\n*E\n"})
    /* loaded from: classes2.dex */
    public static class MigrationContainer {
        @NotNull
        private final Map<Integer, TreeMap<Integer, Migration>> migrations = new LinkedHashMap();

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void addMigration(@NotNull Migration migration) {
            Intrinsics.checkNotNullParameter(migration, "migration");
            int i10 = migration.startVersion;
            int i11 = migration.endVersion;
            Map<Integer, TreeMap<Integer, Migration>> map = this.migrations;
            Integer valueOf = Integer.valueOf(i10);
            TreeMap<Integer, Migration> treeMap = map.get(valueOf);
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                map.put(valueOf, treeMap);
            }
            TreeMap<Integer, Migration> treeMap2 = treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i11))) {
                Log.w(Room.LOG_TAG, "Overriding migration " + treeMap2.get(Integer.valueOf(i11)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i11), migration);
        }

        public void addMigrations(@NotNull List<? extends Migration> migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            for (Migration migration : migrations) {
                addMigration(migration);
            }
        }

        public final boolean contains(int i10, int i11) {
            return MigrationUtil.contains(this, i10, i11);
        }

        @Nullable
        public List<Migration> findMigrationPath(int i10, int i11) {
            return MigrationUtil.findMigrationPath(this, i10, i11);
        }

        @NotNull
        public Map<Integer, Map<Integer, Migration>> getMigrations() {
            return this.migrations;
        }

        @Nullable
        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedDescendingNodes$room_runtime(int i10) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i10));
            if (treeMap == null) {
                return null;
            }
            return ms.k.a(treeMap, treeMap.descendingKeySet());
        }

        @Nullable
        public final Pair<Map<Integer, Migration>, Iterable<Integer>> getSortedNodes$room_runtime(int i10) {
            TreeMap<Integer, Migration> treeMap = this.migrations.get(Integer.valueOf(i10));
            if (treeMap == null) {
                return null;
            }
            return ms.k.a(treeMap, treeMap.keySet());
        }

        public void addMigrations(@NotNull Migration... migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            for (Migration migration : migrations) {
                addMigration(migration);
            }
        }
    }

    private final <T> T runInTransaction(final Function0<? extends T> function0) {
        if (inCompatibilityMode()) {
            beginTransaction();
            try {
                T invoke = function0.invoke();
                setTransactionSuccessful();
                return invoke;
            } finally {
                endTransaction();
            }
        }
        return (T) DBUtil.performBlocking(this, false, true, new Function1() { // from class: androidx.room.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object runInTransaction$lambda$12;
                runInTransaction$lambda$12 = RoomDatabase.runInTransaction$lambda$12(Function0.this, (SQLiteConnection) obj);
                return runInTransaction$lambda$12;
            }
        });
    }

    @NotNull
    public Cursor query(@NotNull SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (cancellationSignal != null) {
            return getOpenHelper().getWritableDatabase().query(query, cancellationSignal);
        }
        return getOpenHelper().getWritableDatabase().query(query);
    }

    @ms.c
    protected static /* synthetic */ void getMCallbacks$annotations() {
    }

    @ms.c
    protected static /* synthetic */ void getMDatabase$annotations() {
    }
}
