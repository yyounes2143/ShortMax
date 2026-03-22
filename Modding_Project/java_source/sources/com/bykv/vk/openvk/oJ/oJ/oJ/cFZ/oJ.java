package com.bykv.vk.openvk.oJ.oJ.oJ.cFZ;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* loaded from: classes3.dex */
public class oJ {
    public static String oJ(File file) {
        return oJ(file, null);
    }

    public static String oJ(File file, String str) {
        if (file.isFile()) {
            byte[] bArr = new byte[1024];
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 1024);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                if (!TextUtils.isEmpty(str)) {
                    messageDigest.update(str.getBytes());
                }
                bufferedInputStream.close();
                return oJ(messageDigest.digest());
            } catch (Exception unused) {
                return "";
            }
        }
        return "";
    }

    private static String oJ(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            char[] cArr2 = new char[bArr.length * 2];
            int i10 = 0;
            for (byte b10 : bArr) {
                int i11 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 += 2;
                cArr2[i11] = cArr[b10 & 15];
            }
            return new String(cArr2);
        }
        return "";
    }
}
