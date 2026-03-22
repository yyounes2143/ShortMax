package com.bytedance.adsdk.ZYk.ex;

import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class cFZ {
    private final Pfn oJ;

    public cFZ(Pfn pfn) {
        this.oJ = pfn;
    }

    private File ZYk(String str) throws FileNotFoundException {
        File file = new File(oJ(), oJ(str, tB.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(oJ(), oJ(str, tB.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<tB, InputStream> oJ(String str) {
        tB tBVar;
        try {
            File ZYk = ZYk(str);
            if (ZYk == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(ZYk);
            if (ZYk.getAbsolutePath().endsWith(".zip")) {
                tBVar = tB.ZIP;
            } else {
                tBVar = tB.JSON;
            }
            ZYk.getAbsolutePath();
            return new Pair<>(tBVar, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File oJ(String str, InputStream inputStream, tB tBVar) throws IOException {
        File file = new File(oJ(), oJ(str, tBVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return file;
                }
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(String str, tB tBVar) {
        File file = new File(oJ(), oJ(str, tBVar, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        file2.toString();
        if (renameTo) {
            return;
        }
        file.getAbsolutePath();
        file2.getAbsolutePath();
    }

    private File oJ() {
        File oJ = this.oJ.oJ();
        if (oJ.isFile()) {
            oJ.delete();
        }
        if (!oJ.exists()) {
            oJ.mkdirs();
        }
        return oJ;
    }

    private static String oJ(String str, tB tBVar, boolean z10) {
        StringBuilder sb2 = new StringBuilder("lottie_cache_");
        sb2.append(str.replaceAll("\\W+", ""));
        sb2.append(z10 ? tBVar.oJ() : tBVar.tB);
        return sb2.toString();
    }
}
