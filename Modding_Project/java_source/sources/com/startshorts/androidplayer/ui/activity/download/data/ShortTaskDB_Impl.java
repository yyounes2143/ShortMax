package com.startshorts.androidplayer.ui.activity.download.data;

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
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import wh.j;
import wh.n;
/* loaded from: classes7.dex */
public final class ShortTaskDB_Impl extends ShortTaskDB {

    /* renamed from: a  reason: collision with root package name */
    private volatile j f45227a;

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "short_tasks");
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "short_tasks");
    }

    @Override // com.startshorts.androidplayer.ui.activity.download.data.ShortTaskDB
    public j e() {
        j jVar;
        if (this.f45227a != null) {
            return this.f45227a;
        }
        synchronized (this) {
            try {
                if (this.f45227a == null) {
                    this.f45227a = new n(this);
                }
                jVar = this.f45227a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    @NonNull
    /* renamed from: g */
    public RoomOpenDelegate createOpenDelegate() {
        return new a(1, "eb471b8265f788d4765f58be3e90e4eb", "009389c14a5ada87ad0e353f11ca9661");
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
        hashMap.put(j.class, n.g());
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a extends RoomOpenDelegate {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void createAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `short_tasks` (`shortPlayId` INTEGER NOT NULL, `shortPlayCode` TEXT, `dramaName` TEXT, `shortCoverUrl` TEXT, `content` TEXT, `addTaskTime` INTEGER NOT NULL, `hasUnfinishedJob` INTEGER NOT NULL, PRIMARY KEY(`shortPlayId`))");
            SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
            SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'eb471b8265f788d4765f58be3e90e4eb')");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `short_tasks`");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(@NonNull SQLiteConnection sQLiteConnection) {
            ShortTaskDB_Impl.this.internalInitInvalidationTracker(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(@NonNull SQLiteConnection sQLiteConnection) {
            DBUtil.dropFtsSyncTriggers(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        @NonNull
        public RoomOpenDelegate.ValidationResult onValidateSchema(@NonNull SQLiteConnection sQLiteConnection) {
            HashMap hashMap = new HashMap(7);
            hashMap.put(CallAppDataKey.KEY_SHORT_PLAY_ID, new TableInfo.Column(CallAppDataKey.KEY_SHORT_PLAY_ID, "INTEGER", true, 1, null, 1));
            hashMap.put("shortPlayCode", new TableInfo.Column("shortPlayCode", "TEXT", false, 0, null, 1));
            hashMap.put("dramaName", new TableInfo.Column("dramaName", "TEXT", false, 0, null, 1));
            hashMap.put("shortCoverUrl", new TableInfo.Column("shortCoverUrl", "TEXT", false, 0, null, 1));
            hashMap.put("content", new TableInfo.Column("content", "TEXT", false, 0, null, 1));
            hashMap.put("addTaskTime", new TableInfo.Column("addTaskTime", "INTEGER", true, 0, null, 1));
            hashMap.put("hasUnfinishedJob", new TableInfo.Column("hasUnfinishedJob", "INTEGER", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("short_tasks", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(sQLiteConnection, "short_tasks");
            if (!tableInfo.equals(read)) {
                return new RoomOpenDelegate.ValidationResult(false, "short_tasks(com.startshorts.androidplayer.bean.download.ShortTaskInfo).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
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
