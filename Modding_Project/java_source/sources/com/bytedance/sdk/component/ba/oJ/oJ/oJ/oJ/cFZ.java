package com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.so;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ extends tB {
    protected List<String> oJ;
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ tB;

    public cFZ(Context context, com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        super(context);
        this.oJ = new ArrayList();
        this.tB = oJVar;
        if (oJVar == null) {
            this.tB = com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ.tB();
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    public String ZYk() {
        return so.cFZ().ex().ex();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    protected long ba() {
        return com.bytedance.sdk.component.ba.oJ.cFZ.oJ.ZYk();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
        if (r1 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        if (r1 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int ex() {
        /*
            r9 = this;
            r0 = 0
            android.content.Context r1 = r9.Pfn()     // Catch: java.lang.Throwable -> L27
            java.lang.String r2 = r9.ZYk()     // Catch: java.lang.Throwable -> L27
            java.lang.String r3 = "count(1)"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L27
            r7 = 0
            r8 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r1 = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L27
            if (r1 == 0) goto L21
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L28
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L28
        L21:
            if (r1 == 0) goto L2b
        L23:
            r1.close()     // Catch: java.lang.Exception -> L2b
            goto L2b
        L27:
            r1 = 0
        L28:
            if (r1 == 0) goto L2b
            goto L23
        L2b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ.ex():int");
    }

    public byte oJ() {
        return (byte) 1;
    }

    public byte tB() {
        return (byte) 2;
    }

    public static String tB(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> ZYk(String str) {
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar = this.tB;
        if (oJVar == null) {
            return new ArrayList();
        }
        return oJ(oJVar.ZYk(), str);
    }

    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, String str) {
        long oJ = com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ(i10, Pfn());
        if (oJ <= 0) {
            oJ = 1;
        } else if (oJ > 100) {
            oJ = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.oJ.clear();
        Cursor oJ2 = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), new String[]{"id", AppMeasurementSdk.ConditionalUserProperty.VALUE, "encrypt"}, null, null, null, null, str + " DESC limit " + oJ);
        if (oJ2 != null) {
            while (oJ2.moveToNext()) {
                try {
                    try {
                        String string = oJ2.getString(oJ2.getColumnIndex("id"));
                        String string2 = oJ2.getString(oJ2.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        if (oJ2.getInt(oJ2.getColumnIndex("encrypt")) == 1) {
                            string2 = so.cFZ().eZI().oJ(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.oJ.add(string);
                        } else if (arrayList.size() > 100) {
                            break;
                        } else {
                            com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ oJVar = new com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ(string, new JSONObject(string2));
                            oJVar.ZYk(tB());
                            oJVar.oJ(oJ());
                            arrayList.add(oJVar);
                        }
                    } catch (Throwable unused) {
                    }
                } finally {
                    try {
                        oJ2.close();
                        if (!this.oJ.isEmpty()) {
                            oJ(this.oJ);
                            this.oJ.clear();
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return arrayList;
    }

    public void ZYk(List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar : list) {
            linkedList.add(oJVar.tB());
            com.bytedance.sdk.component.ba.oJ.tB.oJ.kkU(oJVar);
        }
        ZYk();
        linkedList.size();
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), "DELETE FROM " + ZYk() + " WHERE " + oJ("id", linkedList, 1000, true));
        tB(linkedList);
    }

    private void ZYk(int i10, long j10) {
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), "gen_time <? AND retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j10), String.valueOf(i10)});
    }

    protected void oJ(List<String> list) {
        ZYk();
        list.size();
        com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), "DELETE FROM " + ZYk() + " WHERE " + oJ("id", list, 1000, true));
        com.bytedance.sdk.component.ba.oJ.tB.ZYk.oJ(com.bytedance.sdk.component.ba.oJ.ZYk.ex.ex.jB(), list.size());
        tB(list);
    }

    public void oJ(int i10, long j10) {
        ZYk(i10, j10);
    }

    public boolean oJ(int i10) {
        return this.tB != null && ex() >= this.tB.oJ();
    }

    private static String oJ(String str, List<?> list, int i10, boolean z10) {
        int i11;
        String str2 = z10 ? " IN " : " NOT IN ";
        String str3 = z10 ? " OR " : " AND ";
        int min = Math.min(i10, 1000);
        int size = list.size();
        if (size % min == 0) {
            i11 = size / min;
        } else {
            i11 = (size / min) + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * min;
            String oJ = oJ(TextUtils.join("','", list.subList(i13, Math.min(i13 + min, size))), "");
            if (i12 != 0) {
                sb2.append(str3);
            }
            sb2.append(str);
            sb2.append(str2);
            sb2.append("('");
            sb2.append(oJ);
            sb2.append("')");
        }
        String sb3 = sb2.toString();
        return oJ(sb3, str + str2 + "('')");
    }

    private static String oJ(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
