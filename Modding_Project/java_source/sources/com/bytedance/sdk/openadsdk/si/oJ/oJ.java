package com.bytedance.sdk.openadsdk.si.oJ;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.bytedance.sdk.component.utils.QSm;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class oJ extends SQLiteOpenHelper {
    private static volatile oJ ZYk;
    final Context oJ;

    private oJ(Context context) {
        super(context, "pag_monitor.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.oJ = context;
    }

    public static SQLiteDatabase ZYk() {
        try {
            oJ tB = tB();
            if (tB != null) {
                SQLiteDatabase readableDatabase = tB.getReadableDatabase();
                if (readableDatabase.isOpen()) {
                    return readableDatabase;
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            Log.i("MonitorSQLiteOpenHelper", th2.getMessage());
            return null;
        }
    }

    public static SQLiteDatabase oJ() {
        try {
            oJ tB = tB();
            if (tB != null) {
                SQLiteDatabase writableDatabase = tB.getWritableDatabase();
                if (writableDatabase.isOpen()) {
                    return writableDatabase;
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            Log.i("MonitorSQLiteOpenHelper", th2.getMessage());
            return null;
        }
    }

    private static oJ tB() {
        if (ZYk == null) {
            synchronized (oJ.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new oJ(com.bytedance.sdk.openadsdk.si.oJ.oJ());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(new StringBuilder("CREATE TABLE IF NOT EXISTS monitor_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,sdk_version TEXT ,scene TEXT ,start_count INTEGER default 0 , success_count INTEGER default 0  , fail_count INTEGER default 0  , rit TEXT  , tag TEXT  , label TEXT  , timestamp INTEGER default 0 ,mediation TEXT  , is_init INTEGER , extra TEXT )").toString());
        } catch (Throwable th2) {
            Log.e("MonitorSQLiteOpenHelper", th2.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            if (i10 > i11) {
                oJ(sQLiteDatabase);
                onCreate(sQLiteDatabase);
                return;
            }
            onCreate(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    private ArrayList<String> ZYk(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    String string = rawQuery.getString(0);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                rawQuery.close();
            }
        } catch (Exception e10) {
            QSm.tB("MonitorSQLiteOpenHelper", e10.getMessage());
        }
        return arrayList;
    }

    private void oJ(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> ZYk2 = ZYk(sQLiteDatabase);
        if (ZYk2 == null || ZYk2.size() <= 0) {
            return;
        }
        Iterator<String> it = ZYk2.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
