package com.mbridge.msdk.tracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DatabaseManager.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f30198a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30199b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f30200c = new Object();

    public c(b bVar, String str) {
        this.f30198a = bVar;
        this.f30199b = str;
    }

    private static boolean c(SQLiteDatabase sQLiteDatabase) {
        return sQLiteDatabase == null || !sQLiteDatabase.isOpen() || sQLiteDatabase.isReadOnly();
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception e10) {
            if (a.f30196a) {
                Log.e("TrackManager", "transactionSuccess: ", e10);
            }
        }
    }

    public long a(i iVar) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            long j10 = -1;
            if (y.b(this.f30198a)) {
                return -1L;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "insert getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return -1L;
            }
            try {
                a(sQLiteDatabase);
                ContentValues contentValues = new ContentValues(16);
                e a10 = iVar.a();
                contentValues.put("name", a10.b());
                contentValues.put("type", Integer.valueOf(a10.h()));
                contentValues.put("time_stamp", Long.valueOf(a10.g()));
                contentValues.put("properties", a10.d().toString());
                contentValues.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, Integer.valueOf(a10.c()));
                contentValues.put("state", Integer.valueOf(iVar.e()));
                contentValues.put("report_count", Integer.valueOf(iVar.c()));
                contentValues.put("uuid", a10.i());
                contentValues.put("ignore_max_timeout", Integer.valueOf(!a10.k()));
                contentValues.put("ignore_max_retry_times", Integer.valueOf(!a10.j()));
                contentValues.put("invalid_time", Long.valueOf(iVar.b()));
                j10 = sQLiteDatabase.insert(this.f30199b, null, contentValues);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "insert: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
            return j10;
        }
    }

    public int b() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            int i10 = 0;
            if (y.b(this.f30198a)) {
                return 0;
            }
            Cursor cursor = null;
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "getAvailableCount getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return 0;
            }
            try {
                a(sQLiteDatabase);
                cursor = sQLiteDatabase.query(this.f30199b, null, "state = ? OR state = ?", new String[]{String.valueOf(3), String.valueOf(0)}, null, null, null, null);
                if (cursor != null && cursor.moveToNext()) {
                    i10 = Math.max(cursor.getCount(), 0);
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                y.a(cursor);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "getAvailableCount: " + e11.getMessage());
                }
                b(sQLiteDatabase);
                y.a(cursor);
            }
            return i10;
        }
    }

    public void c(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            if (y.b(this.f30198a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateSuccess getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 2);
                    sQLiteDatabase.update(this.f30199b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateSuccess: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
        }
    }

    public void c() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            if (y.b(this.f30198a)) {
                return;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateForReporting getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                ContentValues contentValues = new ContentValues();
                contentValues.put("state", (Integer) 3);
                contentValues.put("report_error_message", "update from reporting");
                sQLiteDatabase.update(this.f30199b, contentValues, "state = ?", new String[]{String.valueOf(1)});
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateForReporting: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
        }
    }

    public void b(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            if (y.b(this.f30198a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateReporting getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 1);
                    sQLiteDatabase.update(this.f30199b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateReporting: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
        }
    }

    public List<i> a(int i10) {
        SQLiteDatabase sQLiteDatabase;
        Throwable th2;
        Cursor cursor;
        List<i> list;
        synchronized (this.f30200c) {
            Cursor cursor2 = null;
            List<i> list2 = null;
            cursor2 = null;
            if (y.b(this.f30198a)) {
                return null;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "getAvailable getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return null;
            }
            try {
                try {
                    a(sQLiteDatabase);
                    cursor = sQLiteDatabase.query(this.f30199b, null, "state = ? OR state = ?", new String[]{String.valueOf(0), String.valueOf(3)}, null, null, "priority DESC", String.valueOf(i10));
                } catch (Exception e11) {
                    e = e11;
                    list = null;
                }
            } catch (Throwable th3) {
                Cursor cursor3 = cursor2;
                th2 = th3;
                cursor = cursor3;
            }
            try {
                list2 = y.b(cursor);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                y.a(cursor);
            } catch (Exception e12) {
                e = e12;
                List<i> list3 = list2;
                cursor2 = cursor;
                list = list3;
                if (a.f30196a) {
                    Log.e("TrackManager", "getAvailable: " + e.getMessage());
                }
                b(sQLiteDatabase);
                y.a(cursor2);
                list2 = list;
                return list2;
            } catch (Throwable th4) {
                th2 = th4;
                b(sQLiteDatabase);
                y.a(cursor);
                throw th2;
            }
            return list2;
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase) || !sQLiteDatabase.inTransaction()) {
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception e10) {
            if (a.f30196a) {
                Log.e("TrackManager", "endTransaction: ", e10);
            }
        }
    }

    public void a(List<i> list) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            if (y.b(this.f30198a) || y.b((List<?>) list)) {
                return;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateFailed getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return;
            }
            try {
                a(sQLiteDatabase);
                for (i iVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", Integer.valueOf(iVar.e()));
                    contentValues.put("report_count", Integer.valueOf(iVar.c()));
                    String d10 = iVar.d();
                    if (!TextUtils.isEmpty(d10)) {
                        contentValues.put("report_error_message", d10);
                    }
                    sQLiteDatabase.update(this.f30199b, contentValues, "uuid = ?", new String[]{iVar.f()});
                }
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "updateReportStateFailed: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
        }
    }

    public int a() {
        SQLiteDatabase sQLiteDatabase;
        synchronized (this.f30200c) {
            int i10 = -1;
            if (y.b(this.f30198a)) {
                return -1;
            }
            try {
                sQLiteDatabase = this.f30198a.getWritableDatabase();
            } catch (Exception e10) {
                if (a.f30196a) {
                    Log.e("TrackManager", "deleteInvalidEvents getWritableDatabase: " + e10.getMessage());
                }
                sQLiteDatabase = null;
            }
            if (c(sQLiteDatabase)) {
                return -1;
            }
            try {
                a(sQLiteDatabase);
                i10 = sQLiteDatabase.delete(this.f30199b, "state = ? OR state = ?", new String[]{String.valueOf(-1), String.valueOf(2)});
                d(sQLiteDatabase);
                b(sQLiteDatabase);
            } catch (Exception e11) {
                if (a.f30196a) {
                    Log.e("TrackManager", "deleteInvalidEvents: " + e11.getMessage());
                }
                b(sQLiteDatabase);
            }
            return i10;
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.beginTransaction();
        } catch (Exception e10) {
            if (a.f30196a) {
                Log.e("TrackManager", "beginTransaction: ", e10);
            }
        }
    }
}
