package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.component.ba.oJ.so;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class ex extends SQLiteOpenHelper {
    final Context oJ;

    public ex(Context context) {
        super(context, "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.oJ = context;
    }

    private void ZYk(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> tB = tB(sQLiteDatabase);
        if (tB != null && tB.size() > 0) {
            Iterator<String> it = tB.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
            }
        }
    }

    private void oJ(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ.ZYk(so.cFZ().ex().ZYk()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ex.tB(so.cFZ().ex().oJ()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ.tB(so.cFZ().ex().ex()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.ba.oJ(so.cFZ().ex().Pfn()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.ba.oJ.ba.ba.ZYk());
    }

    private ArrayList<String> tB(SQLiteDatabase sQLiteDatabase) {
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
        } catch (Exception unused) {
        }
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            oJ(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            if (i10 > i11) {
                ZYk(sQLiteDatabase);
                oJ(sQLiteDatabase);
                return;
            }
            oJ(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }
}
