package b7;

import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.List;
/* compiled from: CodecSpecificDataUtil.java */
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2437a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f2438b = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    public static String a(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static List<byte[]> b(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        char c10;
        String str = f2438b[i10];
        Integer valueOf = Integer.valueOf(i11);
        Integer valueOf2 = Integer.valueOf(i12);
        if (z10) {
            c10 = 'H';
        } else {
            c10 = 'L';
        }
        StringBuilder sb2 = new StringBuilder(s0.z("hvc1.%s%d.%X.%c%d", str, valueOf, valueOf2, Character.valueOf(c10), Integer.valueOf(i13)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static byte[] d(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = f2437a;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, bArr2.length, i11);
        return bArr3;
    }

    public static Pair<Integer, Integer> e(byte[] bArr) {
        g0 g0Var = new g0(bArr);
        g0Var.P(9);
        int D = g0Var.D();
        g0Var.P(20);
        return Pair.create(Integer.valueOf(g0Var.H()), Integer.valueOf(D));
    }

    public static boolean f(List<byte[]> list) {
        if (list.size() != 1 || list.get(0).length != 1 || list.get(0)[0] != 1) {
            return false;
        }
        return true;
    }
}
