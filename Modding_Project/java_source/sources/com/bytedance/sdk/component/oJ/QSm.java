package com.bytedance.sdk.component.oJ;

import com.bytedance.sdk.component.oJ.Id;
import com.bytedance.sdk.component.oJ.dLZ;
import com.bytedance.sdk.component.oJ.oq;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class QSm {
    private dLZ.oJ Pfn;
    private final Set<String> ZYk;
    private final oq ex;
    private final Set<String> oJ;
    private final Id tB = si.oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QSm(oq oqVar, Set<String> set, Set<String> set2) {
        this.ex = oqVar;
        if (set != null && !set.isEmpty()) {
            this.oJ = new LinkedHashSet(set);
        } else {
            this.oJ = new LinkedHashSet();
        }
        if (set2 != null && !set2.isEmpty()) {
            this.ZYk = new LinkedHashSet(set2);
        } else {
            this.ZYk = new LinkedHashSet();
        }
    }

    final synchronized cY ZYk(String str, ZYk zYk) {
        return oJ(str, zYk, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c A[Catch: all -> 0x001d, TryCatch #0 {all -> 0x001d, blocks: (B:3:0x0001, B:8:0x000e, B:10:0x001a, B:14:0x0020, B:15:0x0026, B:17:0x002c, B:19:0x003c, B:21:0x004c, B:23:0x0050, B:25:0x0054, B:27:0x005a, B:31:0x0068, B:33:0x006c, B:34:0x0071), top: B:42:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.bytedance.sdk.component.oJ.cY oJ(boolean r8, java.lang.String r9, com.bytedance.sdk.component.oJ.ZYk r10) throws com.bytedance.sdk.component.oJ.oq.oJ {
        /*
            r7 = this;
            monitor-enter(r7)
            android.net.Uri r0 = android.net.Uri.parse(r9)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r1 = r0.getHost()     // Catch: java.lang.Throwable -> L1d
            r2 = 0
            if (r1 != 0) goto Le
            monitor-exit(r7)
            return r2
        Le:
            java.util.Set<java.lang.String> r3 = r7.ZYk     // Catch: java.lang.Throwable -> L1d
            java.lang.String r4 = r10.oJ()     // Catch: java.lang.Throwable -> L1d
            boolean r3 = r3.contains(r4)     // Catch: java.lang.Throwable -> L1d
            if (r3 == 0) goto L1f
            com.bytedance.sdk.component.oJ.cY r3 = com.bytedance.sdk.component.oJ.cY.PUBLIC     // Catch: java.lang.Throwable -> L1d
            goto L20
        L1d:
            r8 = move-exception
            goto L7b
        L1f:
            r3 = r2
        L20:
            java.util.Set<java.lang.String> r4 = r7.oJ     // Catch: java.lang.Throwable -> L1d
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L1d
        L26:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto L4e
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L1d
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L1d
            java.lang.String r6 = r0.getHost()     // Catch: java.lang.Throwable -> L1d
            boolean r6 = r6.equals(r5)     // Catch: java.lang.Throwable -> L1d
            if (r6 != 0) goto L4c
            java.lang.String r6 = "."
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r5 = r6.concat(r5)     // Catch: java.lang.Throwable -> L1d
            boolean r5 = r1.endsWith(r5)     // Catch: java.lang.Throwable -> L1d
            if (r5 == 0) goto L26
        L4c:
            com.bytedance.sdk.component.oJ.cY r3 = com.bytedance.sdk.component.oJ.cY.PRIVATE     // Catch: java.lang.Throwable -> L1d
        L4e:
            if (r3 != 0) goto L6a
            com.bytedance.sdk.component.oJ.dLZ$oJ r0 = r7.Pfn     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L6a
            boolean r0 = r0.oJ(r9)     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L6a
            com.bytedance.sdk.component.oJ.dLZ$oJ r0 = r7.Pfn     // Catch: java.lang.Throwable -> L1d
            java.lang.String r1 = r10.oJ()     // Catch: java.lang.Throwable -> L1d
            boolean r0 = r0.oJ(r9, r1)     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L68
            monitor-exit(r7)
            return r2
        L68:
            com.bytedance.sdk.component.oJ.cY r3 = com.bytedance.sdk.component.oJ.cY.PRIVATE     // Catch: java.lang.Throwable -> L1d
        L6a:
            if (r8 == 0) goto L71
            com.bytedance.sdk.component.oJ.cY r8 = r7.oJ(r9, r10)     // Catch: java.lang.Throwable -> L1d
            goto L75
        L71:
            com.bytedance.sdk.component.oJ.cY r8 = r7.ZYk(r9, r10)     // Catch: java.lang.Throwable -> L1d
        L75:
            if (r8 == 0) goto L79
            monitor-exit(r7)
            return r8
        L79:
            monitor-exit(r7)
            return r3
        L7b:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L1d
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.oJ.QSm.oJ(boolean, java.lang.String, com.bytedance.sdk.component.oJ.ZYk):com.bytedance.sdk.component.oJ.cY");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(Id.oJ oJVar) {
        if (this.tB != null) {
            throw null;
        }
    }

    final synchronized cY oJ(String str, ZYk zYk) throws oq.oJ {
        return oJ(str, zYk, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(dLZ.oJ oJVar) {
        this.Pfn = oJVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(Id.oJ oJVar) {
        if (this.tB != null) {
            throw null;
        }
    }

    private cY oJ(String str, ZYk zYk, boolean z10) {
        if (!z10 || this.ex == null) {
            return null;
        }
        throw null;
    }
}
