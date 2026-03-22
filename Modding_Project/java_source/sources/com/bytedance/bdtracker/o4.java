package com.bytedance.bdtracker;

import com.bytedance.applog.log.LoggerImpl;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.util.Collections;
/* loaded from: classes3.dex */
public class o4 {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f12299a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                    messageDigest.update(bArr);
                    return b(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            LoggerImpl.global().warn(Collections.singletonList("DigestUtils"), "bytes is null", new Object[0]);
            return null;
        }
        int length = bArr.length;
        if (length <= bArr.length) {
            int i10 = length * 2;
            char[] cArr = new char[i10];
            int i11 = 0;
            for (byte b10 : bArr) {
                int i12 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                int i13 = i11 + 1;
                char[] cArr2 = f12299a;
                cArr[i11] = cArr2[i12 >> 4];
                i11 += 2;
                cArr[i13] = cArr2[b10 & 15];
            }
            return new String(cArr, 0, i10);
        }
        throw new IndexOutOfBoundsException();
    }
}
