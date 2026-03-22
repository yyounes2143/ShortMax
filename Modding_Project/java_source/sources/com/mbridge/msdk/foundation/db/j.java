package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.signals.SignalManager;
/* compiled from: FrequenceDao.java */
/* loaded from: classes5.dex */
public class j extends a<com.mbridge.msdk.foundation.entity.g> {

    /* renamed from: a  reason: collision with root package name */
    private static j f26788a;

    private j(f fVar) {
        super(fVar);
    }

    public static j a(f fVar) {
        if (f26788a == null) {
            synchronized (j.class) {
                try {
                    if (f26788a == null) {
                        f26788a = new j(fVar);
                    }
                } finally {
                }
            }
        }
        return f26788a;
    }

    public synchronized void b(String str) {
        com.mbridge.msdk.foundation.db.middle.a.b().a(str);
        if (a(str) && getReadableDatabase() != null) {
            getReadableDatabase().execSQL("UPDATE frequence Set impression_count=impression_count+1 WHERE id= ?", new Object[]{str});
        }
    }

    public synchronized void b(com.mbridge.msdk.foundation.entity.g gVar) {
        if (!a(gVar.a())) {
            a(gVar);
        }
    }

    public synchronized void a() {
        try {
            long currentTimeMillis = System.currentTimeMillis() - SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            com.mbridge.msdk.foundation.db.middle.a.b().a(currentTimeMillis);
            String[] strArr = {String.valueOf(currentTimeMillis)};
            if (getWritableDatabase() != null) {
                getWritableDatabase().delete("frequence", "ts< ? ", strArr);
            }
        } catch (Exception unused) {
        }
    }

    public synchronized boolean a(String str) {
        Cursor cursor = null;
        try {
            synchronized (str) {
                Cursor rawQuery = getReadableDatabase().rawQuery("SELECT id FROM frequence WHERE id= ?", new String[]{str});
                if (rawQuery != null && rawQuery.getCount() > 0) {
                    rawQuery.close();
                    return true;
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return false;
            }
        } catch (Exception unused) {
            if (0 != 0) {
                cursor.close();
            }
            return false;
        }
    }

    private synchronized long a(com.mbridge.msdk.foundation.entity.g gVar) {
        try {
            com.mbridge.msdk.foundation.db.middle.a.b().a(gVar);
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", gVar.a());
            contentValues.put("fc_a", Integer.valueOf(gVar.c()));
            contentValues.put("fc_b", Integer.valueOf(gVar.d()));
            contentValues.put(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(gVar.f()));
            contentValues.put("impression_count", Integer.valueOf(gVar.e()));
            contentValues.put("click_count", Integer.valueOf(gVar.b()));
            contentValues.put(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(gVar.f()));
            if (getWritableDatabase() == null) {
                return -1L;
            }
            return getWritableDatabase().insert("frequence", null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }
}
