package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.vungle.ads.internal.signals.SignalManager;
/* compiled from: FqInfoDao.java */
/* loaded from: classes5.dex */
public class i extends a<com.mbridge.msdk.foundation.entity.f> {

    /* renamed from: a  reason: collision with root package name */
    private static i f26787a;

    private i(f fVar) {
        super(fVar);
    }

    public static synchronized i a(f fVar) {
        i iVar;
        synchronized (i.class) {
            try {
                if (f26787a == null) {
                    f26787a = new i(fVar);
                }
                iVar = f26787a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVar;
    }

    public synchronized void a(String str) {
        try {
            String[] strArr = {String.valueOf(System.currentTimeMillis() - SignalManager.TWENTY_FOUR_HOURS_MILLIS), str};
            if (getWritableDatabase() != null) {
                getWritableDatabase().delete("fq_info", "time< ? and unitId=?", strArr);
            }
        } catch (Exception unused) {
        }
    }

    public synchronized void a(com.mbridge.msdk.foundation.entity.f fVar) {
        try {
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (getWritableDatabase() == null) {
                return;
            }
            if (fVar != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", fVar.a());
                contentValues.put(CrashHianalyticsData.TIME, Long.valueOf(fVar.b()));
                contentValues.put("unitId", fVar.d());
                contentValues.put("type", Integer.valueOf(fVar.c()));
                if (a(fVar.d(), fVar.a())) {
                    getWritableDatabase().update("fq_info", contentValues, "id = ? AND unitId = ? ", new String[]{fVar.a(), fVar.d()});
                } else {
                    getWritableDatabase().insert("fq_info", null, contentValues);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean a(String str, String str2) {
        try {
            Cursor rawQuery = getReadableDatabase().rawQuery("select id from fq_info where unitId= ?  and id= ? ", new String[]{str, str2});
            if (rawQuery != null && rawQuery.getCount() > 0) {
                rawQuery.close();
                return true;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
