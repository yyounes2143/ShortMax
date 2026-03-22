package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.foundation.same.report.BatchReportMessage;
import com.mbridge.msdk.system.NoProGuard;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
/* loaded from: classes5.dex */
public class BatchReportDao extends a<BatchReportMessage> implements Serializable, NoProGuard {
    private static volatile BatchReportDao instance;
    private final Object lock;

    protected BatchReportDao(f fVar) {
        super(fVar);
        this.lock = new Object();
    }

    public static BatchReportDao getInstance(f fVar) {
        if (instance == null) {
            synchronized (BatchReportDao.class) {
                try {
                    if (instance == null) {
                        instance = new BatchReportDao(fVar);
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public void addReportMessage(String str, int i10) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (!com.mbridge.msdk.util.d.a(writableDatabase)) {
            return;
        }
        try {
            synchronized (this.lock) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("report_message", str);
                contentValues.put(CrashHianalyticsData.TIME, Long.valueOf(System.currentTimeMillis()));
                contentValues.put("uuid", UUID.randomUUID().toString().replace("-", ""));
                contentValues.put("report_state", (Integer) 0);
                contentValues.put("type", Integer.valueOf(i10));
                writableDatabase.insert("batch_report", null, contentValues);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void deleteBatchReportMessagesByTimestamp(long j10) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (!com.mbridge.msdk.util.d.a(writableDatabase)) {
            return;
        }
        try {
            synchronized (this.lock) {
                writableDatabase.execSQL("delete from batch_report where " + CrashHianalyticsData.TIME + " <= ?", new Object[]{Long.valueOf(j10)});
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public ArrayList<BatchReportMessage> getBatchReportMessages(long j10, int i10) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor cursor = null;
        if (!com.mbridge.msdk.util.d.a(writableDatabase)) {
            return null;
        }
        ArrayList<BatchReportMessage> arrayList = new ArrayList<>();
        synchronized (this.lock) {
            try {
                try {
                    Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM batch_report WHERE " + CrashHianalyticsData.TIME + " <= ? AND report_state = 0 AND type = ? ORDER BY " + CrashHianalyticsData.TIME + " ASC ", new String[]{String.valueOf(j10), String.valueOf(i10)});
                    if (rawQuery != null) {
                        while (rawQuery.moveToNext()) {
                            try {
                                arrayList.add(new BatchReportMessage(rawQuery.getString(rawQuery.getColumnIndex("uuid")), rawQuery.getString(rawQuery.getColumnIndex("report_message")), rawQuery.getLong(rawQuery.getColumnIndex(CrashHianalyticsData.TIME))));
                            } catch (Throwable th2) {
                                th = th2;
                                cursor = rawQuery;
                                if (cursor != null) {
                                    try {
                                        cursor.close();
                                    } catch (Exception unused) {
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                    if (rawQuery != null) {
                        try {
                            rawQuery.close();
                        } catch (Exception unused2) {
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("report_state", (Integer) 1);
                    writableDatabase.update("batch_report", contentValues, "time <= ?", new String[]{String.valueOf(j10)});
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return arrayList;
    }

    public void updateMessagesReportState(ArrayList<BatchReportMessage> arrayList) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (arrayList != null && arrayList.size() != 0 && com.mbridge.msdk.util.d.a(writableDatabase)) {
            Iterator<BatchReportMessage> it = arrayList.iterator();
            while (it.hasNext()) {
                BatchReportMessage next = it.next();
                try {
                    synchronized (this.lock) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("report_state", (Integer) 0);
                        writableDatabase.update("batch_report", contentValues, "uuid = ?", new String[]{next.getUuid()});
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public static BatchReportDao getInstance(Context context) {
        if (instance == null) {
            synchronized (BatchReportDao.class) {
                try {
                    if (instance == null) {
                        instance = new BatchReportDao(g.a(context));
                    }
                } finally {
                }
            }
        }
        return instance;
    }
}
