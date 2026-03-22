package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.oJ.tB.oJ;
import com.bytedance.sdk.component.utils.LpP;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class tB {
    public List<oJ.C0170oJ> ZYk(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (oJVar2 != null && !oJVar2.ba().isEmpty()) {
            if (oJVar.ba().isEmpty()) {
                arrayList.addAll(oJVar2.ba());
            } else {
                for (oJ.C0170oJ c0170oJ : oJVar.ba()) {
                    if (!oJVar2.ba().contains(c0170oJ) && c0170oJ != null && c0170oJ.oJ() != null && c0170oJ.ZYk() != null) {
                        arrayList2.add(c0170oJ);
                    }
                }
                for (oJ.C0170oJ c0170oJ2 : oJVar2.ba()) {
                    if (!oJVar.ba().contains(c0170oJ2)) {
                        arrayList.add(c0170oJ2);
                    }
                }
            }
        } else {
            arrayList2.addAll(oJVar.ba());
        }
        if (oJ(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public abstract File oJ();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean oJ(Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        for (String str : map.keySet()) {
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar = map.get(str);
            if (oJVar != null && !oJ(oJVar.ba())) {
                return false;
            }
        }
        return true;
    }

    public void tB(List<oJ.C0170oJ> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ.C0170oJ c0170oJ : list) {
            File file = new File(oJ(), com.bytedance.sdk.component.utils.Pfn.oJ(c0170oJ.oJ()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean oJ(java.util.List<com.bytedance.sdk.component.adexpress.oJ.tB.oJ.C0170oJ> r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 == 0) goto L5b
            int r1 = r6.size()
            if (r1 <= 0) goto L5b
            java.io.File r1 = r5.oJ()
            if (r1 != 0) goto L10
            goto L5b
        L10:
            java.util.Iterator r6 = r6.iterator()
        L14:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L59
            java.lang.Object r1 = r6.next()
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ$oJ r1 = (com.bytedance.sdk.component.adexpress.oJ.tB.oJ.C0170oJ) r1
            java.lang.String r2 = r1.oJ()
            java.lang.String r2 = com.bytedance.sdk.component.utils.Pfn.oJ(r2)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L2f
            return r0
        L2f:
            java.io.File r3 = new java.io.File
            java.io.File r4 = r5.oJ()
            r3.<init>(r4, r2)
            java.lang.String r2 = com.bytedance.sdk.component.utils.Pfn.oJ(r3)
            boolean r4 = r3.exists()
            if (r4 == 0) goto L58
            boolean r3 = r3.isFile()
            if (r3 == 0) goto L58
            java.lang.String r3 = r1.ZYk()
            if (r3 == 0) goto L58
            java.lang.String r1 = r1.ZYk()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L14
        L58:
            return r0
        L59:
            r6 = 1
            return r6
        L5b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.oJ.ZYk.tB.oJ(java.util.List):boolean");
    }

    public static boolean tB(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar2) {
        if (oJVar != null) {
            try {
                if (!TextUtils.isEmpty(oJVar.tB())) {
                    if (oJVar2 == null) {
                        return false;
                    }
                    String cFZ = oJVar.cFZ();
                    String cFZ2 = oJVar2.cFZ();
                    if ((TextUtils.isEmpty(cFZ2) || cFZ2.equals(cFZ)) && !oJ(oJVar.tB(), oJVar2.tB())) {
                        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ = oJVar.oJ();
                        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2 = oJVar2.oJ();
                        if (oJ.isEmpty()) {
                            return !oJ2.isEmpty();
                        } else if (oJ2.isEmpty()) {
                            return false;
                        } else {
                            return oJ(oJ, oJ2);
                        }
                    }
                    return true;
                }
            } catch (Throwable th2) {
                th2.getMessage();
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ.ZYk r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L42
            java.io.File r1 = r4.oJ()
            if (r1 != 0) goto La
            goto L42
        La:
            java.util.List r5 = r5.ZYk()
            if (r5 == 0) goto L40
            int r1 = r5.size()
            if (r1 <= 0) goto L40
            java.util.Iterator r5 = r5.iterator()
        L1a:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r5.next()
            android.util.Pair r1 = (android.util.Pair) r1
            java.io.File r2 = new java.io.File
            java.io.File r3 = r4.oJ()
            java.lang.Object r1 = r1.first
            java.lang.String r1 = (java.lang.String) r1
            r2.<init>(r3, r1)
            boolean r1 = r2.exists()
            if (r1 == 0) goto L3f
            boolean r1 = r2.isFile()
            if (r1 != 0) goto L1a
        L3f:
            return r0
        L40:
            r5 = 1
            return r5
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.oJ.ZYk.tB.oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ$ZYk):boolean");
    }

    public void ZYk(List<oJ.C0170oJ> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (oJ.C0170oJ c0170oJ : list) {
            File file = new File(oJ(), com.bytedance.sdk.component.utils.Pfn.oJ(c0170oJ.oJ()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public List<oJ.C0170oJ> oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar2) {
        Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ = oJVar.oJ();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (oJ.size() == 0) {
            if (oJVar2 != null && oJVar2.oJ().size() != 0) {
                Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ2 = oJVar2.oJ();
                for (String str : oJ2.keySet()) {
                    com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar3 = oJ2.get(str);
                    if (oJVar3 != null) {
                        arrayList.addAll(oJVar3.ba());
                    }
                }
            }
        } else if (oJVar2 != null && oJVar2.oJ().size() != 0) {
            Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> oJ3 = oJVar2.oJ();
            for (String str2 : oJ.keySet()) {
                com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar4 = oJ.get(str2);
                com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar5 = oJ3.get(str2);
                if (oJVar5 == null && oJVar4 != null) {
                    arrayList2.addAll(oJVar4.ba());
                } else if (oJVar4 == null && oJVar5 != null) {
                    arrayList.addAll(oJVar5.ba());
                } else if (oJVar4 != null) {
                    for (oJ.C0170oJ c0170oJ : oJVar4.ba()) {
                        if (c0170oJ != null && !oJVar5.ba().contains(c0170oJ) && c0170oJ.ZYk() != null && c0170oJ.oJ() != null) {
                            arrayList2.add(c0170oJ);
                        }
                    }
                    for (oJ.C0170oJ c0170oJ2 : oJVar5.ba()) {
                        if (c0170oJ2 != null && !oJVar4.ba().contains(c0170oJ2)) {
                            arrayList.add(c0170oJ2);
                        }
                    }
                }
            }
        } else if (oJ.size() != 0) {
            for (String str3 : oJ.keySet()) {
                com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar6 = oJ.get(str3);
                if (oJVar6 != null) {
                    arrayList2.addAll(oJVar6.ba());
                }
            }
        }
        if (oJ(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public static void ZYk(File file, com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, String str) {
        if (oJVar == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (oJVar.ba() != null) {
            for (oJ.C0170oJ c0170oJ : oJVar.ba()) {
                try {
                    new File(file, com.bytedance.sdk.component.utils.Pfn.oJ(c0170oJ.oJ())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean oJ(java.util.List<com.bytedance.sdk.component.adexpress.oJ.tB.oJ.C0170oJ> r8, java.util.List<com.bytedance.sdk.component.adexpress.oJ.tB.oJ.C0170oJ> r9) {
        /*
            r7 = this;
            java.util.Iterator r8 = r8.iterator()
        L4:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L87
            java.lang.Object r0 = r8.next()
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ$oJ r0 = (com.bytedance.sdk.component.adexpress.oJ.tB.oJ.C0170oJ) r0
            java.lang.String r1 = r0.oJ()
            java.lang.String r2 = com.bytedance.sdk.component.utils.Pfn.oJ(r1)
            java.io.File r3 = new java.io.File
            java.io.File r4 = r7.oJ()
            r3.<init>(r4, r2)
            java.io.File r4 = new java.io.File
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            java.lang.String r6 = ".tmp"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            boolean r5 = r3.exists()
            if (r5 == 0) goto L40
            r3.delete()     // Catch: java.lang.Throwable -> L40
        L40:
            boolean r3 = r4.exists()
            if (r3 == 0) goto L49
            r4.delete()     // Catch: java.lang.Throwable -> L49
        L49:
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ r3 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ()
            com.bytedance.sdk.component.adexpress.oJ.oJ.tB r3 = r3.tB()
            com.bytedance.sdk.component.cFZ.ZYk.oJ r3 = r3.ba()
            r3.ZYk(r1)
            java.io.File r1 = r7.oJ()
            java.lang.String r1 = r1.getAbsolutePath()
            r3.oJ(r1, r2)
            com.bytedance.sdk.component.cFZ.ZYk r1 = r3.oJ()
            r9.add(r0)
            if (r1 == 0) goto L82
            boolean r0 = r1.ba()
            if (r0 == 0) goto L82
            java.io.File r0 = r1.Pfn()
            if (r0 == 0) goto L82
            java.io.File r0 = r1.Pfn()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L4
        L82:
            r7.tB(r9)
            r8 = 0
            return r8
        L87:
            r8 = 1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.oJ.ZYk.tB.oJ(java.util.List, java.util.List):boolean");
    }

    public boolean oJ(String str) {
        String oJ = com.bytedance.sdk.component.utils.Pfn.oJ(str);
        File absoluteFile = oJ().getAbsoluteFile();
        File file = new File(absoluteFile, oJ + ".zip");
        com.bytedance.sdk.component.cFZ.ZYk.oJ ba2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().ba();
        ba2.ZYk(str);
        ba2.oJ(file.getParent(), file.getName());
        com.bytedance.sdk.component.cFZ.ZYk oJ2 = ba2.oJ();
        if (oJ2.ba() && oJ2.Pfn() != null && oJ2.Pfn().exists()) {
            File Pfn = oJ2.Pfn();
            try {
                LpP.oJ(Pfn.getAbsolutePath(), file.getParent());
                if (Pfn.exists()) {
                    Pfn.delete();
                    return true;
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void oJ(int i10) {
        if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ex() != null) {
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ex().oJ(i10);
        }
    }

    public static void oJ(File file, com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, String str) {
        FileOutputStream fileOutputStream;
        if (oJVar == null) {
            return;
        }
        String kkU = oJVar.kkU();
        if (TextUtils.isEmpty(kkU)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + ".tmp");
        if (file3.exists()) {
            file3.delete();
        }
        try {
            fileOutputStream = new FileOutputStream(file3);
        } catch (Throwable unused) {
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(kkU.getBytes("utf-8"));
            if (file2.exists()) {
                file2.delete();
            }
            file3.renameTo(file2);
            try {
                fileOutputStream.close();
            } catch (IOException unused2) {
            }
        } catch (Throwable unused3) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                }
            }
        }
    }

    private static boolean oJ(Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> map, Map<String, com.bytedance.sdk.component.adexpress.oJ.tB.oJ> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar = map.get(str);
            if (oJVar == null) {
                return true;
            }
            com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar2 = map2.get(str);
            if (oJVar2 == null) {
                return false;
            }
            if (oJ(oJVar.tB(), oJVar2.tB())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean oJ(java.lang.String r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "\\."
            java.lang.String[] r7 = r7.split(r0)
            java.lang.String[] r6 = r6.split(r0)
            int r0 = r7.length
            int r1 = r6.length
            int r0 = java.lang.Math.min(r0, r1)
            r1 = 0
            r2 = r1
        L12:
            if (r2 >= r0) goto L42
            r3 = r7[r2]
            int r3 = r3.length()
            r4 = r6[r2]
            int r4 = r4.length()
            int r3 = r3 - r4
            r4 = 1
            if (r3 != 0) goto L3f
            r3 = r7[r2]
            r5 = r6[r2]
            int r3 = r3.compareTo(r5)
            if (r3 <= 0) goto L2f
            return r4
        L2f:
            if (r3 >= 0) goto L32
            return r1
        L32:
            int r3 = r0 + (-1)
            if (r2 != r3) goto L3c
            int r7 = r7.length
            int r6 = r6.length
            if (r7 <= r6) goto L3b
            return r4
        L3b:
            return r1
        L3c:
            int r2 = r2 + 1
            goto L12
        L3f:
            if (r3 <= 0) goto L42
            return r4
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.oJ.ZYk.tB.oJ(java.lang.String, java.lang.String):boolean");
    }

    public static boolean oJ(com.bytedance.sdk.component.adexpress.oJ.tB.oJ oJVar, String str) {
        if (oJVar != null) {
            try {
                if (TextUtils.isEmpty(oJVar.tB())) {
                    return true;
                }
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return oJ(oJVar.tB(), str);
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }
}
