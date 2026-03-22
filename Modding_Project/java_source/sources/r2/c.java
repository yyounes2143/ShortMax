package r2;

import java.io.IOException;
import java.io.InputStream;
import k2.h;
/* compiled from: StreamUtil.java */
/* loaded from: classes3.dex */
public class c {
    public static long a(InputStream inputStream, long j10) throws IOException {
        boolean z10;
        h.g(inputStream);
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        long j11 = j10;
        while (j11 > 0) {
            long skip = inputStream.skip(j11);
            if (skip <= 0) {
                if (inputStream.read() != -1) {
                    skip = 1;
                } else {
                    return j10 - j11;
                }
            }
            j11 -= skip;
        }
        return j10;
    }
}
