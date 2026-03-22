package ob;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f63167a;

    /* renamed from: b  reason: collision with root package name */
    private final int f63168b;

    /* renamed from: c  reason: collision with root package name */
    private int f63169c;

    /* renamed from: d  reason: collision with root package name */
    private int f63170d;

    /* renamed from: e  reason: collision with root package name */
    private int f63171e;

    /* renamed from: f  reason: collision with root package name */
    private int f63172f;

    /* renamed from: g  reason: collision with root package name */
    private char[] f63173g;

    public b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f63167a = name;
        this.f63168b = name.length();
    }

    private int a(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 < this.f63168b) {
            char[] cArr = this.f63173g;
            char c10 = cArr[i10];
            if (c10 >= '0' && c10 <= '9') {
                i11 = c10 - '0';
            } else if (c10 >= 'a' && c10 <= 'f') {
                i11 = c10 - 'W';
            } else if (c10 >= 'A' && c10 <= 'F') {
                i11 = c10 - '7';
            } else {
                throw new IllegalStateException("Malformed DN: " + this.f63167a);
            }
            char c11 = cArr[i13];
            if (c11 >= '0' && c11 <= '9') {
                i12 = c11 - '0';
            } else if (c11 >= 'a' && c11 <= 'f') {
                i12 = c11 - 'W';
            } else if (c11 >= 'A' && c11 <= 'F') {
                i12 = c11 - '7';
            } else {
                throw new IllegalStateException("Malformed DN: " + this.f63167a);
            }
            return (i11 << 4) + i12;
        }
        throw new IllegalStateException("Malformed DN: " + this.f63167a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        return new java.lang.String(r1, r2, r8.f63172f - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b() {
        /*
            r8 = this;
            int r0 = r8.f63169c
            r8.f63170d = r0
            r8.f63171e = r0
        L6:
            int r0 = r8.f63169c
            int r1 = r8.f63168b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f63173g
            int r2 = r8.f63170d
            int r3 = r8.f63171e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.f63173g
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5c
            if (r2 == r5) goto L51
            r5 = 92
            if (r2 == r5) goto L3e
            if (r2 == r4) goto L51
            if (r2 == r3) goto L51
            int r3 = r8.f63171e
            int r4 = r3 + 1
            r8.f63171e = r4
            r1[r3] = r2
            int r0 = r0 + 1
            r8.f63169c = r0
            goto L6
        L3e:
            int r0 = r8.f63171e
            int r2 = r0 + 1
            r8.f63171e = r2
            char r2 = r8.c()
            r1[r0] = r2
            int r0 = r8.f63169c
            int r0 = r0 + 1
            r8.f63169c = r0
            goto L6
        L51:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f63170d
            int r3 = r8.f63171e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5c:
            int r2 = r8.f63171e
            r8.f63172f = r2
            int r0 = r0 + 1
            r8.f63169c = r0
            int r0 = r2 + 1
            r8.f63171e = r0
            r1[r2] = r6
        L6a:
            int r0 = r8.f63169c
            int r1 = r8.f63168b
            if (r0 >= r1) goto L83
            char[] r2 = r8.f63173g
            char r7 = r2[r0]
            if (r7 != r6) goto L83
            int r1 = r8.f63171e
            int r7 = r1 + 1
            r8.f63171e = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.f63169c = r0
            goto L6a
        L83:
            if (r0 == r1) goto L8f
            char[] r1 = r8.f63173g
            char r0 = r1[r0]
            if (r0 == r3) goto L8f
            if (r0 == r4) goto L8f
            if (r0 != r5) goto L6
        L8f:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f63173g
            int r2 = r8.f63170d
            int r3 = r8.f63172f
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.b.b():java.lang.String");
    }

    private char c() {
        int i10 = this.f63169c + 1;
        this.f63169c = i10;
        if (i10 != this.f63168b) {
            char c10 = this.f63173g[i10];
            if (c10 == ' ' || c10 == '%' || c10 == '\\' || c10 == '_' || c10 == '\"' || c10 == '#') {
                return c10;
            }
            switch (c10) {
                case '*':
                case '+':
                case ',':
                    return c10;
                default:
                    switch (c10) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            return c10;
                        default:
                            return e();
                    }
            }
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
    }

    private char e() {
        int i10;
        int i11;
        int a10 = a(this.f63169c);
        this.f63169c++;
        if (a10 < 128) {
            return (char) a10;
        }
        if (a10 < 192 || a10 > 247) {
            return '?';
        }
        if (a10 <= 223) {
            i10 = a10 & 31;
            i11 = 1;
        } else if (a10 <= 239) {
            i10 = a10 & 15;
            i11 = 2;
        } else {
            i10 = a10 & 7;
            i11 = 3;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.f63169c;
            int i14 = i13 + 1;
            this.f63169c = i14;
            if (i14 == this.f63168b || this.f63173g[i14] != '\\') {
                return '?';
            }
            int i15 = i13 + 2;
            this.f63169c = i15;
            int a11 = a(i15);
            this.f63169c++;
            if ((a11 & 192) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (a11 & 63);
        }
        return (char) i10;
    }

    private String f() {
        int i10;
        char[] cArr;
        char c10;
        int i11 = this.f63169c;
        if (i11 + 4 < this.f63168b) {
            this.f63170d = i11;
            this.f63169c = i11 + 1;
            while (true) {
                i10 = this.f63169c;
                if (i10 == this.f63168b || (c10 = (cArr = this.f63173g)[i10]) == '+' || c10 == ',' || c10 == ';') {
                    break;
                } else if (c10 == ' ') {
                    this.f63171e = i10;
                    this.f63169c = i10 + 1;
                    while (true) {
                        int i12 = this.f63169c;
                        if (i12 >= this.f63168b || this.f63173g[i12] != ' ') {
                            break;
                        }
                        this.f63169c = i12 + 1;
                    }
                } else {
                    if (c10 >= 'A' && c10 <= 'F') {
                        cArr[i10] = (char) (c10 + ' ');
                    }
                    this.f63169c = i10 + 1;
                }
            }
            this.f63171e = i10;
            int i13 = this.f63171e;
            int i14 = this.f63170d;
            int i15 = i13 - i14;
            if (i15 >= 5 && (i15 & 1) != 0) {
                int i16 = i15 / 2;
                byte[] bArr = new byte[i16];
                int i17 = i14 + 1;
                for (int i18 = 0; i18 < i16; i18++) {
                    bArr[i18] = (byte) a(i17);
                    i17 += 2;
                }
                return new String(this.f63173g, this.f63170d, i15);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
    }

    private String g() {
        int i10;
        int i11;
        int i12;
        int i13;
        char c10;
        char c11;
        char c12;
        int i14;
        int i15;
        char c13;
        char c14;
        while (true) {
            i10 = this.f63169c;
            i11 = this.f63168b;
            if (i10 >= i11 || this.f63173g[i10] != ' ') {
                break;
            }
            this.f63169c = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.f63170d = i10;
        this.f63169c = i10 + 1;
        while (true) {
            i12 = this.f63169c;
            i13 = this.f63168b;
            if (i12 >= i13 || (c14 = this.f63173g[i12]) == '=' || c14 == ' ') {
                break;
            }
            this.f63169c = i12 + 1;
        }
        if (i12 < i13) {
            this.f63171e = i12;
            if (this.f63173g[i12] == ' ') {
                while (true) {
                    i14 = this.f63169c;
                    i15 = this.f63168b;
                    if (i14 >= i15 || (c13 = this.f63173g[i14]) == '=' || c13 != ' ') {
                        break;
                    }
                    this.f63169c = i14 + 1;
                }
                if (this.f63173g[i14] != '=' || i14 == i15) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
                }
            }
            this.f63169c++;
            while (true) {
                int i16 = this.f63169c;
                if (i16 >= this.f63168b || this.f63173g[i16] != ' ') {
                    break;
                }
                this.f63169c = i16 + 1;
            }
            int i17 = this.f63171e;
            int i18 = this.f63170d;
            if (i17 - i18 > 4) {
                char[] cArr = this.f63173g;
                if (cArr[i18 + 3] == '.' && (((c10 = cArr[i18]) == 'O' || c10 == 'o') && (((c11 = cArr[i18 + 1]) == 'I' || c11 == 'i') && ((c12 = cArr[i18 + 2]) == 'D' || c12 == 'd')))) {
                    this.f63170d = i18 + 4;
                }
            }
            char[] cArr2 = this.f63173g;
            int i19 = this.f63170d;
            return new String(cArr2, i19, i17 - i19);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
    }

    private String h() {
        int i10 = this.f63169c + 1;
        this.f63169c = i10;
        this.f63170d = i10;
        this.f63171e = i10;
        while (true) {
            int i11 = this.f63169c;
            if (i11 != this.f63168b) {
                char[] cArr = this.f63173g;
                char c10 = cArr[i11];
                if (c10 == '\"') {
                    this.f63169c = i11 + 1;
                    while (true) {
                        int i12 = this.f63169c;
                        if (i12 >= this.f63168b || this.f63173g[i12] != ' ') {
                            break;
                        }
                        this.f63169c = i12 + 1;
                    }
                    char[] cArr2 = this.f63173g;
                    int i13 = this.f63170d;
                    return new String(cArr2, i13, this.f63171e - i13);
                }
                if (c10 == '\\') {
                    cArr[this.f63171e] = c();
                } else {
                    cArr[this.f63171e] = c10;
                }
                this.f63169c++;
                this.f63171e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f63167a);
            }
        }
    }

    public List<String> d(String str) {
        String h10;
        this.f63169c = 0;
        this.f63170d = 0;
        this.f63171e = 0;
        this.f63172f = 0;
        this.f63173g = this.f63167a.toCharArray();
        List<String> emptyList = Collections.emptyList();
        String g10 = g();
        if (g10 == null) {
            return emptyList;
        }
        do {
            int i10 = this.f63169c;
            if (i10 < this.f63168b) {
                char c10 = this.f63173g[i10];
                if (c10 != '\"') {
                    if (c10 != '#') {
                        if (c10 != '+' && c10 != ',' && c10 != ';') {
                            h10 = b();
                        } else {
                            h10 = "";
                        }
                    } else {
                        h10 = f();
                    }
                } else {
                    h10 = h();
                }
                if (str.equalsIgnoreCase(g10)) {
                    if (emptyList.isEmpty()) {
                        emptyList = new ArrayList<>();
                    }
                    emptyList.add(h10);
                }
                int i11 = this.f63169c;
                if (i11 < this.f63168b) {
                    char c11 = this.f63173g[i11];
                    if (c11 != ',' && c11 != ';' && c11 != '+') {
                        throw new IllegalStateException("Malformed DN: " + this.f63167a);
                    }
                    this.f63169c = i11 + 1;
                    g10 = g();
                }
            }
            return emptyList;
        } while (g10 != null);
        throw new IllegalStateException("Malformed DN: " + this.f63167a);
    }
}
