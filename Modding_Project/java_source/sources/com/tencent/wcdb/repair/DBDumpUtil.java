package com.tencent.wcdb.repair;

import com.tencent.wcdb.database.SQLiteDatabase;
import com.tencent.wcdb.support.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes7.dex */
public class DBDumpUtil {
    private static final String TAG = "WCDB.DBDumpUtil";

    /* loaded from: classes7.dex */
    public interface ExecuteSqlCallback {
        String preExecute(String str);
    }

    public static String buildColumnsString(ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("(");
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                sb2.append(arrayList.get(i10));
                if (i10 != arrayList.size() - 1) {
                    sb2.append(",");
                }
            }
            sb2.append(")");
            String sb3 = sb2.toString();
            System.out.println(sb3);
            return sb3;
        }
        return "";
    }

    public static boolean doRecoveryDb(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        return doRecoveryDb(sQLiteDatabase, str, str2, str3, null, null, null, true);
    }

    public static ArrayList<String> getColumnNamesFromSql(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] split = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")")).trim().split(",");
        for (int i10 = 0; i10 < split.length; i10++) {
            String trim = split[i10].trim();
            split[i10] = trim;
            arrayList.add(split[i10].substring(0, trim.indexOf(" ")));
        }
        return arrayList;
    }

    public static String getTableNameFromSql(String str) {
        if (str.length() > 100) {
            str = str.substring(0, 100);
        }
        String[] split = str.split("\\s");
        if (split != null && split.length > 1) {
            return split[2].replaceAll("\"", "");
        }
        return null;
    }

    private static native boolean nativeDumpDB(String str, String str2, String str3);

    private static native boolean nativeIsSqlComplete(String str);

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0045: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:16:0x0045 */
    public static byte[] readFromFile(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        File file = new File(str);
        FileInputStream fileInputStream3 = null;
        try {
            if (!file.exists()) {
                Log.w(TAG, "readFromFile error, file is not exit, path = %s", str);
                return null;
            }
            try {
                int length = (int) file.length();
                fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[length];
                    int read = fileInputStream2.read(bArr);
                    if (read != length) {
                        Log.w(TAG, "readFromFile error, size is not equal, path = %s, file length is %d, count is %d", str, Integer.valueOf(length), Integer.valueOf(read));
                        try {
                            fileInputStream2.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return null;
                    }
                    try {
                        fileInputStream2.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    return bArr;
                } catch (Exception e12) {
                    e = e12;
                    e.printStackTrace();
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    Log.e(TAG, "readFromFile failed!");
                    return null;
                }
            } catch (Exception e14) {
                e = e14;
                fileInputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream3 != null) {
                    try {
                        fileInputStream3.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream3 = fileInputStream;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f7, code lost:
        if (r12.startsWith("CREATE TABLE") == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00f9, code lost:
        r7.put(r5, buildColumnsString(getColumnNamesFromSql(r12)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x010b, code lost:
        if (r12.startsWith("INSERT INTO") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x010d, code lost:
        r8 = (java.lang.String) r7.get(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0117, code lost:
        if (android.text.TextUtils.isEmpty(r8) != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0119, code lost:
        r9 = new java.lang.StringBuilder("INSERT INTO ");
        r9.append("\"");
        r9.append(r5);
        r9.append("\"");
        r5 = r9.toString();
        r9.append(r8);
        r12 = r12.replace(r5, r9.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0138, code lost:
        if (r23 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013a, code lost:
        r5 = r23.preExecute(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013f, code lost:
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0144, code lost:
        if (android.text.TextUtils.isEmpty(r5) != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0146, code lost:
        r12 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0147, code lost:
        r11 = r11 + 1;
        r17.execSQL(r12);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0150, code lost:
        if (r13 < 100) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0152, code lost:
        r17.setTransactionSuccessful();
        r17.endTransaction();
        r17.beginTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015b, code lost:
        r13 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00f3 A[EDGE_INSN: B:128:0x00f3->B:63:0x00f3 ?: BREAK  , EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e6 A[Catch: all -> 0x006a, IOException -> 0x01d4, TRY_LEAVE, TryCatch #4 {IOException -> 0x01d4, blocks: (B:12:0x002f, B:14:0x0039, B:19:0x0049, B:21:0x0061, B:38:0x0092, B:40:0x0098, B:41:0x00a0, B:43:0x00a6, B:61:0x00e6, B:49:0x00b9, B:51:0x00bf, B:52:0x00c7, B:54:0x00cd, B:28:0x0072, B:30:0x007c, B:32:0x0082, B:34:0x0088, B:83:0x0163, B:86:0x016b), top: B:134:0x002f, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean doRecoveryDb(com.tencent.wcdb.database.SQLiteDatabase r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.util.List<java.lang.String> r21, java.util.List<java.lang.String> r22, com.tencent.wcdb.repair.DBDumpUtil.ExecuteSqlCallback r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wcdb.repair.DBDumpUtil.doRecoveryDb(com.tencent.wcdb.database.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.util.List, java.util.List, com.tencent.wcdb.repair.DBDumpUtil$ExecuteSqlCallback, boolean):boolean");
    }
}
