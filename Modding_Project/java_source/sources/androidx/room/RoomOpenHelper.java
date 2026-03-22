package androidx.room;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.driver.SupportSQLiteConnection;
import com.mbridge.msdk.MBridgeConstans;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomOpenHelper.android.kt */
@ms.c
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nRoomOpenHelper.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomOpenHelper.android.kt\nandroidx/room/RoomOpenHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CursorUtil.android.kt\nandroidx/room/util/CursorUtil\n*L\n1#1,278:1\n1869#2,2:279\n1869#2,2:281\n1869#2,2:283\n1869#2,2:285\n146#3:287\n*S KotlinDebug\n*F\n+ 1 RoomOpenHelper.android.kt\nandroidx/room/RoomOpenHelper\n*L\n81#1:279,2\n90#1:281,2\n112#1:283,2\n135#1:285,2\n143#1:287\n*E\n"})
/* loaded from: classes2.dex */
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final List<RoomDatabase.Callback> callbacks;
    @Nullable
    private DatabaseConfiguration configuration;
    @NotNull
    private final Delegate delegate;
    @NotNull
    private final String identityHash;
    @NotNull
    private final String legacyHash;

    /* compiled from: RoomOpenHelper.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRoomOpenHelper.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomOpenHelper.android.kt\nandroidx/room/RoomOpenHelper$Companion\n+ 2 CursorUtil.android.kt\nandroidx/room/util/CursorUtil\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n146#2:279\n146#2:280\n146#2:281\n1869#3,2:282\n*S KotlinDebug\n*F\n+ 1 RoomOpenHelper.android.kt\nandroidx/room/RoomOpenHelper$Companion\n*L\n242#1:279\n249#1:280\n256#1:281\n268#1:282,2\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void dropAllTables$room_runtime(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Cursor query = db2.query("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                Cursor cursor = query;
                List c10 = CollectionsKt.c();
                while (cursor.moveToNext()) {
                    String string = cursor.getString(0);
                    Intrinsics.checkNotNull(string);
                    if (!StringsKt.V(string, "sqlite_", false, 2, null) && !Intrinsics.areEqual(string, "android_metadata")) {
                        c10.add(ms.k.a(string, Boolean.valueOf(Intrinsics.areEqual(cursor.getString(1), MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW))));
                    }
                }
                List<Pair> a10 = CollectionsKt.a(c10);
                ws.b.a(query, null);
                for (Pair pair : a10) {
                    String str = (String) pair.b();
                    if (((Boolean) pair.d()).booleanValue()) {
                        db2.execSQL("DROP VIEW IF EXISTS " + str);
                    } else {
                        db2.execSQL("DROP TABLE IF EXISTS " + str);
                    }
                }
            } finally {
            }
        }

        public final boolean hasEmptySchema$room_runtime(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Cursor query = db2.query("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                Cursor cursor = query;
                boolean z10 = false;
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) == 0) {
                        z10 = true;
                    }
                }
                ws.b.a(query, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ws.b.a(query, th2);
                    throw th3;
                }
            }
        }

        public final boolean hasRoomMasterTable$room_runtime(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Cursor query = db2.query("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                Cursor cursor = query;
                boolean z10 = false;
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) != 0) {
                        z10 = true;
                    }
                }
                ws.b.a(query, null);
                return z10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ws.b.a(query, th2);
                    throw th3;
                }
            }
        }

        private Companion() {
        }
    }

    /* compiled from: RoomOpenHelper.android.kt */
    @ms.c
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static abstract class Delegate {
        public final int version;

        public Delegate(int i10) {
            this.version = i10;
        }

        public abstract void createAllTables(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void dropAllTables(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onCreate(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onOpen(@NotNull SupportSQLiteDatabase supportSQLiteDatabase);

        public void onPostMigrate(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        public void onPreMigrate(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
        }

        @NotNull
        public ValidationResult onValidateSchema(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            validateMigration(db2);
            return new ValidationResult(true, null);
        }

        @ms.c
        protected void validateMigration(@NotNull SupportSQLiteDatabase db2) {
            Intrinsics.checkNotNullParameter(db2, "db");
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }
    }

    /* compiled from: RoomOpenHelper.android.kt */
    @ms.c
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static class ValidationResult {
        @Nullable
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean z10, @Nullable String str) {
            this.isValid = z10;
            this.expectedFoundMsg = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(@NotNull DatabaseConfiguration configuration, @NotNull Delegate delegate, @NotNull String identityHash, @NotNull String legacyHash) {
        super(delegate.version);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(identityHash, "identityHash");
        Intrinsics.checkNotNullParameter(legacyHash, "legacyHash");
        this.callbacks = configuration.callbacks;
        this.configuration = configuration;
        this.delegate = delegate;
        this.identityHash = identityHash;
        this.legacyHash = legacyHash;
    }

    private final void checkIdentity(SupportSQLiteDatabase supportSQLiteDatabase) {
        ValidationResult onValidateSchema;
        String str;
        if (Companion.hasRoomMasterTable$room_runtime(supportSQLiteDatabase)) {
            Cursor query = supportSQLiteDatabase.query(new SimpleSQLiteQuery(RoomMasterTable.READ_QUERY));
            try {
                Cursor cursor = query;
                if (cursor.moveToFirst()) {
                    str = cursor.getString(0);
                } else {
                    str = null;
                }
                ws.b.a(query, null);
                if (!Intrinsics.areEqual(this.identityHash, str) && !Intrinsics.areEqual(this.legacyHash, str)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.identityHash + ", found: " + str);
                }
                return;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ws.b.a(query, th2);
                    throw th3;
                }
            }
        }
        if (this.delegate.onValidateSchema(supportSQLiteDatabase).isValid) {
            this.delegate.onPostMigrate(supportSQLiteDatabase);
            updateIdentity(supportSQLiteDatabase);
            return;
        }
        throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
    }

    private final void createMasterTableIfNotExists(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
    }

    private final void updateIdentity(SupportSQLiteDatabase supportSQLiteDatabase) {
        createMasterTableIfNotExists(supportSQLiteDatabase);
        supportSQLiteDatabase.execSQL(RoomMasterTable.createInsertQuery(this.identityHash));
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onConfigure(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        super.onConfigure(db2);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onCreate(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        boolean hasEmptySchema$room_runtime = Companion.hasEmptySchema$room_runtime(db2);
        this.delegate.createAllTables(db2);
        if (!hasEmptySchema$room_runtime) {
            ValidationResult onValidateSchema = this.delegate.onValidateSchema(db2);
            if (!onValidateSchema.isValid) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
            }
        }
        updateIdentity(db2);
        this.delegate.onCreate(db2);
        List<RoomDatabase.Callback> list = this.callbacks;
        if (list != null) {
            for (RoomDatabase.Callback callback : list) {
                callback.onCreate(db2);
            }
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onDowngrade(@NotNull SupportSQLiteDatabase db2, int i10, int i11) {
        Intrinsics.checkNotNullParameter(db2, "db");
        onUpgrade(db2, i10, i11);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onOpen(@NotNull SupportSQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
        super.onOpen(db2);
        checkIdentity(db2);
        this.delegate.onOpen(db2);
        List<RoomDatabase.Callback> list = this.callbacks;
        if (list != null) {
            for (RoomDatabase.Callback callback : list) {
                callback.onOpen(db2);
            }
        }
        this.configuration = null;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
    public void onUpgrade(@NotNull SupportSQLiteDatabase db2, int i10, int i11) {
        List<Migration> findMigrationPath;
        Intrinsics.checkNotNullParameter(db2, "db");
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration != null && (findMigrationPath = databaseConfiguration.migrationContainer.findMigrationPath(i10, i11)) != null) {
            this.delegate.onPreMigrate(db2);
            for (Migration migration : findMigrationPath) {
                migration.migrate(new SupportSQLiteConnection(db2));
            }
            ValidationResult onValidateSchema = this.delegate.onValidateSchema(db2);
            if (onValidateSchema.isValid) {
                this.delegate.onPostMigrate(db2);
                updateIdentity(db2);
                return;
            }
            throw new IllegalStateException("Migration didn't properly handle: " + onValidateSchema.expectedFoundMsg);
        }
        DatabaseConfiguration databaseConfiguration2 = this.configuration;
        if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(i10, i11)) {
            if (databaseConfiguration2.allowDestructiveMigrationForAllTables) {
                Companion.dropAllTables$room_runtime(db2);
            } else {
                this.delegate.dropAllTables(db2);
            }
            List<RoomDatabase.Callback> list = this.callbacks;
            if (list != null) {
                for (RoomDatabase.Callback callback : list) {
                    callback.onDestructiveMigration(db2);
                }
            }
            this.delegate.createAllTables(db2);
            return;
        }
        throw new IllegalStateException("A migration from " + i10 + " to " + i11 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RoomOpenHelper(@NotNull DatabaseConfiguration configuration, @NotNull Delegate delegate, @NotNull String legacyHash) {
        this(configuration, delegate, "", legacyHash);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(legacyHash, "legacyHash");
    }
}
