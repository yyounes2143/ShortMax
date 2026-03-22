package com.apm.insight.e.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
/* compiled from: DuplicateLogDAO.java */
/* loaded from: classes2.dex */
public final class b extends a<com.apm.insight.d.a> {
    public b() {
        super("duplicatelog");
    }

    @Override // com.apm.insight.e.a.a
    protected final /* synthetic */ ContentValues a(com.apm.insight.d.a aVar) {
        com.apm.insight.d.a aVar2 = aVar;
        ContentValues contentValues = new ContentValues();
        contentValues.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, aVar2.f6840a);
        contentValues.put("insert_time", Long.valueOf(aVar2.f6841b));
        return contentValues;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.database.sqlite.SQLiteDatabase r11, java.lang.String r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 == 0) goto L2e
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto La
            goto L2e
        La:
            java.lang.String r3 = r10.f6872a     // Catch: java.lang.Throwable -> L25
            java.lang.String r5 = "path=?"
            java.lang.String[] r6 = new java.lang.String[]{r12}     // Catch: java.lang.Throwable -> L25
            r8 = 0
            r9 = 0
            r4 = 0
            r7 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L25
            int r12 = r11.getCount()     // Catch: java.lang.Throwable -> L25
            r11.close()     // Catch: java.lang.Throwable -> L23
            goto L2a
        L23:
            r11 = move-exception
            goto L27
        L25:
            r11 = move-exception
            r12 = r0
        L27:
            com.apm.insight.a.b(r11)
        L2a:
            if (r12 <= 0) goto L2e
            r11 = 1
            return r11
        L2e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.e.a.b.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    @Override // com.apm.insight.e.a.a
    public final void a(SQLiteDatabase sQLiteDatabase, com.apm.insight.d.a aVar) {
        if (aVar == null || a(sQLiteDatabase, aVar.f6840a)) {
            return;
        }
        super.a(sQLiteDatabase, (SQLiteDatabase) aVar);
        try {
            sQLiteDatabase.execSQL("delete from " + this.f6872a + " where _id in (select _id from " + this.f6872a + " order by insert_time desc limit 1000 offset 500)");
        } catch (Exception e10) {
            com.apm.insight.a.b((Throwable) e10);
        }
    }

    @Override // com.apm.insight.e.a.a
    protected final HashMap<String, String> a() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "TEXT");
        hashMap.put("insert_time", "INTEGER");
        hashMap.put("ext1", "TEXT");
        hashMap.put("ext2", "TEXT");
        return hashMap;
    }
}
