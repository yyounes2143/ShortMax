package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.room.BaseRoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.concurrent.ExclusiveLock;
import androidx.room.migration.Migration;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import com.mbridge.msdk.MBridgeConstans;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomConnectionManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nRoomConnectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n1#2:366\n1869#3,2:367\n1869#3,2:369\n1869#3,2:371\n1869#3,2:373\n1869#3,2:375\n*S KotlinDebug\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n*L\n212#1:367,2\n256#1:369,2\n345#1:371,2\n349#1:373,2\n353#1:375,2\n*E\n"})
/* loaded from: classes2.dex */
public abstract class BaseRoomConnectionManager {
    public static final int BUSY_TIMEOUT_MS = 3000;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean isConfigured;
    private boolean isInitializing;

    /* compiled from: RoomConnectionManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: RoomConnectionManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class DriverWrapper implements SQLiteDriver {
        @NotNull
        private final SQLiteDriver actual;
        final /* synthetic */ BaseRoomConnectionManager this$0;

        public DriverWrapper(@NotNull BaseRoomConnectionManager baseRoomConnectionManager, SQLiteDriver actual) {
            Intrinsics.checkNotNullParameter(actual, "actual");
            this.this$0 = baseRoomConnectionManager;
            this.actual = actual;
        }

        private final SQLiteConnection openLocked(final String str) {
            boolean z10;
            if (!this.this$0.isConfigured && !this.this$0.isInitializing && !Intrinsics.areEqual(str, SQLiteDatabaseConfiguration.MEMORY_DB_PATH)) {
                z10 = true;
            } else {
                z10 = false;
            }
            ExclusiveLock exclusiveLock = new ExclusiveLock(str, z10);
            final BaseRoomConnectionManager baseRoomConnectionManager = this.this$0;
            return (SQLiteConnection) exclusiveLock.withLock(new Function0() { // from class: androidx.room.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    SQLiteConnection openLocked$lambda$1;
                    openLocked$lambda$1 = BaseRoomConnectionManager.DriverWrapper.openLocked$lambda$1(BaseRoomConnectionManager.this, this, str);
                    return openLocked$lambda$1;
                }
            }, new Function1() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(Throwable error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    throw new IllegalStateException("Unable to open database '" + str + "'. Was a proper path / name used in Room's database builder?", error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SQLiteConnection openLocked$lambda$1(BaseRoomConnectionManager baseRoomConnectionManager, DriverWrapper driverWrapper, String str) {
            if (!baseRoomConnectionManager.isInitializing) {
                SQLiteConnection open = driverWrapper.actual.open(str);
                if (baseRoomConnectionManager.isConfigured) {
                    baseRoomConnectionManager.configurationConnection(open);
                } else {
                    try {
                        baseRoomConnectionManager.isInitializing = true;
                        baseRoomConnectionManager.configureDatabase(open);
                    } finally {
                        baseRoomConnectionManager.isInitializing = false;
                    }
                }
                return open;
            }
            throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
        }

        @Override // androidx.sqlite.SQLiteDriver
        public boolean hasConnectionPool() {
            return this.actual.hasConnectionPool();
        }

        @Override // androidx.sqlite.SQLiteDriver
        @NotNull
        public SQLiteConnection open(@NotNull String fileName) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            return openLocked(this.this$0.resolveFileName$room_runtime(fileName));
        }
    }

    /* compiled from: RoomConnectionManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void checkIdentity(SQLiteConnection sQLiteConnection) {
        Object d10;
        RoomOpenDelegate.ValidationResult onValidateSchema;
        String str;
        if (hasRoomMasterTable(sQLiteConnection)) {
            SQLiteStatement prepare = sQLiteConnection.prepare(RoomMasterTable.READ_QUERY);
            try {
                if (prepare.step()) {
                    str = prepare.getText(0);
                } else {
                    str = null;
                }
                ys.a.a(prepare, null);
                if (!Intrinsics.areEqual(getOpenDelegate().getIdentityHash(), str) && !Intrinsics.areEqual(getOpenDelegate().getLegacyIdentityHash(), str)) {
                    throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + getOpenDelegate().getIdentityHash() + ", found: " + str).toString());
                }
                return;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ys.a.a(prepare, th2);
                    throw th3;
                }
            }
        }
        SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
        try {
            Result.a aVar = Result.f60901b;
        } catch (Throwable th4) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th4));
        }
        if (getOpenDelegate().onValidateSchema(sQLiteConnection).isValid) {
            getOpenDelegate().onPostMigrate(sQLiteConnection);
            updateIdentity(sQLiteConnection);
            d10 = Result.d(Unit.f60915a);
            if (Result.j(d10)) {
                Unit unit = (Unit) d10;
                SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
            }
            Throwable g10 = Result.g(d10);
            if (g10 == null) {
                Result.b(d10);
                return;
            } else {
                SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                throw g10;
            }
        }
        throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configurationConnection(SQLiteConnection sQLiteConnection) {
        configureSynchronousFlag(sQLiteConnection);
        configureBusyTimeout(sQLiteConnection);
        getOpenDelegate().onOpen(sQLiteConnection);
    }

    private final void configureBusyTimeout(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA busy_timeout");
        try {
            prepare.step();
            long j10 = prepare.getLong(0);
            ys.a.a(prepare, null);
            if (j10 < 3000) {
                SQLite.execSQL(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                ys.a.a(prepare, th2);
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void configureDatabase(SQLiteConnection sQLiteConnection) {
        Object d10;
        configureJournalMode(sQLiteConnection);
        configureSynchronousFlag(sQLiteConnection);
        configureBusyTimeout(sQLiteConnection);
        SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA user_version");
        try {
            prepare.step();
            int i10 = (int) prepare.getLong(0);
            ys.a.a(prepare, null);
            if (i10 != getOpenDelegate().getVersion()) {
                SQLite.execSQL(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.a aVar = Result.f60901b;
                    if (i10 == 0) {
                        onCreate(sQLiteConnection);
                    } else {
                        onMigrate(sQLiteConnection, i10, getOpenDelegate().getVersion());
                    }
                    SQLite.execSQL(sQLiteConnection, "PRAGMA user_version = " + getOpenDelegate().getVersion());
                    d10 = Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                if (Result.j(d10)) {
                    Unit unit = (Unit) d10;
                    SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                }
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw g10;
                }
            }
            onOpen(sQLiteConnection);
        } finally {
        }
    }

    private final void configureJournalMode(SQLiteConnection sQLiteConnection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
    }

    private final void configureSynchronousFlag(SQLiteConnection sQLiteConnection) {
        if (getConfiguration().journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.execSQL(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
    }

    private final void createMasterTableIfNotExists(SQLiteConnection sQLiteConnection) {
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
    }

    private final void dropAllTables(SQLiteConnection sQLiteConnection) {
        if (getConfiguration().allowDestructiveMigrationForAllTables) {
            SQLiteStatement prepare = sQLiteConnection.prepare("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                List c10 = CollectionsKt.c();
                while (prepare.step()) {
                    String text = prepare.getText(0);
                    if (!StringsKt.V(text, "sqlite_", false, 2, null) && !Intrinsics.areEqual(text, "android_metadata")) {
                        c10.add(ms.k.a(text, Boolean.valueOf(Intrinsics.areEqual(prepare.getText(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                    }
                }
                List<Pair> a10 = CollectionsKt.a(c10);
                ys.a.a(prepare, null);
                for (Pair pair : a10) {
                    String str = (String) pair.b();
                    if (((Boolean) pair.d()).booleanValue()) {
                        SQLite.execSQL(sQLiteConnection, "DROP VIEW IF EXISTS `" + str + '`');
                    } else {
                        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `" + str + '`');
                    }
                }
                return;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ys.a.a(prepare, th2);
                    throw th3;
                }
            }
        }
        getOpenDelegate().dropAllTables(sQLiteConnection);
    }

    private final boolean hasEmptySchema(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (prepare.step()) {
                if (prepare.getLong(0) == 0) {
                    z10 = true;
                }
            }
            ys.a.a(prepare, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                ys.a.a(prepare, th2);
                throw th3;
            }
        }
    }

    private final boolean hasRoomMasterTable(SQLiteConnection sQLiteConnection) {
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z10 = false;
            if (prepare.step()) {
                if (prepare.getLong(0) != 0) {
                    z10 = true;
                }
            }
            ys.a.a(prepare, null);
            return z10;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                ys.a.a(prepare, th2);
                throw th3;
            }
        }
    }

    private final void invokeCreateCallback(SQLiteConnection sQLiteConnection) {
        for (RoomDatabase.Callback callback : getCallbacks()) {
            callback.onCreate(sQLiteConnection);
        }
    }

    private final void invokeDestructiveMigrationCallback(SQLiteConnection sQLiteConnection) {
        for (RoomDatabase.Callback callback : getCallbacks()) {
            callback.onDestructiveMigration(sQLiteConnection);
        }
    }

    private final void invokeOpenCallback(SQLiteConnection sQLiteConnection) {
        for (RoomDatabase.Callback callback : getCallbacks()) {
            callback.onOpen(sQLiteConnection);
        }
    }

    private final void updateIdentity(SQLiteConnection sQLiteConnection) {
        createMasterTableIfNotExists(sQLiteConnection);
        SQLite.execSQL(sQLiteConnection, RoomMasterTable.createInsertQuery(getOpenDelegate().getIdentityHash()));
    }

    @NotNull
    protected abstract List<RoomDatabase.Callback> getCallbacks();

    @NotNull
    protected abstract DatabaseConfiguration getConfiguration();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getMaxNumberOfReaders(@NotNull RoomDatabase.JournalMode journalMode) {
        Intrinsics.checkNotNullParameter(journalMode, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 4;
        }
        throw new IllegalStateException(("Can't get max number of reader for journal mode '" + journalMode + '\'').toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getMaxNumberOfWriters(@NotNull RoomDatabase.JournalMode journalMode) {
        Intrinsics.checkNotNullParameter(journalMode, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[journalMode.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + journalMode + '\'').toString());
    }

    @NotNull
    protected abstract RoomOpenDelegate getOpenDelegate();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onCreate(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        boolean hasEmptySchema = hasEmptySchema(connection);
        getOpenDelegate().createAllTables(connection);
        if (!hasEmptySchema) {
            RoomOpenDelegate.ValidationResult onValidateSchema = getOpenDelegate().onValidateSchema(connection);
            if (!onValidateSchema.isValid) {
                throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg).toString());
            }
        }
        updateIdentity(connection);
        getOpenDelegate().onCreate(connection);
        invokeCreateCallback(connection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onMigrate(@NotNull SQLiteConnection connection, int i10, int i11) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        List<Migration> findMigrationPath = MigrationUtil.findMigrationPath(getConfiguration().migrationContainer, i10, i11);
        if (findMigrationPath != null) {
            getOpenDelegate().onPreMigrate(connection);
            for (Migration migration : findMigrationPath) {
                migration.migrate(connection);
            }
            RoomOpenDelegate.ValidationResult onValidateSchema = getOpenDelegate().onValidateSchema(connection);
            if (onValidateSchema.isValid) {
                getOpenDelegate().onPostMigrate(connection);
                updateIdentity(connection);
                return;
            }
            throw new IllegalStateException(("Migration didn't properly handle: " + onValidateSchema.expectedFoundMsg).toString());
        } else if (!MigrationUtil.isMigrationRequired(getConfiguration(), i10, i11)) {
            dropAllTables(connection);
            invokeDestructiveMigrationCallback(connection);
            getOpenDelegate().createAllTables(connection);
        } else {
            throw new IllegalStateException(("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void onOpen(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        checkIdentity(connection);
        getOpenDelegate().onOpen(connection);
        invokeOpenCallback(connection);
        this.isConfigured = true;
    }

    @NotNull
    public String resolveFileName$room_runtime(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return fileName;
    }

    @Nullable
    public abstract <R> Object useConnection(boolean z10, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar);
}
