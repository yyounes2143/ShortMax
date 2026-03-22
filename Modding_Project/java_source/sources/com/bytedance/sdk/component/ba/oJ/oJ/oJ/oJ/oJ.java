package com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.component.ba.oJ.so;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends tB {
    private com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ ex;
    protected List<String> oJ;
    private final Context tB;

    public oJ(Context context, com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        super(context);
        this.oJ = new ArrayList();
        this.tB = context;
        this.ex = oJVar;
        if (oJVar == null) {
            this.ex = com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ.tB();
        }
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    public String ZYk() {
        com.bytedance.sdk.component.ba.oJ.oJ.Pfn ex = so.cFZ().ex();
        if (ex != null) {
            return ex.ZYk();
        }
        return null;
    }

    public byte ex() {
        return (byte) 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r0 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int oJ() {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            android.content.Context r2 = r10.Pfn()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            java.lang.String r3 = r10.ZYk()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            java.lang.String r4 = "count(1)"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            r8 = 0
            r9 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            if (r0 == 0) goto L25
            r0.moveToFirst()     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L23 java.lang.Exception -> L31
            goto L25
        L23:
            r1 = move-exception
            goto L2b
        L25:
            if (r0 == 0) goto L34
        L27:
            r0.close()     // Catch: java.lang.Exception -> L34
            goto L34
        L2b:
            if (r0 == 0) goto L30
            r0.close()     // Catch: java.lang.Exception -> L30
        L30:
            throw r1
        L31:
            if (r0 == 0) goto L34
            goto L27
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ.oJ():int");
    }

    public byte tB() {
        return (byte) 2;
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

    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(int i10, String str) {
        String str2;
        String[] strArr;
        byte b10;
        String str3;
        Cursor oJ;
        long oJ2 = com.bytedance.sdk.component.ba.oJ.ZYk.oJ.oJ(i10, Pfn());
        ZYk();
        if (oJ2 <= 0) {
            oJ2 = 1;
        } else if (oJ2 > 100) {
            oJ2 = 100;
        }
        String str4 = str + " DESC limit " + oJ2;
        ArrayList arrayList = new ArrayList();
        this.oJ.clear();
        long si2 = so.cFZ().si();
        if (si2 > 0) {
            strArr = new String[]{String.valueOf(System.currentTimeMillis() - si2)};
            str2 = "gen_time>?";
        } else {
            str2 = null;
            strArr = null;
        }
        if (com.bytedance.sdk.component.ba.oJ.tB.oJ.ex() && ex() == 3) {
            b10 = 3;
            str3 = "id";
            oJ = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), new String[]{"id", AppMeasurementSdk.ConditionalUserProperty.VALUE, "encrypt", AppsFlyerProperties.CHANNEL}, str2, strArr, null, null, str4);
        } else {
            b10 = 3;
            str3 = "id";
            oJ = com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), new String[]{str3, AppMeasurementSdk.ConditionalUserProperty.VALUE, "encrypt"}, str2, strArr, null, null, str4);
        }
        Cursor cursor = oJ;
        if (cursor != null) {
            try {
                com.bytedance.sdk.component.ba.oJ.Pfn eZI = so.cFZ().eZI();
                while (cursor.moveToNext()) {
                    try {
                        String string = cursor.getString(cursor.getColumnIndex(str3));
                        String string2 = cursor.getString(cursor.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        int i11 = cursor.getInt(cursor.getColumnIndex("encrypt"));
                        int i12 = (com.bytedance.sdk.component.ba.oJ.tB.oJ.ex() && ex() == b10) ? cursor.getInt(cursor.getColumnIndex(AppsFlyerProperties.CHANNEL)) : 0;
                        if (i11 == 1) {
                            try {
                                string2 = eZI.oJ(string2);
                            } catch (Throwable th2) {
                                th = th2;
                                th.getMessage();
                            }
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.oJ.add(string);
                        } else if (arrayList.size() > 100) {
                            break;
                        } else {
                            JSONObject jSONObject = new JSONObject(string2);
                            com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ oJVar = new com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ(string, jSONObject);
                            oJVar.oJ(ex());
                            oJVar.ZYk(tB());
                            if (com.bytedance.sdk.component.ba.oJ.tB.oJ.ex() && ex() == b10) {
                                oJVar.oJ(i12);
                            }
                            com.bytedance.sdk.component.ba.oJ.tB.oJ.oJ(jSONObject, oJVar);
                            arrayList.add(oJVar);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                try {
                    cursor.close();
                    if (!this.oJ.isEmpty()) {
                        oJ(this.oJ);
                        this.oJ.clear();
                    }
                } catch (Exception unused) {
                }
            } catch (Throwable th4) {
                try {
                    cursor.close();
                    if (!this.oJ.isEmpty()) {
                        oJ(this.oJ);
                        this.oJ.clear();
                    }
                } catch (Exception unused2) {
                }
                throw th4;
            }
        }
        ZYk();
        arrayList.size();
        return arrayList;
    }

    private void ZYk(int i10, long j10) {
        if (j10 > 0 || i10 > 0) {
            com.bytedance.sdk.component.ba.oJ.oJ.oJ.tB.oJ(Pfn(), ZYk(), "gen_time <? OR retry >?", new String[]{String.valueOf(System.currentTimeMillis() - j10), String.valueOf(i10)});
            ZYk();
        }
    }

    public static String ZYk(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    public List<com.bytedance.sdk.component.ba.oJ.ex.oJ> oJ(String str) {
        com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar = this.ex;
        if (oJVar == null) {
            return new ArrayList();
        }
        return oJ(oJVar.ZYk(), str);
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
        if (this.ex == null) {
            return false;
        }
        int oJ = oJ();
        int oJ2 = this.ex.oJ();
        ZYk();
        return (com.bytedance.sdk.component.ba.oJ.tB.oJ.tB() && (i10 == 1 || i10 == 2)) ? oJ > 0 : oJ >= oJ2;
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
