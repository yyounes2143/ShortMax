package com.tencent.wcdb;

import android.util.Pair;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.database.SQLiteDatabaseConfiguration;
import com.tencent.wcdb.database.SQLiteException;
import com.tencent.wcdb.database.SQLiteTrace;
import com.tencent.wcdb.support.Log;
import java.io.File;
import java.util.List;
/* loaded from: classes7.dex */
public final class DefaultDatabaseErrorHandler implements DatabaseErrorHandler {
    private static final String[] SUFFIX_TO_BACKUP = {"", "-journal", "-wal", ".sm", ".bak", "-vfslog", "-vfslo1"};
    private static final String TAG = "WCDB.DefaultDatabaseErrorHandler";
    private final boolean mNoCorruptionBackup;

    public DefaultDatabaseErrorHandler() {
        this.mNoCorruptionBackup = false;
    }

    private void deleteDatabaseFile(String str) {
        File file;
        File file2;
        if (!str.equalsIgnoreCase(SQLiteDatabaseConfiguration.MEMORY_DB_PATH) && str.trim().length() != 0) {
            Log.e(TAG, "Remove database file: " + str);
            int i10 = 0;
            if (!this.mNoCorruptionBackup) {
                if (!new File(new File(str).getParentFile(), "corrupted").mkdirs()) {
                    Log.e(TAG, "Could not create directory for corrupted database. Corruption backup may be unavailable.");
                }
                String str2 = file2.getPath() + DomExceptionUtils.SEPARATOR + file.getName();
                String[] strArr = SUFFIX_TO_BACKUP;
                int length = strArr.length;
                while (i10 < length) {
                    String str3 = strArr[i10];
                    moveOrDeleteFile(str + str3, str2 + str3);
                    i10++;
                }
                return;
            }
            String[] strArr2 = SUFFIX_TO_BACKUP;
            int length2 = strArr2.length;
            while (i10 < length2) {
                deleteFile(str + strArr2[i10]);
                i10++;
            }
        }
    }

    private static boolean deleteFile(String str) {
        return new File(str).delete();
    }

    private static boolean moveOrDeleteFile(String str, String str2) {
        File file = new File(str);
        boolean renameTo = file.renameTo(new File(str2));
        if (!renameTo) {
            file.delete();
        }
        return renameTo;
    }

    @Override // com.tencent.wcdb.DatabaseErrorHandler
    public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        List<Pair<String, String>> list;
        Log.e(TAG, "Corruption reported by sqlite on database: " + sQLiteDatabase.getPath());
        if (!sQLiteDatabase.isOpen()) {
            deleteDatabaseFile(sQLiteDatabase.getPath());
            return;
        }
        try {
            list = sQLiteDatabase.getAttachedDbs();
        } catch (SQLiteException unused) {
            list = null;
        }
        SQLiteTrace traceCallback = sQLiteDatabase.getTraceCallback();
        if (traceCallback != null) {
            traceCallback.onDatabaseCorrupted(sQLiteDatabase);
        }
        try {
            sQLiteDatabase.close();
            if (list != null) {
                for (Pair<String, String> pair : list) {
                    deleteDatabaseFile((String) pair.second);
                }
                return;
            }
        } catch (SQLiteException unused2) {
            if (list != null) {
                for (Pair<String, String> pair2 : list) {
                    deleteDatabaseFile((String) pair2.second);
                }
                return;
            }
        } catch (Throwable th2) {
            if (list != null) {
                for (Pair<String, String> pair3 : list) {
                    deleteDatabaseFile((String) pair3.second);
                }
            } else {
                deleteDatabaseFile(sQLiteDatabase.getPath());
            }
            throw th2;
        }
        deleteDatabaseFile(sQLiteDatabase.getPath());
    }

    public DefaultDatabaseErrorHandler(boolean z10) {
        this.mNoCorruptionBackup = z10;
    }
}
