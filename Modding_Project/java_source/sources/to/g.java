package to;

import ao.q;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: VarintReader.java */
/* loaded from: classes8.dex */
final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final long[] f67597d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67598a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private int f67599b;

    /* renamed from: c  reason: collision with root package name */
    private int f67600c;

    public static long a(byte[] bArr, int i10, boolean z10) {
        long j10 = bArr[0] & 255;
        if (z10) {
            j10 &= ~f67597d[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & 255);
        }
        return j10;
    }

    public static int c(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = f67597d;
            if (i11 < jArr.length) {
                if ((jArr[i11] & i10) != 0) {
                    return i11 + 1;
                }
                i11++;
            } else {
                return -1;
            }
        }
    }

    public int b() {
        return this.f67600c;
    }

    public long d(q qVar, boolean z10, boolean z11, int i10) throws IOException {
        if (this.f67599b == 0) {
            if (!qVar.readFully(this.f67598a, 0, 1, z10)) {
                return -1L;
            }
            int c10 = c(this.f67598a[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f67600c = c10;
            if (c10 != -1) {
                this.f67599b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i11 = this.f67600c;
        if (i11 > i10) {
            this.f67599b = 0;
            return -2L;
        }
        if (i11 != 1) {
            qVar.readFully(this.f67598a, 1, i11 - 1);
        }
        this.f67599b = 0;
        return a(this.f67598a, this.f67600c, z11);
    }

    public void e() {
        this.f67599b = 0;
        this.f67600c = 0;
    }
}
