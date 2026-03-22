package com.bytedance.sdk.component.ba.oJ.ba;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3.dex */
public class ba implements Pfn {
    private Context oJ;

    public ba(Context context) {
        this.oJ = context;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.Pfn
    public void ZYk(ex exVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", exVar.oJ());
        contentValues.put("url", exVar.ZYk());
        contentValues.put("replaceholder", Integer.valueOf(exVar.tB() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(exVar.ex()));
        contentValues.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, exVar.cFZ());
        contentValues.put("error_msg", exVar.jFA());
        contentValues.put(TTVideoEngineInterface.PLAY_API_KEY_URLTYPE, Integer.valueOf(exVar.Pfn()));
        contentValues.put("ad_id", exVar.ba());
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(this.oJ, "trackurl", contentValues, "id=?", new String[]{exVar.oJ()});
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.Pfn
    public List<ex> oJ() {
        LinkedList linkedList = new LinkedList();
        Cursor oJ = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(this.oJ, "trackurl", null, null, null, null, null, null);
        if (oJ != null) {
            while (oJ.moveToNext()) {
                try {
                    try {
                        String string = oJ.getString(oJ.getColumnIndex("id"));
                        String string2 = oJ.getString(oJ.getColumnIndex("url"));
                        boolean z10 = oJ.getInt(oJ.getColumnIndex("replaceholder")) > 0;
                        int i10 = oJ.getInt(oJ.getColumnIndex("retry"));
                        int i11 = oJ.getInt(oJ.getColumnIndex(TTVideoEngineInterface.PLAY_API_KEY_URLTYPE));
                        String string3 = oJ.getString(oJ.getColumnIndex("ad_id"));
                        String string4 = oJ.getString(oJ.getColumnIndex(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE));
                        String string5 = oJ.getString(oJ.getColumnIndex("error_msg"));
                        ex exVar = new ex(string, string2, z10, i11, string3);
                        exVar.oJ(i10);
                        if (!TextUtils.isEmpty(string4)) {
                            exVar.oJ(string4);
                        }
                        if (!TextUtils.isEmpty(string5)) {
                            exVar.ZYk(string5);
                        }
                        linkedList.add(exVar);
                    } catch (Throwable unused) {
                    }
                } finally {
                    oJ.close();
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.Pfn
    public void tB(ex exVar) {
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(this.oJ, "trackurl", "id=?", new String[]{exVar.oJ()});
    }

    public static String ZYk() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.Pfn
    public ex oJ(String str) {
        Cursor oJ = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(this.oJ, "trackurl", null, "id=?", new String[]{str}, null, null, null);
        if (oJ != null && oJ.moveToFirst()) {
            try {
                String string = oJ.getString(oJ.getColumnIndex("id"));
                String string2 = oJ.getString(oJ.getColumnIndex("url"));
                boolean z10 = oJ.getInt(oJ.getColumnIndex("replaceholder")) > 0;
                int i10 = oJ.getInt(oJ.getColumnIndex("retry"));
                int i11 = oJ.getInt(oJ.getColumnIndex(TTVideoEngineInterface.PLAY_API_KEY_URLTYPE));
                String string3 = oJ.getString(oJ.getColumnIndex("ad_id"));
                String string4 = oJ.getString(oJ.getColumnIndex(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE));
                String string5 = oJ.getString(oJ.getColumnIndex("error_msg"));
                ex exVar = new ex(string, string2, z10, i11, string3);
                exVar.oJ(i10);
                if (!TextUtils.isEmpty(string4)) {
                    exVar.oJ(string4);
                }
                if (!TextUtils.isEmpty(string5)) {
                    exVar.ZYk(string5);
                }
                return exVar;
            } catch (Throwable th2) {
                try {
                    th2.getMessage();
                    oJ.close();
                    oJ = null;
                } finally {
                    oJ.close();
                }
            }
        }
        if (oJ != null) {
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ba.Pfn
    public void oJ(ex exVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", exVar.oJ());
        contentValues.put("url", exVar.ZYk());
        contentValues.put("replaceholder", Integer.valueOf(exVar.tB() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(exVar.ex()));
        contentValues.put(TTVideoEngineInterface.PLAY_API_KEY_URLTYPE, Integer.valueOf(exVar.Pfn()));
        contentValues.put("ad_id", exVar.ba());
        contentValues.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, exVar.cFZ());
        contentValues.put("error_msg", exVar.jFA());
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(this.oJ, "trackurl", contentValues);
    }
}
