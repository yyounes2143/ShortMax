package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ba {
    private static final Object tB = new Object();
    private Context ZYk;
    private tB oJ;

    /* loaded from: classes3.dex */
    private class ZYk extends AbstractCursor {
        private ZYk() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i10) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i10) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i10) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i10) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i10) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i10) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i10) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(Context context) {
        Context applicationContext;
        try {
            if (context == null) {
                applicationContext = si.oJ();
            } else {
                applicationContext = context.getApplicationContext();
            }
            this.ZYk = applicationContext;
            if (this.oJ == null) {
                this.oJ = new tB();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context tB() {
        Context context = this.ZYk;
        if (context == null) {
            return si.oJ();
        }
        return context;
    }

    /* loaded from: classes3.dex */
    public class tB {
        private SQLiteDatabase ZYk = null;

        public tB() {
        }

        private synchronized void Pfn() {
            try {
                synchronized (ba.tB) {
                    SQLiteDatabase sQLiteDatabase = this.ZYk;
                    if (sQLiteDatabase != null) {
                        if (!sQLiteDatabase.isOpen()) {
                        }
                    }
                    ba baVar = ba.this;
                    SQLiteDatabase writableDatabase = new oJ(baVar.tB()).getWritableDatabase();
                    this.ZYk = writableDatabase;
                    writableDatabase.setLockingEnabled(false);
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", th2.getMessage());
                if (!ba()) {
                    return;
                }
                throw th2;
            }
        }

        private synchronized boolean ba() {
            SQLiteDatabase sQLiteDatabase = this.ZYk;
            if (sQLiteDatabase != null) {
                if (sQLiteDatabase.inTransaction()) {
                    return true;
                }
            }
            return false;
        }

        public synchronized void ZYk() {
            Pfn();
            SQLiteDatabase sQLiteDatabase = this.ZYk;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.beginTransaction();
        }

        public synchronized void ex() {
            Pfn();
            SQLiteDatabase sQLiteDatabase = this.ZYk;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }

        public SQLiteDatabase oJ() {
            Pfn();
            return this.ZYk;
        }

        public synchronized void tB() {
            Pfn();
            SQLiteDatabase sQLiteDatabase = this.ZYk;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.setTransactionSuccessful();
        }

        public synchronized void oJ(String str) throws SQLException {
            try {
                Pfn();
                this.ZYk.execSQL(str);
            } catch (Throwable th2) {
                if (ba()) {
                    throw th2;
                }
            }
        }

        public synchronized Cursor oJ(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursor;
            try {
                Pfn();
                cursor = this.ZYk.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", th2.getMessage());
                ZYk zYk = new ZYk();
                if (ba()) {
                    throw th2;
                }
                cursor = zYk;
            }
            return cursor;
        }

        public synchronized int oJ(String str, ContentValues contentValues, String str2, String[] strArr) {
            int i10;
            try {
                Pfn();
                i10 = this.ZYk.update(str, contentValues, str2, strArr);
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", e10.getMessage());
                if (ba()) {
                    throw e10;
                }
                i10 = 0;
            }
            return i10;
        }

        public synchronized long oJ(String str, String str2, ContentValues contentValues) {
            long j10;
            try {
                Pfn();
                j10 = this.ZYk.replace(str, str2, contentValues);
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", e10.getMessage());
                if (ba()) {
                    throw e10;
                }
                j10 = -1;
            }
            return j10;
        }

        public synchronized int oJ(String str, String str2, String[] strArr) {
            int i10;
            try {
                Pfn();
                i10 = this.ZYk.delete(str, str2, strArr);
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", e10.getMessage());
                if (ba()) {
                    throw e10;
                }
                i10 = 0;
            }
            return i10;
        }
    }

    public tB oJ() {
        return this.oJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class oJ extends SQLiteOpenHelper {
        final Context oJ;

        public oJ(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 11);
            this.oJ = context;
        }

        private void ZYk(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.kkU.oJ.tB.ex());
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
            if (r1 != null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
            r1.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
            if (r1 != null) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
            return r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList<java.lang.String> ex(android.database.sqlite.SQLiteDatabase r4) {
            /*
                r3 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r1 = 0
                java.lang.String r2 = "select name from sqlite_master where type='table' order by name"
                android.database.Cursor r1 = r4.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                if (r1 == 0) goto L2f
            Le:
                boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                if (r4 == 0) goto L2f
                r4 = 0
                java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                java.lang.String r2 = "android_metadata"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                if (r2 != 0) goto Le
                java.lang.String r2 = "sqlite_sequence"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                if (r2 != 0) goto Le
                r0.add(r4)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L3b
                goto Le
            L2d:
                r4 = move-exception
                goto L35
            L2f:
                if (r1 == 0) goto L3e
            L31:
                r1.close()
                goto L3e
            L35:
                if (r1 == 0) goto L3a
                r1.close()
            L3a:
                throw r4
            L3b:
                if (r1 == 0) goto L3e
                goto L31
            L3e:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ba.oJ.ex(android.database.sqlite.SQLiteDatabase):java.util.ArrayList");
        }

        private void oJ(SQLiteDatabase sQLiteDatabase, Context context) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.ex.oJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.kkU.tB());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.awB.oJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.WcQ.oJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.jr.ZYk.oJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.si.tB());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.tB());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.kkU.oJ.tB.tB());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.eZI.oJ());
        }

        private void tB(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> ex = ex(sQLiteDatabase);
            if (ex != null && ex.size() > 0) {
                Iterator<String> it = ex.iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                oJ(sQLiteDatabase, this.oJ);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.tB("DBHelper", th2.getMessage());
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (i10 > i11) {
                try {
                    tB(sQLiteDatabase);
                    oJ(sQLiteDatabase, ba.this.ZYk);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (i10 > i11) {
                try {
                    tB(sQLiteDatabase);
                } catch (Throwable unused) {
                }
            }
            oJ(sQLiteDatabase, ba.this.ZYk);
            switch (i10) {
                case 1:
                    oJ(sQLiteDatabase);
                    break;
                case 2:
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                    oJ(sQLiteDatabase);
                    break;
                case 3:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.awB.oJ());
                    oJ(sQLiteDatabase);
                    break;
                case 4:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.tB());
                    oJ(sQLiteDatabase);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.WcQ.oJ());
                    oJ(sQLiteDatabase);
                    break;
                case 6:
                    oJ(sQLiteDatabase);
                    break;
            }
            if (i10 < 11) {
                try {
                    ZYk(sQLiteDatabase);
                    com.bytedance.sdk.openadsdk.jr.ZYk.oJ(sQLiteDatabase);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.tB("DBHelper", th2.getMessage());
                }
            }
        }

        private void oJ(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.ex.ZYk());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.kkU.ex());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.awB.ZYk());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.ex.WcQ.ZYk());
        }
    }
}
