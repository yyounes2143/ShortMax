package com.ss.ttvideoengine.database;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class KVDBManager implements IKVStorage {
    private static final String TAG = "KVDBManager";
    private boolean createDBSuccess;
    private SQLiteDatabase mDB;
    private KVDBHelper mHelper;
    private String mTableName;

    public KVDBManager(Context context, String str) {
        this.mDB = null;
        this.mTableName = null;
        this.mHelper = null;
        this.createDBSuccess = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            this.mTableName = str;
            KVDBHelper kVDBHelper = new KVDBHelper(context, this.mTableName);
            this.mHelper = kVDBHelper;
            try {
                SQLiteDatabase writableDatabase = kVDBHelper.getWritableDatabase();
                this.mDB = writableDatabase;
                if (writableDatabase != null) {
                    this.mDB.execSQL(String.format("CREATE TABLE IF NOT EXISTS %s(key TEXT PRIMARY KEY,value TEXT,time INTEGER)", this.mTableName));
                }
            } catch (Throwable th2) {
                try {
                    TTVideoEngineLog.d(th2);
                    TTVideoEngineLog.e(TAG, "create db fail, table name " + this.mTableName);
                    if (this.mHelper == null) {
                        TTVideoEngineLog.e(TAG, "create db fail, mHelper == null, table name " + this.mTableName);
                    }
                } finally {
                    if (this.mHelper == null) {
                        TTVideoEngineLog.e(TAG, "create db fail, mHelper == null, table name " + this.mTableName);
                    }
                    this.createDBSuccess = this.mHelper != null;
                }
            }
            return;
        }
        TTVideoEngineLog.e(TAG, "context or name is invalid");
    }

    @Override // com.ss.ttvideoengine.database.IKVStorage
    public boolean clear() {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = this.mDB;
        if (sQLiteDatabase2 == null) {
            return false;
        }
        try {
            sQLiteDatabase2.beginTransaction();
            try {
                this.mDB.execSQL(String.format("DELETE FROM %s ", this.mTableName));
                this.mDB.setTransactionSuccessful();
                TTVideoEngineLog.d(TAG, "all cleared");
                sQLiteDatabase = this.mDB;
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
                sQLiteDatabase = this.mDB;
            }
            sQLiteDatabase.endTransaction();
            return true;
        } catch (Exception e11) {
            TTVideoEngineLog.d(e11);
            return false;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0056 -> B:23:0x005c). Please submit an issue!!! */
    public String get(String str) {
        String str2;
        String str3 = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                if (this.mDB != null) {
                    try {
                        Cursor rawQuery = this.mDB.rawQuery(String.format("SELECT * FROM %s WHERE key='%s'", this.mTableName, str), null);
                        if (rawQuery.moveToFirst()) {
                            str2 = rawQuery.getString(rawQuery.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        } else {
                            str2 = null;
                        }
                        try {
                            rawQuery.close();
                            TTVideoEngineLog.d(TAG, "get key: " + str + " value: " + str2);
                            return str2;
                        } catch (Exception e10) {
                            e = e10;
                            TTVideoEngineLog.d(e);
                            return str3;
                        }
                    } catch (Exception e11) {
                        e = e11;
                        str2 = null;
                    } catch (Throwable unused) {
                        return str3;
                    }
                }
            } catch (Throwable unused2) {
                str3 = str2;
            }
        }
        TTVideoEngineLog.e(TAG, "open db fail");
        return null;
    }

    @Override // com.ss.ttvideoengine.database.IKVStorage
    public String getString(String str) {
        return get(str);
    }

    public boolean isCreateDBSuccess() {
        return this.createDBSuccess;
    }

    @Override // com.ss.ttvideoengine.database.IKVStorage
    public boolean putString(String str, String str2) {
        return save(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005b A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #3 {all -> 0x0044, blocks: (B:8:0x0011, B:10:0x002c, B:21:0x0054, B:23:0x005b), top: B:38:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean remove(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "remove key "
            android.database.sqlite.SQLiteDatabase r1 = r6.mDB
            java.lang.String r2 = "KVDBManager"
            r3 = 0
            if (r1 == 0) goto L79
            boolean r1 = android.text.TextUtils.isEmpty(r7)
            if (r1 == 0) goto L10
            goto L79
        L10:
            r1 = 1
            android.database.sqlite.SQLiteDatabase r4 = r6.mDB     // Catch: java.lang.Throwable -> L44
            r4.beginTransaction()     // Catch: java.lang.Throwable -> L44
            java.lang.String r4 = "DELETE FROM %s WHERE key='%s'"
            java.lang.String r5 = r6.mTableName     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r7}     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            java.lang.String r4 = java.lang.String.format(r4, r5)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            android.database.sqlite.SQLiteDatabase r5 = r6.mDB     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            r5.execSQL(r4)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            android.database.sqlite.SQLiteDatabase r4 = r6.mDB     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            r4.setTransactionSuccessful()     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L54
            android.database.sqlite.SQLiteDatabase r4 = r6.mDB     // Catch: java.lang.Throwable -> L44
            r4.endTransaction()     // Catch: java.lang.Throwable -> L44
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
            r4.<init>()     // Catch: java.lang.Throwable -> L44
            r4.append(r0)     // Catch: java.lang.Throwable -> L44
            r4.append(r7)     // Catch: java.lang.Throwable -> L44
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L44
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r2, r7)     // Catch: java.lang.Throwable -> L44
            return r1
        L44:
            r7 = move-exception
            goto L70
        L46:
            r4 = move-exception
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r4)     // Catch: java.lang.Throwable -> L53
            android.database.sqlite.SQLiteDatabase r7 = r6.mDB     // Catch: java.lang.Throwable -> L50
            r7.endTransaction()     // Catch: java.lang.Throwable -> L50
            return r3
        L50:
            r7 = move-exception
            r3 = r1
            goto L70
        L53:
            r3 = r1
        L54:
            android.database.sqlite.SQLiteDatabase r4 = r6.mDB     // Catch: java.lang.Throwable -> L44
            r4.endTransaction()     // Catch: java.lang.Throwable -> L44
            if (r3 != 0) goto L6d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
            r4.<init>()     // Catch: java.lang.Throwable -> L44
            r4.append(r0)     // Catch: java.lang.Throwable -> L44
            r4.append(r7)     // Catch: java.lang.Throwable -> L44
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L44
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r2, r7)     // Catch: java.lang.Throwable -> L44
        L6d:
            r7 = r3 ^ 1
            return r7
        L70:
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r7)     // Catch: java.lang.Throwable -> L76
            r7 = r3 ^ 1
            return r7
        L76:
            r7 = r3 ^ 1
            return r7
        L79:
            java.lang.String r7 = "open db fail"
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r2, r7)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.database.KVDBManager.remove(java.lang.String):boolean");
    }

    @Override // com.ss.ttvideoengine.database.IKVStorage
    public boolean removeString(String str) {
        return remove(str);
    }

    public boolean save(String str, String str2) {
        boolean z10 = false;
        if (this.mDB != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            TTVideoEngineLog.i(TAG, "save key: " + str + " value: " + str2);
            try {
                this.mDB.beginTransaction();
                try {
                    try {
                        this.mDB.execSQL(String.format("REPLACE INTO %s VALUES ('%s','%s',%d)", this.mTableName, str, str2, Long.valueOf(System.currentTimeMillis())));
                        this.mDB.setTransactionSuccessful();
                        this.mDB.endTransaction();
                        return true;
                    } catch (SQLException e10) {
                        TTVideoEngineLog.d(e10);
                        try {
                            this.mDB.endTransaction();
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            z10 = true;
                            try {
                                TTVideoEngineLog.d(th);
                                return !z10;
                            } catch (Throwable unused) {
                                return !z10;
                            }
                        }
                    }
                } catch (IllegalStateException e11) {
                    TTVideoEngineLog.d(e11);
                    this.mDB.endTransaction();
                    return true;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            TTVideoEngineLog.e(TAG, "open db fail");
            return false;
        }
    }
}
