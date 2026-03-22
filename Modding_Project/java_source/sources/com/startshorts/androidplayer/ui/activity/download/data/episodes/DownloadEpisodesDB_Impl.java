package com.startshorts.androidplayer.ui.activity.download.data.episodes;

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
import xh.e;
/* loaded from: classes7.dex */
public final class DownloadEpisodesDB_Impl extends DownloadEpisodesDB {

    /* renamed from: a  reason: collision with root package name */
    private volatile xh.a f45243a;

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.performClear(false, "download_episodes");
    }

    @Override // androidx.room.RoomDatabase
    @NonNull
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "download_episodes");
    }

    @Override // com.startshorts.androidplayer.ui.activity.download.data.episodes.DownloadEpisodesDB
    public xh.a e() {
        xh.a aVar;
        if (this.f45243a != null) {
            return this.f45243a;
        }
        synchronized (this) {
            try {
                if (this.f45243a == null) {
                    this.f45243a = new e(this);
                }
                aVar = this.f45243a;
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
        return new a(1, "11426bd006de261faf43ed244884a52b", "12349ff0501c10d88cb1be984b3629fa");
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
        hashMap.put(xh.a.class, e.g());
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
            SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `download_episodes` (`shortPlayId` INTEGER NOT NULL, `episodes` TEXT, PRIMARY KEY(`shortPlayId`))");
            SQLite.execSQL(sQLiteConnection, RoomMasterTable.CREATE_QUERY);
            SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '11426bd006de261faf43ed244884a52b')");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void dropAllTables(@NonNull SQLiteConnection sQLiteConnection) {
            SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `download_episodes`");
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onOpen(@NonNull SQLiteConnection sQLiteConnection) {
            DownloadEpisodesDB_Impl.this.internalInitInvalidationTracker(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        public void onPreMigrate(@NonNull SQLiteConnection sQLiteConnection) {
            DBUtil.dropFtsSyncTriggers(sQLiteConnection);
        }

        @Override // androidx.room.RoomOpenDelegate
        @NonNull
        public RoomOpenDelegate.ValidationResult onValidateSchema(@NonNull SQLiteConnection sQLiteConnection) {
            HashMap hashMap = new HashMap(2);
            hashMap.put(CallAppDataKey.KEY_SHORT_PLAY_ID, new TableInfo.Column(CallAppDataKey.KEY_SHORT_PLAY_ID, "INTEGER", true, 1, null, 1));
            hashMap.put("episodes", new TableInfo.Column("episodes", "TEXT", false, 0, null, 1));
            TableInfo tableInfo = new TableInfo("download_episodes", hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(sQLiteConnection, "download_episodes");
            if (!tableInfo.equals(read)) {
                return new RoomOpenDelegate.ValidationResult(false, "download_episodes(com.startshorts.androidplayer.ui.activity.download.data.episodes.DownloadEpisodesInfo).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
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
