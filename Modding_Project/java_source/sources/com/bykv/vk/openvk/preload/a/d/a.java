package com.bykv.vk.openvk.preload.a.d;

import com.bykv.vk.openvk.preload.a.b.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
/* compiled from: JsonReader.java */
/* loaded from: classes3.dex */
public class a implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private final Reader f11199b;

    /* renamed from: i  reason: collision with root package name */
    private long f11206i;

    /* renamed from: j  reason: collision with root package name */
    private int f11207j;

    /* renamed from: k  reason: collision with root package name */
    private String f11208k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f11209l;

    /* renamed from: n  reason: collision with root package name */
    private String[] f11211n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f11212o;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11200c = false;

    /* renamed from: d  reason: collision with root package name */
    private final char[] f11201d = new char[1024];

    /* renamed from: e  reason: collision with root package name */
    private int f11202e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f11203f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f11204g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f11205h = 0;

    /* renamed from: a  reason: collision with root package name */
    int f11198a = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f11210m = 1;

    static {
        e.f11155a = new e() { // from class: com.bykv.vk.openvk.preload.a.d.a.1
            @Override // com.bykv.vk.openvk.preload.a.b.e
            public final void a(a aVar) throws IOException {
                if (!(aVar instanceof com.bykv.vk.openvk.preload.a.b.a.e)) {
                    int i10 = aVar.f11198a;
                    if (i10 == 0) {
                        i10 = aVar.q();
                    }
                    if (i10 == 13) {
                        aVar.f11198a = 9;
                        return;
                    } else if (i10 == 12) {
                        aVar.f11198a = 8;
                        return;
                    } else if (i10 == 14) {
                        aVar.f11198a = 10;
                        return;
                    } else {
                        throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.r());
                    }
                }
                throw null;
            }
        };
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f11209l = iArr;
        iArr[0] = 6;
        this.f11211n = new String[32];
        this.f11212o = new int[32];
        if (reader != null) {
            this.f11199b = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    private int s() throws IOException {
        String str;
        String str2;
        int i10;
        char c10 = this.f11201d[this.f11202e];
        if (c10 != 't' && c10 != 'T') {
            if (c10 != 'f' && c10 != 'F') {
                if (c10 != 'n' && c10 != 'N') {
                    return 0;
                }
                str = "null";
                str2 = "NULL";
                i10 = 7;
            } else {
                str = "false";
                str2 = "FALSE";
                i10 = 6;
            }
        } else {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f11202e + i11 >= this.f11203f && !b(i11 + 1)) {
                return 0;
            }
            char c11 = this.f11201d[this.f11202e + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f11202e + length < this.f11203f || b(length + 1)) && a(this.f11201d[this.f11202e + length])) {
            return 0;
        }
        this.f11202e += length;
        this.f11198a = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x008f, code lost:
        if (a(r14) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0093, code lost:
        if (r9 != 2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0095, code lost:
        if (r10 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009b, code lost:
        if (r11 != Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009d, code lost:
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a3, code lost:
        if (r11 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a5, code lost:
        if (r13 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a7, code lost:
        if (r13 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00aa, code lost:
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ab, code lost:
        r18.f11206i = r11;
        r18.f11202e += r8;
        r18.f11198a = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b6, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b7, code lost:
        if (r9 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ba, code lost:
        if (r9 == 4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00bd, code lost:
        if (r9 != 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00c0, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c2, code lost:
        r18.f11207j = r8;
        r18.f11198a = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c8, code lost:
        return 16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.a.t():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        v();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String u() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f11202e
            int r4 = r3 + r2
            int r5 = r6.f11203f
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f11201d
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.v()
            goto L5c
        L4e:
            char[] r3 = r6.f11201d
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.b(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r1 = r2
            goto L7e
        L5e:
            if (r0 != 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L6b:
            char[] r3 = r6.f11201d
            int r4 = r6.f11202e
            r0.append(r3, r4, r2)
            int r3 = r6.f11202e
            int r3 = r3 + r2
            r6.f11202e = r3
            r2 = 1
            boolean r2 = r6.b(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f11201d
            int r3 = r6.f11202e
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.f11201d
            int r3 = r6.f11202e
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.f11202e
            int r2 = r2 + r1
            r6.f11202e = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.d.a.u():java.lang.String");
    }

    private void v() throws IOException {
        if (this.f11200c) {
            return;
        }
        throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    private void w() throws IOException {
        char c10;
        do {
            if (this.f11202e < this.f11203f || b(1)) {
                char[] cArr = this.f11201d;
                int i10 = this.f11202e;
                int i11 = i10 + 1;
                this.f11202e = i11;
                c10 = cArr[i10];
                if (c10 == '\n') {
                    this.f11204g++;
                    this.f11205h = i11;
                    return;
                }
            } else {
                return;
            }
        } while (c10 != '\r');
    }

    private char x() throws IOException {
        int i10;
        if (this.f11202e == this.f11203f && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.f11201d;
        int i11 = this.f11202e;
        int i12 = i11 + 1;
        this.f11202e = i12;
        char c10 = cArr[i11];
        if (c10 != '\n') {
            if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
                if (c10 != 'b') {
                    if (c10 != 'f') {
                        if (c10 == 'n') {
                            return '\n';
                        }
                        if (c10 != 'r') {
                            if (c10 != 't') {
                                if (c10 == 'u') {
                                    if (i11 + 5 > this.f11203f && !b(4)) {
                                        throw b("Unterminated escape sequence");
                                    }
                                    int i13 = this.f11202e;
                                    int i14 = i13 + 4;
                                    char c11 = 0;
                                    while (i13 < i14) {
                                        char c12 = this.f11201d[i13];
                                        char c13 = (char) (c11 << 4);
                                        if (c12 >= '0' && c12 <= '9') {
                                            i10 = c12 - '0';
                                        } else if (c12 >= 'a' && c12 <= 'f') {
                                            i10 = c12 - 'W';
                                        } else if (c12 >= 'A' && c12 <= 'F') {
                                            i10 = c12 - '7';
                                        } else {
                                            throw new NumberFormatException("\\u" + new String(this.f11201d, this.f11202e, 4));
                                        }
                                        c11 = (char) (c13 + i10);
                                        i13++;
                                    }
                                    this.f11202e += 4;
                                    return c11;
                                }
                                throw b("Invalid escape sequence");
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\f';
                }
                return '\b';
            }
        } else {
            this.f11204g++;
            this.f11205h = i12;
        }
        return c10;
    }

    private void y() throws IOException {
        b(true);
        int i10 = this.f11202e;
        int i11 = i10 - 1;
        this.f11202e = i11;
        if (i10 + 4 > this.f11203f && !b(5)) {
            return;
        }
        char[] cArr = this.f11201d;
        if (cArr[i11] == ')' && cArr[i10] == ']' && cArr[i10 + 1] == '}' && cArr[i10 + 2] == '\'' && cArr[i10 + 3] == '\n') {
            this.f11202e += 5;
        }
    }

    public final void a(boolean z10) {
        this.f11200c = z10;
    }

    public void b() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 4) {
            int i11 = this.f11210m;
            this.f11210m = i11 - 1;
            int[] iArr = this.f11212o;
            int i12 = i11 - 2;
            iArr[i12] = iArr[i12] + 1;
            this.f11198a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + r());
    }

    public void c() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 1) {
            a(3);
            this.f11198a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + r());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f11198a = 0;
        this.f11209l[0] = 8;
        this.f11210m = 1;
        this.f11199b.close();
    }

    public void d() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 2) {
            int i11 = this.f11210m;
            int i12 = i11 - 1;
            this.f11210m = i12;
            this.f11211n[i12] = null;
            int[] iArr = this.f11212o;
            int i13 = i11 - 2;
            iArr[i13] = iArr[i13] + 1;
            this.f11198a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + r());
    }

    public boolean e() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 != 2 && i10 != 4) {
            return true;
        }
        return false;
    }

    public b f() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        switch (i10) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String g() throws IOException {
        String b10;
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 14) {
            b10 = u();
        } else if (i10 == 12) {
            b10 = b('\'');
        } else if (i10 == 13) {
            b10 = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + r());
        }
        this.f11198a = 0;
        this.f11211n[this.f11210m - 1] = b10;
        return b10;
    }

    public String h() throws IOException {
        String str;
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 10) {
            str = u();
        } else if (i10 == 8) {
            str = b('\'');
        } else if (i10 == 9) {
            str = b('\"');
        } else if (i10 == 11) {
            str = this.f11208k;
            this.f11208k = null;
        } else if (i10 == 15) {
            str = Long.toString(this.f11206i);
        } else if (i10 == 16) {
            str = new String(this.f11201d, this.f11202e, this.f11207j);
            this.f11202e += this.f11207j;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + r());
        }
        this.f11198a = 0;
        int[] iArr = this.f11212o;
        int i11 = this.f11210m - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 5) {
            this.f11198a = 0;
            int[] iArr = this.f11212o;
            int i11 = this.f11210m - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        } else if (i10 == 6) {
            this.f11198a = 0;
            int[] iArr2 = this.f11212o;
            int i12 = this.f11210m - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + r());
        }
    }

    public void j() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 7) {
            this.f11198a = 0;
            int[] iArr = this.f11212o;
            int i11 = this.f11210m - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + r());
    }

    public double k() throws IOException {
        char c10;
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 15) {
            this.f11198a = 0;
            int[] iArr = this.f11212o;
            int i11 = this.f11210m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f11206i;
        }
        if (i10 == 16) {
            this.f11208k = new String(this.f11201d, this.f11202e, this.f11207j);
            this.f11202e += this.f11207j;
        } else if (i10 != 8 && i10 != 9) {
            if (i10 == 10) {
                this.f11208k = u();
            } else if (i10 != 11) {
                throw new IllegalStateException("Expected a double but was " + f() + r());
            }
        } else {
            if (i10 == 8) {
                c10 = '\'';
            } else {
                c10 = '\"';
            }
            this.f11208k = b(c10);
        }
        this.f11198a = 11;
        double parseDouble = Double.parseDouble(this.f11208k);
        if (!this.f11200c && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new d("JSON forbids NaN and infinities: " + parseDouble + r());
        }
        this.f11208k = null;
        this.f11198a = 0;
        int[] iArr2 = this.f11212o;
        int i12 = this.f11210m - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public long l() throws IOException {
        char c10;
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 15) {
            this.f11198a = 0;
            int[] iArr = this.f11212o;
            int i11 = this.f11210m - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f11206i;
        }
        if (i10 == 16) {
            this.f11208k = new String(this.f11201d, this.f11202e, this.f11207j);
            this.f11202e += this.f11207j;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw new IllegalStateException("Expected a long but was " + f() + r());
        } else {
            if (i10 == 10) {
                this.f11208k = u();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f11208k = b(c10);
            }
            try {
                long parseLong = Long.parseLong(this.f11208k);
                this.f11198a = 0;
                int[] iArr2 = this.f11212o;
                int i12 = this.f11210m - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f11198a = 11;
        double parseDouble = Double.parseDouble(this.f11208k);
        long j10 = (long) parseDouble;
        if (j10 == parseDouble) {
            this.f11208k = null;
            this.f11198a = 0;
            int[] iArr3 = this.f11212o;
            int i13 = this.f11210m - 1;
            iArr3[i13] = iArr3[i13] + 1;
            return j10;
        }
        throw new NumberFormatException("Expected a long but was " + this.f11208k + r());
    }

    public int m() throws IOException {
        char c10;
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 15) {
            long j10 = this.f11206i;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.f11198a = 0;
                int[] iArr = this.f11212o;
                int i12 = this.f11210m - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.f11206i + r());
        }
        if (i10 == 16) {
            this.f11208k = new String(this.f11201d, this.f11202e, this.f11207j);
            this.f11202e += this.f11207j;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw new IllegalStateException("Expected an int but was " + f() + r());
        } else {
            if (i10 == 10) {
                this.f11208k = u();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.f11208k = b(c10);
            }
            try {
                int parseInt = Integer.parseInt(this.f11208k);
                this.f11198a = 0;
                int[] iArr2 = this.f11212o;
                int i13 = this.f11210m - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f11198a = 11;
        double parseDouble = Double.parseDouble(this.f11208k);
        int i14 = (int) parseDouble;
        if (i14 == parseDouble) {
            this.f11208k = null;
            this.f11198a = 0;
            int[] iArr3 = this.f11212o;
            int i15 = this.f11210m - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        }
        throw new NumberFormatException("Expected an int but was " + this.f11208k + r());
    }

    public void n() throws IOException {
        int i10 = 0;
        do {
            int i11 = this.f11198a;
            if (i11 == 0) {
                i11 = q();
            }
            if (i11 == 3) {
                a(1);
            } else if (i11 == 1) {
                a(3);
            } else {
                if (i11 == 4) {
                    this.f11210m--;
                } else if (i11 == 2) {
                    this.f11210m--;
                } else {
                    if (i11 != 14 && i11 != 10) {
                        if (i11 != 8 && i11 != 12) {
                            if (i11 != 9 && i11 != 13) {
                                if (i11 == 16) {
                                    this.f11202e += this.f11207j;
                                }
                            } else {
                                c('\"');
                            }
                        } else {
                            c('\'');
                        }
                    } else {
                        do {
                            int i12 = 0;
                            while (true) {
                                int i13 = this.f11202e;
                                if (i13 + i12 < this.f11203f) {
                                    char c10 = this.f11201d[i13 + i12];
                                    if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                                        if (c10 != '#') {
                                            if (c10 != ',') {
                                                if (c10 != '/' && c10 != '=') {
                                                    if (c10 != '{' && c10 != '}' && c10 != ':') {
                                                        if (c10 != ';') {
                                                            switch (c10) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i12++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.f11202e = i13 + i12;
                                }
                            }
                            v();
                            this.f11202e += i12;
                        } while (b(1));
                    }
                    this.f11198a = 0;
                }
                i10--;
                this.f11198a = 0;
            }
            i10++;
            this.f11198a = 0;
        } while (i10 != 0);
        int[] iArr = this.f11212o;
        int i14 = this.f11210m;
        int i15 = i14 - 1;
        iArr[i15] = iArr[i15] + 1;
        this.f11211n[i14 - 1] = "null";
    }

    public String o() {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = this.f11210m;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.f11209l[i11];
            if (i12 != 1 && i12 != 2) {
                if (i12 == 3 || i12 == 4 || i12 == 5) {
                    sb2.append('.');
                    String str = this.f11211n[i11];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
            } else {
                sb2.append('[');
                sb2.append(this.f11212o[i11]);
                sb2.append(']');
            }
        }
        return sb2.toString();
    }

    public final boolean p() {
        return this.f11200c;
    }

    final int q() throws IOException {
        int b10;
        int[] iArr = this.f11209l;
        int i10 = this.f11210m;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int b11 = b(true);
            if (b11 != 44) {
                if (b11 != 59) {
                    if (b11 == 93) {
                        this.f11198a = 4;
                        return 4;
                    }
                    throw b("Unterminated array");
                }
                v();
            }
        } else if (i11 != 3 && i11 != 5) {
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int b12 = b(true);
                if (b12 != 58) {
                    if (b12 == 61) {
                        v();
                        if (this.f11202e < this.f11203f || b(1)) {
                            char[] cArr = this.f11201d;
                            int i12 = this.f11202e;
                            if (cArr[i12] == '>') {
                                this.f11202e = i12 + 1;
                            }
                        }
                    } else {
                        throw b("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                if (this.f11200c) {
                    y();
                }
                this.f11209l[this.f11210m - 1] = 7;
            } else if (i11 == 7) {
                if (b(false) == -1) {
                    this.f11198a = 17;
                    return 17;
                }
                v();
                this.f11202e--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        } else {
            iArr[i10 - 1] = 4;
            if (i11 == 5 && (b10 = b(true)) != 44) {
                if (b10 != 59) {
                    if (b10 == 125) {
                        this.f11198a = 2;
                        return 2;
                    }
                    throw b("Unterminated object");
                }
                v();
            }
            int b13 = b(true);
            if (b13 != 34) {
                if (b13 != 39) {
                    if (b13 != 125) {
                        v();
                        this.f11202e--;
                        if (a((char) b13)) {
                            this.f11198a = 14;
                            return 14;
                        }
                        throw b("Expected name");
                    } else if (i11 != 5) {
                        this.f11198a = 2;
                        return 2;
                    } else {
                        throw b("Expected name");
                    }
                }
                v();
                this.f11198a = 12;
                return 12;
            }
            this.f11198a = 13;
            return 13;
        }
        int b14 = b(true);
        if (b14 != 34) {
            if (b14 != 39) {
                if (b14 != 44 && b14 != 59) {
                    if (b14 != 91) {
                        if (b14 != 93) {
                            if (b14 != 123) {
                                this.f11202e--;
                                int s10 = s();
                                if (s10 != 0) {
                                    return s10;
                                }
                                int t10 = t();
                                if (t10 != 0) {
                                    return t10;
                                }
                                if (a(this.f11201d[this.f11202e])) {
                                    v();
                                    this.f11198a = 10;
                                    return 10;
                                }
                                throw b("Expected value");
                            }
                            this.f11198a = 1;
                            return 1;
                        } else if (i11 == 1) {
                            this.f11198a = 4;
                            return 4;
                        }
                    } else {
                        this.f11198a = 3;
                        return 3;
                    }
                }
                if (i11 != 1 && i11 != 2) {
                    throw b("Unexpected value");
                }
                v();
                this.f11202e--;
                this.f11198a = 7;
                return 7;
            }
            v();
            this.f11198a = 8;
            return 8;
        }
        this.f11198a = 9;
        return 9;
    }

    final String r() {
        return " at line " + (this.f11204g + 1) + " column " + ((this.f11202e - this.f11205h) + 1) + " path " + o();
    }

    public String toString() {
        return getClass().getSimpleName() + r();
    }

    public void a() throws IOException {
        int i10 = this.f11198a;
        if (i10 == 0) {
            i10 = q();
        }
        if (i10 == 3) {
            a(1);
            this.f11212o[this.f11210m - 1] = 0;
            this.f11198a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + r());
    }

    private void c(char c10) throws IOException {
        char[] cArr = this.f11201d;
        while (true) {
            int i10 = this.f11202e;
            int i11 = this.f11203f;
            while (true) {
                if (i10 < i11) {
                    int i12 = i10 + 1;
                    char c11 = cArr[i10];
                    if (c11 == c10) {
                        this.f11202e = i12;
                        return;
                    } else if (c11 == '\\') {
                        this.f11202e = i12;
                        x();
                        break;
                    } else {
                        if (c11 == '\n') {
                            this.f11204g++;
                            this.f11205h = i12;
                        }
                        i10 = i12;
                    }
                } else {
                    this.f11202e = i10;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    private String b(char c10) throws IOException {
        char[] cArr = this.f11201d;
        StringBuilder sb2 = null;
        while (true) {
            int i10 = this.f11202e;
            int i11 = this.f11203f;
            int i12 = i10;
            while (true) {
                if (i12 < i11) {
                    int i13 = i12 + 1;
                    char c11 = cArr[i12];
                    if (c11 == c10) {
                        this.f11202e = i13;
                        int i14 = (i13 - i10) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i10, i14);
                        }
                        sb2.append(cArr, i10, i14);
                        return sb2.toString();
                    } else if (c11 == '\\') {
                        this.f11202e = i13;
                        int i15 = i13 - i10;
                        int i16 = i15 - 1;
                        if (sb2 == null) {
                            sb2 = new StringBuilder(Math.max(i15 << 1, 16));
                        }
                        sb2.append(cArr, i10, i16);
                        sb2.append(x());
                    } else {
                        if (c11 == '\n') {
                            this.f11204g++;
                            this.f11205h = i13;
                        }
                        i12 = i13;
                    }
                } else {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max((i12 - i10) << 1, 16));
                    }
                    sb2.append(cArr, i10, i12 - i10);
                    this.f11202e = i12;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    private boolean a(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        v();
        return false;
    }

    private void a(int i10) {
        int i11 = this.f11210m;
        int[] iArr = this.f11209l;
        if (i11 == iArr.length) {
            int i12 = i11 << 1;
            this.f11209l = Arrays.copyOf(iArr, i12);
            this.f11212o = Arrays.copyOf(this.f11212o, i12);
            this.f11211n = (String[]) Arrays.copyOf(this.f11211n, i12);
        }
        int[] iArr2 = this.f11209l;
        int i13 = this.f11210m;
        this.f11210m = i13 + 1;
        iArr2[i13] = i10;
    }

    private boolean a(String str) throws IOException {
        int i10;
        int length = str.length();
        while (true) {
            if (this.f11202e + length > this.f11203f && !b(length)) {
                return false;
            }
            char[] cArr = this.f11201d;
            int i11 = this.f11202e;
            if (cArr[i11] != '\n') {
                while (i10 < length) {
                    i10 = this.f11201d[this.f11202e + i10] == str.charAt(i10) ? i10 + 1 : 0;
                }
                return true;
            }
            this.f11204g++;
            this.f11205h = i11 + 1;
            this.f11202e++;
        }
    }

    private boolean b(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.f11201d;
        int i13 = this.f11205h;
        int i14 = this.f11202e;
        this.f11205h = i13 - i14;
        int i15 = this.f11203f;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f11203f = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f11203f = 0;
        }
        this.f11202e = 0;
        do {
            Reader reader = this.f11199b;
            int i17 = this.f11203f;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.f11203f + read;
            this.f11203f = i11;
            if (this.f11204g == 0 && (i12 = this.f11205h) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f11202e++;
                this.f11205h = i12 + 1;
                i10++;
                continue;
            }
        } while (i11 < i10);
        return true;
    }

    private int b(boolean z10) throws IOException {
        char[] cArr = this.f11201d;
        int i10 = this.f11202e;
        int i11 = this.f11203f;
        while (true) {
            if (i10 == i11) {
                this.f11202e = i10;
                if (!b(1)) {
                    if (z10) {
                        throw new EOFException("End of input" + r());
                    }
                    return -1;
                }
                i10 = this.f11202e;
                i11 = this.f11203f;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f11204g++;
                this.f11205h = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f11202e = i12;
                    if (i12 == i11) {
                        this.f11202e = i10;
                        boolean b10 = b(2);
                        this.f11202e++;
                        if (!b10) {
                            return c10;
                        }
                    }
                    v();
                    int i13 = this.f11202e;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.f11202e = i13 + 1;
                        if (a("*/")) {
                            i10 = this.f11202e + 2;
                            i11 = this.f11203f;
                        } else {
                            throw b("Unterminated comment");
                        }
                    } else if (c11 != '/') {
                        return c10;
                    } else {
                        this.f11202e = i13 + 1;
                        w();
                        i10 = this.f11202e;
                        i11 = this.f11203f;
                    }
                } else if (c10 == '#') {
                    this.f11202e = i12;
                    v();
                    w();
                    i10 = this.f11202e;
                    i11 = this.f11203f;
                } else {
                    this.f11202e = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    private IOException b(String str) throws IOException {
        throw new d(str + r());
    }
}
