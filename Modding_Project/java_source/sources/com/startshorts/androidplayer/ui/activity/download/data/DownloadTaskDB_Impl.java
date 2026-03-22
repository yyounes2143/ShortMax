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
import wh.h;
/* loaded from: classes7.dex */
public final class DownloadTaskDB_Impl extends DownloadTaskDB {

    /* renamed from: a  reason: collision with root package name */
    private volatile wh.a f45220a;

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "download_tasks");
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "download_tasks");
    }

    @Override // com.startshorts.androidplayer.ui.activity.download.data.DownloadTaskDB
    public wh.a e() {
        wh.a aVar;
        if (this.f45220a != null) {
            return this.f45220a;
        }
        synchronized (this) {
            try {
                if (this.f45220a == null) {
                    this.f45220a = new h(this);
                }
                aVar = this.f45220a;
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
        return new a(1, "c3bbd1484132bf4de44e2e36a0d30e3f", "2612d380e50ddeee45f2d1bd05d93a1d");
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
        hashMap.put(wh.a.class, h.m());
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
            SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `download_tasks` (`shortPlayId` INTEGER NOT NULL, `dramaId` INTEGER NOT NULL, `dramaNum` INTEGER NOT NULL, `url` TEXT NOT NULL, `solution` INTEGER NOT NULL, `fileSize` INTEGER NOT NULL, `downloadState` INTEGER NOT NULL, `cacheKey` TEXT NOT NULL, `shortCoverUrl` TEXT, `dramaCoverUrl` TEXT, `dramaName` TEXT, `content` TEXT, `shortPlayCode` TEXT, `upack` TEXT, `lock` INTEGER, `downloadProgress` REAL NOT NULL, PRIMARY KEY(`cacheKey`))");
            SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
            SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c3bbd1484132bf4de44e2e36a0d30e3f')");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `download_tasks`");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(@NonNull SQLiteConnection sQLiteConnection) {
            DownloadTaskDB_Impl.this.internalInitInvalidationTracker(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(@NonNull SQLiteConnection sQLiteConnection) {
            DBUtil.dropFtsSyncTriggers(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        @NonNull
        public RoomOpenDelegate.ValidationResult onValidateSchema(@NonNull SQLiteConnection sQLiteConnection) {
            HashMap hashMap = new HashMap(16);
            hashMap.put(CallAppDataKey.KEY_SHORT_PLAY_ID, new TableInfo.Column(CallAppDataKey.KEY_SHORT_PLAY_ID, "INTEGER", true, 0, null, 1));
            hashMap.put("dramaId", new TableInfo.Column("dramaId", "INTEGER", true, 0, null, 1));
            hashMap.put("dramaNum", new TableInfo.Column("dramaNum", "INTEGER", true, 0, null, 1));
            hashMap.put("url", new TableInfo.Column("url", "TEXT", true, 0, null, 1));
            hashMap.put("solution", new TableInfo.Column("solution", "INTEGER", true, 0, null, 1));
            hashMap.put("fileSize", new TableInfo.Column("fileSize", "INTEGER", true, 0, null, 1));
            hashMap.put("downloadState", new TableInfo.Column("downloadState", "INTEGER", true, 0, null, 1));
            hashMap.put("cacheKey", new TableInfo.Column("cacheKey", "TEXT", true, 1, null, 1));
            hashMap.put("shortCoverUrl", new TableInfo.Column("shortCoverUrl", "TEXT", false, 0, null, 1));
            hashMap.put("dramaCoverUrl", new TableInfo.Column("dramaCoverUrl", "TEXT", false, 0, null, 1));
            hashMap.put("dramaName", new TableInfo.Column("dramaName", "TEXT", false, 0, null, 1));
            hashMap.put("content", new TableInfo.Column("content", "TEXT", false, 0, null, 1));
            hashMap.put("shortPlayCode", new TableInfo.Column("shortPlayCode", "TEXT", false, 0, null, 1));
            hashMap.put("upack", new TableInfo.Column("upack", "TEXT", false, 0, null, 1));
            hashMap.put("lock", new TableInfo.Column("lock", "INTEGER", false, 0, null, 1));
            hashMap.put("downloadProgress", new TableInfo.Column("downloadProgress", "REAL", true, 0, null, 1));
            TableInfo tableInfo = new TableInfo("download_tasks", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(sQLiteConnection, "download_tasks");
            if (!tableInfo.equals(read)) {
                return new RoomOpenDelegate.ValidationResult(false, "download_tasks(com.startshorts.androidplayer.bean.download.DownloadTaskInfo).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
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
