package com.ss.ttvideoengine.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class VideoModelDBManager {
    private static final int MAX_CACHE_SIZE = 200;
    private static final int MIN_CACHE_SIZE = 20;
    private static final String NAME = "videomodel";
    private static final String TAG = "VideoModelDBManager";
    private static int mCacheSize = 200;
    private static SQLiteDatabase mDB = null;
    private static VideoModelDBManager mInstance = null;
    private static boolean sEnableSizeLimit = true;

    /* loaded from: classes6.dex */
    public static class CacheInfo {
        public long time = 0;
        public String videoModelStr = null;
        public String vid = null;
    }

    private VideoModelDBManager(Context context) {
        DBHelper dBHelper;
        if (context != null && (dBHelper = DBHelper.getInstance(context)) != null) {
            try {
                SQLiteDatabase writableDatabase = dBHelper.getWritableDatabase();
                mDB = writableDatabase;
                if (writableDatabase != null) {
                    mDB.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s(vid TEXT PRIMARY KEY,videomodel TEXT,time INTEGER)", NAME));
                }
            } catch (Throwable th2) {
                TTVideoEngineLog.d(th2);
            }
        }
    }

    public static void clear() {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = mDB;
        if (sQLiteDatabase2 == null) {
            return;
        }
        try {
            sQLiteDatabase2.beginTransaction();
            try {
                mDB.execSQL(String.format("DELETE FROM %s ", NAME));
                mDB.setTransactionSuccessful();
                TTVideoEngineLog.i(TAG, "all cleared");
                sQLiteDatabase = mDB;
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
                sQLiteDatabase = mDB;
            }
            sQLiteDatabase.endTransaction();
        } catch (Exception e11) {
            TTVideoEngineLog.d(e11);
        }
    }

    public static int count() {
        if (mDB == null) {
            return -1;
        }
        int i10 = 0;
        try {
            Cursor rawQuery = mDB.rawQuery(String.format("SELECT COUNT(*) FROM %s", NAME), null);
            if (rawQuery.moveToFirst()) {
                i10 = (int) rawQuery.getLong(0);
            }
            rawQuery.close();
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
        }
        TTVideoEngineLog.d(TAG, "count:" + i10);
        return i10;
    }

    public static void delete(String str) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = mDB;
        if (sQLiteDatabase2 == null) {
            return;
        }
        try {
            sQLiteDatabase2.beginTransaction();
            try {
                mDB.execSQL(String.format("DELETE FROM %s WHERE vid='%s'", NAME, str));
                mDB.setTransactionSuccessful();
                sQLiteDatabase = mDB;
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
                sQLiteDatabase = mDB;
            }
            sQLiteDatabase.endTransaction();
        } catch (Exception e11) {
            TTVideoEngineLog.d(e11);
        }
        TTVideoEngineLog.i(TAG, "deleted vid:" + str);
    }

    public static VideoModelDBManager getInstance(Context context) {
        if (mInstance == null) {
            synchronized (VideoModelDBManager.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new VideoModelDBManager(context);
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insert(java.lang.String r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "videomodel"
            android.database.sqlite.SQLiteDatabase r1 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB
            if (r1 == 0) goto Lb9
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 != 0) goto Lb9
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 == 0) goto L15
            goto Lb9
        L15:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "insert vid:"
            r1.append(r2)
            r1.append(r5)
            java.lang.String r2 = " videomodel:"
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "VideoModelDBManager"
            com.ss.ttvideoengine.utils.TTVideoEngineLog.i(r2, r1)
            android.database.sqlite.SQLiteDatabase r1 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Exception -> L7a
            r1.beginTransaction()     // Catch: java.lang.Exception -> L7a
            java.lang.String r1 = "REPLACE INTO %s VALUES ('%s','%s',%d)"
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.Object[] r5 = new java.lang.Object[]{r0, r5, r6, r3}     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.String r5 = java.lang.String.format(r1, r5)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            android.database.sqlite.SQLiteDatabase r6 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            r6.execSQL(r5)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            boolean r5 = com.ss.ttvideoengine.database.VideoModelDBManager.sEnableSizeLimit     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            if (r5 == 0) goto L6f
            java.lang.String r5 = "DELETE FROM %s WHERE vid IN (SELECT vid FROM %s ORDER BY time DESC LIMIT -1 OFFSET %d)"
            int r6 = com.ss.ttvideoengine.database.VideoModelDBManager.mCacheSize     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.Object[] r6 = new java.lang.Object[]{r0, r0, r6}     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            java.lang.String r5 = java.lang.String.format(r5, r6)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            android.database.sqlite.SQLiteDatabase r6 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            r6.execSQL(r5)     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            goto L6f
        L69:
            r5 = move-exception
            goto L8b
        L6b:
            r5 = move-exception
            goto L7c
        L6d:
            r5 = move-exception
            goto L82
        L6f:
            android.database.sqlite.SQLiteDatabase r5 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            r5.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L69 java.lang.IllegalStateException -> L6b android.database.SQLException -> L6d
            android.database.sqlite.SQLiteDatabase r5 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Exception -> L7a
        L76:
            r5.endTransaction()     // Catch: java.lang.Exception -> L7a
            goto Lb9
        L7a:
            r5 = move-exception
            goto L91
        L7c:
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r5)     // Catch: java.lang.Throwable -> L69
            android.database.sqlite.SQLiteDatabase r5 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Exception -> L7a
            goto L76
        L82:
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r5)     // Catch: java.lang.Throwable -> L69
            android.database.sqlite.SQLiteDatabase r5 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Exception -> L7a
            r5.endTransaction()     // Catch: java.lang.Exception -> L7a
            goto L94
        L8b:
            android.database.sqlite.SQLiteDatabase r6 = com.ss.ttvideoengine.database.VideoModelDBManager.mDB     // Catch: java.lang.Exception -> L7a
            r6.endTransaction()     // Catch: java.lang.Exception -> L7a
            throw r5     // Catch: java.lang.Exception -> L7a
        L91:
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r5)
        L94:
            int r5 = count()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "sqlExcHappen count "
            r6.append(r0)
            r6.append(r5)
            java.lang.String r6 = r6.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r2, r6)
            if (r5 <= 0) goto Lb9
            int r5 = r5 + (-10)
            com.ss.ttvideoengine.database.VideoModelDBManager.mCacheSize = r5
            r6 = 20
            if (r5 >= r6) goto Lb9
            com.ss.ttvideoengine.database.VideoModelDBManager.mCacheSize = r6
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.database.VideoModelDBManager.insert(java.lang.String, java.lang.String):void");
    }

    public static CacheInfo query(String str) {
        Cursor rawQuery;
        CacheInfo cacheInfo;
        CacheInfo cacheInfo2 = null;
        if (TextUtils.isEmpty(str) || mDB == null) {
            return null;
        }
        try {
            rawQuery = mDB.rawQuery(String.format("SELECT * FROM %s WHERE vid='%s'", NAME, str), null);
            cacheInfo = new CacheInfo();
        } catch (Exception e10) {
            e = e10;
        }
        try {
            cacheInfo.vid = str;
            if (rawQuery.moveToFirst()) {
                cacheInfo.videoModelStr = rawQuery.getString(rawQuery.getColumnIndex(NAME));
                cacheInfo.time = rawQuery.getLong(rawQuery.getColumnIndex(CrashHianalyticsData.TIME));
            }
            rawQuery.close();
            TTVideoEngineLog.d(TAG, "query vid:" + str + " videomodel:" + cacheInfo.videoModelStr);
            return cacheInfo;
        } catch (Exception e11) {
            e = e11;
            cacheInfo2 = cacheInfo;
            TTVideoEngineLog.d(e);
            return cacheInfo2;
        }
    }

    public static void setCacheSize(int i10) {
        mCacheSize = i10;
    }

    public static void setEnableSizeLimit(boolean z10) {
        sEnableSizeLimit = z10;
    }
}
