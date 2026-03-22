package com.startshorts.androidplayer.db;

import androidx.annotation.NonNull;
import androidx.room.InvalidationTracker;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenDelegate;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import vd.f;
/* loaded from: classes6.dex */
public final class Database_Impl extends Database {

    /* renamed from: a  reason: collision with root package name */
    private volatile vd.a f41465a;

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "DbEvent");
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "DbEvent");
    }

    @Override // com.startshorts.androidplayer.db.Database
    public vd.a e() {
        vd.a aVar;
        if (this.f41465a != null) {
            return this.f41465a;
        }
        synchronized (this) {
            try {
                if (this.f41465a == null) {
                    this.f41465a = new f(this);
                }
                aVar = this.f41465a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    @NonNull
    /* renamed from: g */
    public RoomOpenDelegate createOpenDelegate() {
        return new a(1, "93eb2531463830f1f340e6fc4931d786", "e12ac9eba3c848ff07d19ef12fde8dee");
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> map) {
        return new ArrayList();
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(vd.a.class, f.i());
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends RoomOpenDelegate {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `DbEvent` (`localId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `uid` TEXT, `app_version` TEXT, `event_id` TEXT, `event_name` TEXT, `event_extra` TEXT, `event_time` INTEGER NOT NULL, `local_time` INTEGER NOT NULL, `check_time` INTEGER NOT NULL, `status` INTEGER NOT NULL)");
            SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
            SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '93eb2531463830f1f340e6fc4931d786')");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `DbEvent`");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(@NonNull SQLiteConnection sQLiteConnection) {
            Database_Impl.this.internalInitInvalidationTracker(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(@NonNull SQLiteConnection sQLiteConnection) {
            DBUtil.dropFtsSyncTriggers(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        @NonNull
        public RoomOpenDelegate.ValidationResult onValidateSchema(@NonNull SQLiteConnection sQLiteConnection) {
            HashMap hashMap = new HashMap(10);
            hashMap.put("localId", new TableInfo.Column("localId", "INTEGER", true, 1, null, 1));
            hashMap.put(CommonConstant.KEY_UID, new TableInfo.Column(CommonConstant.KEY_UID, "TEXT", false, 0, null, 1));
            hashMap.put("app_version", new TableInfo.Column("app_version", "TEXT", false, 0, null, 1));
            hashMap.put("event_id", new TableInfo.Column("event_id", "TEXT", false, 0, null, 1));
            hashMap.put("event_name", new TableInfo.Column("event_name", "TEXT", false, 0, null, 1));
            hashMap.put("event_extra", new TableInfo.Column("event_extra", "TEXT", false, 0, null, 1));
            hashMap.put("event_time", new TableInfo.Column("event_time", "INTEGER", true, 0, null, 1));
            hashMap.put("local_time", new TableInfo.Column("local_time", "INTEGER", true, 0, null, 1));
            hashMap.put("check_time", new TableInfo.Column("check_time", "INTEGER", true, 0, null, 1));
            hashMap.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("DbEvent", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(sQLiteConnection, "DbEvent");
            if (!tableInfo.equals(read)) {
                return new RoomOpenDelegate.ValidationResult(false, "DbEvent(com.startshorts.androidplayer.db.model.DbEvent).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
            }
            return new RoomOpenDelegate.ValidationResult(true, null);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onCreate(@NonNull SQLiteConnection sQLiteConnection) {
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPostMigrate(@NonNull SQLiteConnection sQLiteConnection) {
        }
    }
}
