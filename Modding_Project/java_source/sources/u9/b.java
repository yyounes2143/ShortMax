package u9;
/* compiled from: CodaBarWriter.java */
/* loaded from: classes5.dex */
public final class b extends l {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f67882a;

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f67883b = {'T', 'N', '*', 'E'};

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f67884c = {'/', ':', '+', '.'};

    /* renamed from: d  reason: collision with root package name */
    private static final char f67885d;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f67882a = cArr;
        f67885d = cArr[0];
    }

    @Override // u9.l
    public boolean[] c(String str) {
        int i10;
        if (str.length() < 2) {
            StringBuilder sb2 = new StringBuilder();
            char c10 = f67885d;
            sb2.append(c10);
            sb2.append(str);
            sb2.append(c10);
            str = sb2.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f67882a;
            boolean a10 = a.a(cArr, upperCase);
            boolean a11 = a.a(cArr, upperCase2);
            char[] cArr2 = f67883b;
            boolean a12 = a.a(cArr2, upperCase);
            boolean a13 = a.a(cArr2, upperCase2);
            if (a10) {
                if (!a11) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (a12) {
                if (!a13) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!a11 && !a13) {
                StringBuilder sb3 = new StringBuilder();
                char c11 = f67885d;
                sb3.append(c11);
                sb3.append(str);
                sb3.append(c11);
                str = sb3.toString();
            } else {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i11 = 20;
        for (int i12 = 1; i12 < str.length() - 1; i12++) {
            if (!Character.isDigit(str.charAt(i12)) && str.charAt(i12) != '-' && str.charAt(i12) != '$') {
                if (a.a(f67884c, str.charAt(i12))) {
                    i11 += 10;
                } else {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i12) + '\'');
                }
            } else {
                i11 += 9;
            }
        }
        boolean[] zArr = new boolean[i11 + (str.length() - 1)];
        int i13 = 0;
        for (int i14 = 0; i14 < str.length(); i14++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i14));
            if (i14 == 0 || i14 == str.length() - 1) {
                if (upperCase3 != '*') {
                    if (upperCase3 != 'E') {
                        if (upperCase3 != 'N') {
                            if (upperCase3 == 'T') {
                                upperCase3 = 'A';
                            }
                        } else {
                            upperCase3 = 'B';
                        }
                    } else {
                        upperCase3 = 'D';
                    }
                } else {
                    upperCase3 = 'C';
                }
            }
            int i15 = 0;
            while (true) {
                char[] cArr3 = a.f67879a;
                if (i15 < cArr3.length) {
                    if (upperCase3 == cArr3[i15]) {
                        i10 = a.f67880b[i15];
                        break;
                    }
                    i15++;
                } else {
                    i10 = 0;
                    break;
                }
            }
            int i16 = 0;
            int i17 = 0;
            boolean z10 = true;
            while (i16 < 7) {
                zArr[i13] = z10;
                i13++;
                if (((i10 >> (6 - i16)) & 1) != 0 && i17 != 1) {
                    i17++;
                } else {
                    z10 = !z10;
                    i16++;
                    i17 = 0;
                }
            }
            if (i14 < str.length() - 1) {
                zArr[i13] = false;
                i13++;
            }
        }
        return zArr;
    }
}
