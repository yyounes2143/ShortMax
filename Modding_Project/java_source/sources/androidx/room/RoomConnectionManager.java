package androidx.room;

import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolKt;
import androidx.room.coroutines.PassthroughConnectionPool;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteDriver;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomConnectionManager.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RoomConnectionManager extends BaseRoomConnectionManager {
    @NotNull
    private final List<RoomDatabase.Callback> callbacks;
    @NotNull
    private final DatabaseConfiguration configuration;
    @NotNull
    private final ConnectionPool connectionPool;
    @NotNull
    private final RoomOpenDelegate openDelegate;
    @Nullable
    private SupportSQLiteDatabase supportDatabase;
    @Nullable
    private final SupportSQLiteOpenHelper supportOpenHelper;

    /* compiled from: RoomConnectionManager.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class NoOpOpenDelegate extends RoomOpenDelegate {
        public NoOpOpenDelegate() {
            super(-1, "", "");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onCreate(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPostMigrate(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        @NotNull
        public RoomOpenDelegate.ValidationResult onValidateSchema(@NotNull SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    /* compiled from: RoomConnectionManager.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i10) {
            super(i10);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onCreate(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            RoomConnectionManager.this.onCreate(new SupportSQLiteConnection(db2));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onDowngrade(@NotNull SupportSQLiteDatabase db2, int i10, int i11) {
            Intrinsics.checkNotNullParameter(db2, "db");
            onUpgrade(db2, i10, i11);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onOpen(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            RoomConnectionManager.this.onOpen(new SupportSQLiteConnection(db2));
            RoomConnectionManager.this.supportDatabase = db2;
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public void onUpgrade(@NotNull SupportSQLiteDatabase db2, int i10, int i11) {
            Intrinsics.checkNotNullParameter(db2, "db");
            RoomConnectionManager.this.onMigrate(new SupportSQLiteConnection(db2), i10, i11);
        }
    }

    public RoomConnectionManager(@NotNull DatabaseConfiguration config, @NotNull RoomOpenDelegate openDelegate, @NotNull Function2<? super Function1<? super rs.c<Object>, ? extends Object>, ? super rs.c<Object>, ? extends Object> transactionWrapper) {
        ConnectionPool newConnectionPool;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(openDelegate, "openDelegate");
        Intrinsics.checkNotNullParameter(transactionWrapper, "transactionWrapper");
        this.configuration = config;
        this.openDelegate = openDelegate;
        List<RoomDatabase.Callback> list = config.callbacks;
        this.callbacks = list == null ? CollectionsKt.n() : list;
        SQLiteDriver sQLiteDriver = config.sqliteDriver;
        String str = SQLiteDatabaseConfiguration.MEMORY_DB_PATH;
        if (sQLiteDriver == null) {
            if (config.sqliteOpenHelperFactory != null) {
                SupportSQLiteOpenHelper create = config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.Companion.builder(config.context).name(config.name).callback(new SupportOpenHelperCallback(openDelegate.getVersion())).build());
                this.supportOpenHelper = create;
                SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(create);
                String str2 = config.name;
                this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str2 != null ? str2 : str, transactionWrapper);
            } else {
                throw new IllegalArgumentException("SQLiteManager was constructed with both null driver and open helper factory!");
            }
        } else {
            this.supportOpenHelper = null;
            if (sQLiteDriver.hasConnectionPool()) {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver);
                String str3 = config.name;
                newConnectionPool = new PassthroughConnectionPool(driverWrapper, str3 != null ? str3 : str, transactionWrapper);
            } else if (config.name == null) {
                newConnectionPool = ConnectionPoolKt.newSingleConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver), SQLiteDatabaseConfiguration.MEMORY_DB_PATH);
            } else {
                newConnectionPool = ConnectionPoolKt.newConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, config.sqliteDriver), config.name, getMaxNumberOfReaders(config.journalMode), getMaxNumberOfWriters(config.journalMode));
            }
            this.connectionPool = newConnectionPool;
        }
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(RoomConnectionManager roomConnectionManager, SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        roomConnectionManager.supportDatabase = db2;
        return Unit.f60915a;
    }

    private final void init() {
        boolean z10;
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            z10 = true;
        } else {
            z10 = false;
        }
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.setWriteAheadLoggingEnabled(z10);
        }
    }

    private final DatabaseConfiguration installOnOpenCallback(DatabaseConfiguration databaseConfiguration, final Function1<? super SupportSQLiteDatabase, Unit> function1) {
        List<RoomDatabase.Callback> list = databaseConfiguration.callbacks;
        if (list == null) {
            list = CollectionsKt.n();
        }
        return DatabaseConfiguration.copy$default(databaseConfiguration, null, null, null, null, CollectionsKt.L0(list, new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public void onOpen(SupportSQLiteDatabase db2) {
                Intrinsics.checkNotNullParameter(db2, "db");
                function1.invoke(db2);
            }
        }), false, null, null, null, null, false, false, null, null, null, null, null, null, null, false, null, null, 4194287, null);
    }

    public final void close() {
        this.connectionPool.close();
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = this.supportOpenHelper;
        if (supportSQLiteOpenHelper != null) {
            supportSQLiteOpenHelper.close();
        }
    }

    @Override // androidx.room.BaseRoomConnectionManager
    @NotNull
    protected List<RoomDatabase.Callback> getCallbacks() {
        return this.callbacks;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    @NotNull
    protected DatabaseConfiguration getConfiguration() {
        return this.configuration;
    }

    @NotNull
    public final ConnectionPool getConnectionPool$room_runtime() {
        return this.connectionPool;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    @NotNull
    protected RoomOpenDelegate getOpenDelegate() {
        return this.openDelegate;
    }

    @Nullable
    public final SupportSQLiteOpenHelper getSupportOpenHelper$room_runtime() {
        return this.supportOpenHelper;
    }

    public final boolean isSupportDatabaseOpen() {
        SupportSQLiteDatabase supportSQLiteDatabase = this.supportDatabase;
        if (supportSQLiteDatabase != null) {
            return supportSQLiteDatabase.isOpen();
        }
        return false;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    @NotNull
    public String resolveFileName$room_runtime(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (!Intrinsics.areEqual(fileName, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
            String absolutePath = getConfiguration().context.getDatabasePath(fileName).getAbsolutePath();
            Intrinsics.checkNotNull(absolutePath);
            return absolutePath;
        }
        return fileName;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    @Nullable
    public <R> Object useConnection(boolean z10, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        return this.connectionPool.useConnection(z10, function2, cVar);
    }

    public RoomConnectionManager(@NotNull DatabaseConfiguration config, @NotNull Function1<? super DatabaseConfiguration, ? extends SupportSQLiteOpenHelper> supportOpenHelperFactory, @NotNull Function2<? super Function1<? super rs.c<Object>, ? extends Object>, ? super rs.c<Object>, ? extends Object> transactionWrapper) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(supportOpenHelperFactory, "supportOpenHelperFactory");
        Intrinsics.checkNotNullParameter(transactionWrapper, "transactionWrapper");
        this.configuration = config;
        this.openDelegate = new NoOpOpenDelegate();
        List<RoomDatabase.Callback> list = config.callbacks;
        this.callbacks = list == null ? CollectionsKt.n() : list;
        SupportSQLiteOpenHelper invoke = supportOpenHelperFactory.invoke(installOnOpenCallback(config, new Function1() { // from class: androidx.room.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit _init_$lambda$1;
                _init_$lambda$1 = RoomConnectionManager._init_$lambda$1(RoomConnectionManager.this, (SupportSQLiteDatabase) obj);
                return _init_$lambda$1;
            }
        }));
        this.supportOpenHelper = invoke;
        SupportSQLiteDriver supportSQLiteDriver = new SupportSQLiteDriver(invoke);
        String str = config.name;
        this.connectionPool = new PassthroughConnectionPool(supportSQLiteDriver, str == null ? SQLiteDatabaseConfiguration.MEMORY_DB_PATH : str, transactionWrapper);
        init();
    }
}
