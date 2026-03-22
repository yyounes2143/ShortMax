package sm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.charset.Charset;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f66398a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sm.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0922b {

        /* renamed from: a  reason: collision with root package name */
        long f66399a;

        /* renamed from: b  reason: collision with root package name */
        byte[] f66400b;

        /* renamed from: c  reason: collision with root package name */
        int f66401c;

        /* renamed from: d  reason: collision with root package name */
        int f66402d;

        /* renamed from: e  reason: collision with root package name */
        boolean f66403e;

        /* renamed from: f  reason: collision with root package name */
        int f66404f;

        private C0922b() {
        }
    }

    private int a(int i10, int i11) {
        int i12 = i10 - 2147483648;
        int i13 = i11 - 2147483648;
        if (i12 < i13) {
            return -1;
        }
        if (i12 == i13) {
            return 0;
        }
        return 1;
    }

    private int b(@NonNull C0922b c0922b) {
        if (c0922b.f66400b != null) {
            return c0922b.f66401c - c0922b.f66402d;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v20 */
    private void c(byte[] bArr, int i10, int i11, @NonNull C0922b c0922b) {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        long j17;
        byte b10;
        long j18;
        if (c0922b.f66403e) {
            return;
        }
        ?? r32 = 1;
        if (i11 < 0) {
            c0922b.f66403e = true;
        }
        int i12 = 0;
        int i13 = i10;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            int i14 = i13 + 1;
            byte b11 = bArr[i13];
            if (b11 == 61) {
                c0922b.f66403e = r32;
                break;
            }
            byte[] e10 = e(7, c0922b);
            if (b11 >= 0) {
                byte[] bArr2 = f66398a;
                if (b11 < bArr2.length && (b10 = bArr2[b11]) >= 0) {
                    int i15 = (c0922b.f66404f + r32) % 8;
                    c0922b.f66404f = i15;
                    c0922b.f66399a = (c0922b.f66399a << 5) + b10;
                    if (i15 == 0) {
                        int i16 = c0922b.f66401c;
                        int i17 = i16 + 1;
                        c0922b.f66401c = i17;
                        e10[i16] = (byte) ((j18 >> 32) & 255);
                        int i18 = i16 + 2;
                        c0922b.f66401c = i18;
                        e10[i17] = (byte) ((j18 >> 24) & 255);
                        int i19 = i16 + 3;
                        c0922b.f66401c = i19;
                        e10[i18] = (byte) ((j18 >> 16) & 255);
                        int i20 = i16 + 4;
                        c0922b.f66401c = i20;
                        e10[i19] = (byte) ((j18 >> 8) & 255);
                        c0922b.f66401c = i16 + 5;
                        e10[i20] = (byte) (j18 & 255);
                    }
                }
            }
            i12++;
            i13 = i14;
            r32 = 1;
        }
        if (c0922b.f66403e && c0922b.f66404f > 0) {
            byte[] e11 = e(7, c0922b);
            switch (c0922b.f66404f) {
                case 1:
                case 2:
                    int i21 = c0922b.f66401c;
                    c0922b.f66401c = i21 + 1;
                    e11[i21] = (byte) ((c0922b.f66399a >> 2) & 255);
                    return;
                case 3:
                    int i22 = c0922b.f66401c;
                    c0922b.f66401c = i22 + 1;
                    e11[i22] = (byte) ((c0922b.f66399a >> 7) & 255);
                    return;
                case 4:
                    c0922b.f66399a = c0922b.f66399a >> 4;
                    int i23 = c0922b.f66401c;
                    int i24 = i23 + 1;
                    c0922b.f66401c = i24;
                    e11[i23] = (byte) ((j10 >> 12) & 255);
                    c0922b.f66401c = i23 + 2;
                    e11[i24] = (byte) (j11 & 255);
                    return;
                case 5:
                    c0922b.f66399a = c0922b.f66399a >> 1;
                    int i25 = c0922b.f66401c;
                    int i26 = i25 + 1;
                    c0922b.f66401c = i26;
                    e11[i25] = (byte) ((j12 >> 17) & 255);
                    int i27 = i25 + 2;
                    c0922b.f66401c = i27;
                    e11[i26] = (byte) ((j12 >> 9) & 255);
                    c0922b.f66401c = i25 + 3;
                    e11[i27] = (byte) (j13 & 255);
                    return;
                case 6:
                    c0922b.f66399a = c0922b.f66399a >> 6;
                    int i28 = c0922b.f66401c;
                    int i29 = i28 + 1;
                    c0922b.f66401c = i29;
                    e11[i28] = (byte) ((j14 >> 22) & 255);
                    int i30 = i28 + 2;
                    c0922b.f66401c = i30;
                    e11[i29] = (byte) ((j14 >> 14) & 255);
                    c0922b.f66401c = i28 + 3;
                    e11[i30] = (byte) (j15 & 255);
                    return;
                case 7:
                    c0922b.f66399a = c0922b.f66399a >> 3;
                    int i31 = c0922b.f66401c;
                    int i32 = i31 + 1;
                    c0922b.f66401c = i32;
                    e11[i31] = (byte) ((j16 >> 27) & 255);
                    int i33 = i31 + 2;
                    c0922b.f66401c = i33;
                    e11[i32] = (byte) ((j16 >> 19) & 255);
                    int i34 = i31 + 3;
                    c0922b.f66401c = i34;
                    e11[i33] = (byte) ((j16 >> 11) & 255);
                    c0922b.f66401c = i31 + 4;
                    e11[i34] = (byte) (j17 & 255);
                    return;
                default:
                    throw new IllegalStateException("Impossible modulus " + c0922b.f66404f);
            }
        }
    }

    private void d(byte[] bArr, int i10, @NonNull C0922b c0922b) {
        if (c0922b.f66400b != null) {
            int min = Math.min(b(c0922b), i10);
            System.arraycopy(c0922b.f66400b, c0922b.f66402d, bArr, 0, min);
            int i11 = c0922b.f66402d + min;
            c0922b.f66402d = i11;
            if (i11 >= c0922b.f66401c) {
                c0922b.f66400b = null;
            }
        }
    }

    private byte[] e(int i10, @NonNull C0922b c0922b) {
        byte[] bArr = c0922b.f66400b;
        if (bArr == null) {
            c0922b.f66400b = new byte[Math.max(i10, 8192)];
            c0922b.f66401c = 0;
            c0922b.f66402d = 0;
        } else {
            int i11 = c0922b.f66401c + i10;
            if (i11 - bArr.length > 0) {
                return f(c0922b, i11);
            }
        }
        return c0922b.f66400b;
    }

    private byte[] f(@NonNull C0922b c0922b, int i10) {
        int length = c0922b.f66400b.length * 2;
        if (a(length, i10) < 0) {
            length = i10;
        }
        if (a(length, 2147483639) > 0) {
            length = Math.max(i10, 2147483639);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = c0922b.f66400b;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        c0922b.f66400b = bArr;
        return bArr;
    }

    @NonNull
    public String g(@NonNull String str) {
        return h(str.getBytes(Charset.forName("UTF-8")));
    }

    @NonNull
    public String h(@Nullable byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            C0922b c0922b = new C0922b();
            c(bArr, 0, bArr.length, c0922b);
            c(bArr, 0, -1, c0922b);
            int i10 = c0922b.f66401c;
            byte[] bArr2 = new byte[i10];
            d(bArr2, i10, c0922b);
            return new String(bArr2);
        }
        return new String(bArr);
    }
}
