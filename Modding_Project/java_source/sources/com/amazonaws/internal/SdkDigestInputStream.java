package com.amazonaws.internal;

import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
/* loaded from: classes2.dex */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {
    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean d() {
        if (((DigestInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((DigestInputStream) this).in).d();
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return j10;
        }
        int min = (int) Math.min(2048L, j10);
        byte[] bArr = new byte[min];
        long j11 = j10;
        while (j11 > 0) {
            int read = read(bArr, 0, (int) Math.min(j11, min));
            if (read == -1) {
                if (j11 == j10) {
                    return -1L;
                }
                return j10 - j11;
            }
            j11 -= read;
        }
        return j10;
    }
}
