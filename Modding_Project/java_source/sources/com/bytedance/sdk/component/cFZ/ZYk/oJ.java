package com.bytedance.sdk.component.cFZ.ZYk;

import android.text.TextUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.inmobi.unification.sdk.InitializationStatus;
import com.mbridge.msdk.foundation.download.Command;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ extends tB {
    public File ZYk;
    private volatile boolean kkU;
    public File oJ;

    public oJ(dLZ dlz) {
        super(dlz);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean Pfn(Map<String, String> map) {
        if (TextUtils.equals(map.get("Accept-Ranges"), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get("Content-Range");
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long ba(Map<String, String> map) {
        String str;
        if (map.containsKey("content-length")) {
            str = map.get("content-length");
        } else if (map.containsKey("Content-Length")) {
            str = map.get("Content-Length");
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str) || str == null) {
            return 0L;
        }
        try {
            return Long.valueOf(str).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean cFZ(Map<String, String> map) {
        return TextUtils.equals(map.get("Content-Encoding"), "gzip");
    }

    @Override // com.bytedance.sdk.component.cFZ.ZYk.tB
    public void ZYk() {
        this.kkU = true;
        super.ZYk();
    }

    public void oJ(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.oJ = new File(str, str2);
        this.ZYk = new File(str, str2 + ".temp");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn() {
        try {
            this.oJ.delete();
        } catch (Throwable unused) {
        }
        try {
            this.ZYk.delete();
        } catch (Throwable unused2) {
        }
    }

    public void oJ(final com.bytedance.sdk.component.cFZ.oJ.oJ oJVar) {
        File file = this.oJ;
        if (file == null || this.ZYk == null) {
            if (oJVar != null) {
                oJVar.oJ(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.oJ.length() != 0 && oJVar != null) {
            long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.cFZ.ZYk zYk = new com.bytedance.sdk.component.cFZ.ZYk(true, 200, InitializationStatus.SUCCESS, null, null, currentTimeMillis, currentTimeMillis);
            zYk.oJ(this.oJ);
            oJVar.oJ(this, zYk);
            return;
        }
        long length = this.ZYk.length();
        final long j10 = length >= 0 ? length : 0L;
        BTZ.oJ oJVar2 = new BTZ.oJ();
        oJVar2.oJ((Object) tB());
        ZYk(Command.HTTP_HEADER_RANGE, "bytes=" + j10 + "-");
        if (TextUtils.isEmpty(this.f12775so)) {
            oJVar.oJ(this, new IOException("Url is Empty"));
            return;
        }
        try {
            oJVar2.ZYk(this.f12775so);
            if (!TextUtils.isEmpty(this.Pfn)) {
                oJVar2.oJ(this.Pfn);
            }
            int i10 = this.f12774ba;
            if (i10 > 0) {
                oJVar2.oJ(i10);
            }
            oJ(oJVar2);
            com.bytedance.sdk.component.ZYk.oJ.ZYk oJ = this.tB.oJ(oJVar2.oJ().ZYk());
            if (oJ == null) {
                oJVar.oJ(this, new IOException("new call error"));
            } else {
                oJ.oJ(new com.bytedance.sdk.component.ZYk.oJ.tB() { // from class: com.bytedance.sdk.component.cFZ.ZYk.oJ.1
                    @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                    public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk2, IOException iOException) {
                        com.bytedance.sdk.component.cFZ.oJ.oJ oJVar3 = oJVar;
                        if (oJVar3 != null) {
                            oJVar3.oJ(oJ.this, iOException);
                        }
                        oJ.this.Pfn();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:142:0x018d A[SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:143:0x0195 A[SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:56:0x015b  */
                    /* JADX WARN: Removed duplicated region for block: B:67:0x0189 A[LOOP:1: B:54:0x0153->B:67:0x0189, LOOP_END] */
                    @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk r19, com.bytedance.sdk.component.ZYk.oJ.WcQ r20) throws java.io.IOException {
                        /*
                            Method dump skipped, instructions count: 597
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cFZ.ZYk.oJ.AnonymousClass1.oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk, com.bytedance.sdk.component.ZYk.oJ.WcQ):void");
                    }
                });
            }
        } catch (IllegalArgumentException unused) {
            oJVar.oJ(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x01d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a2 A[Catch: all -> 0x0232, TryCatch #10 {all -> 0x0232, blocks: (B:66:0x0183, B:68:0x0189, B:70:0x018d, B:71:0x0193, B:72:0x019a, B:74:0x01a2, B:76:0x01b2, B:81:0x01c5, B:84:0x01ce, B:85:0x01d5, B:80:0x01bb, B:88:0x01db, B:96:0x01f3, B:98:0x01fb, B:100:0x0205, B:102:0x020f, B:110:0x0225, B:93:0x01e9), top: B:160:0x0183 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01c9 A[LOOP:1: B:72:0x019a->B:83:0x01c9, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.component.cFZ.ZYk oJ() {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cFZ.ZYk.oJ.oJ():com.bytedance.sdk.component.cFZ.ZYk");
    }
}
