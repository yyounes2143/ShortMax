package com.bykv.vk.openvk.oJ.oJ.ZYk.ex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes3.dex */
public class ZYk {
    public static File ZYk(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }

    public static long oJ(String str, String str2) {
        File tB = tB(str, str2);
        if (tB.exists()) {
            return tB.length();
        }
        File ZYk = ZYk(str, str2);
        if (ZYk.exists()) {
            return ZYk.length();
        }
        return 0L;
    }

    public static File tB(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public static void oJ(RandomAccessFile randomAccessFile, byte[] bArr, int i10, int i11, String str) throws IOException {
        try {
            randomAccessFile.seek(i10);
            randomAccessFile.write(bArr, 0, i11);
        } catch (Throwable unused) {
        }
    }
}
