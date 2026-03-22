package qa;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f65240a = "0123456789ABCDEF".toCharArray();

    private static byte[] a(char[] cArr) {
        if ((cArr.length & 1) == 0) {
            byte[] bArr = new byte[cArr.length >> 1];
            int i10 = 0;
            int i11 = 0;
            while (i10 < cArr.length) {
                int digit = Character.digit(cArr[i10], 16);
                if (digit != -1) {
                    int i12 = i10 + 1;
                    int digit2 = Character.digit(cArr[i12], 16);
                    if (digit2 != -1) {
                        i10 += 2;
                        bArr[i11] = (byte) (((digit << 4) | digit2) & 255);
                        i11++;
                    } else {
                        throw new IllegalArgumentException("Illegal hexadecimal character at index " + i12);
                    }
                } else {
                    throw new IllegalArgumentException("Illegal hexadecimal character at index " + i10);
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("Odd number of characters.");
    }

    public static byte[] b(String str) {
        return a(str.toCharArray());
    }

    public static String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            char[] cArr = f65240a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
