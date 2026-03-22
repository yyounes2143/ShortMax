package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
/* compiled from: JsonUtf8Reader.java */
/* loaded from: classes2.dex */
final class b extends JsonReader {

    /* renamed from: n  reason: collision with root package name */
    private static final ByteString f4683n = ByteString.encodeUtf8("'\\");

    /* renamed from: o  reason: collision with root package name */
    private static final ByteString f4684o = ByteString.encodeUtf8("\"\\");

    /* renamed from: p  reason: collision with root package name */
    private static final ByteString f4685p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: q  reason: collision with root package name */
    private static final ByteString f4686q = ByteString.encodeUtf8("\n\r");

    /* renamed from: r  reason: collision with root package name */
    private static final ByteString f4687r = ByteString.encodeUtf8("*/");

    /* renamed from: h  reason: collision with root package name */
    private final BufferedSource f4688h;

    /* renamed from: i  reason: collision with root package name */
    private final Buffer f4689i;

    /* renamed from: j  reason: collision with root package name */
    private int f4690j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f4691k;

    /* renamed from: l  reason: collision with root package name */
    private int f4692l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f4693m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            this.f4688h = bufferedSource;
            this.f4689i = bufferedSource.buffer();
            w(6);
            return;
        }
        throw new NullPointerException("source == null");
    }

    private void W() throws IOException {
        if (this.f4679e) {
            return;
        }
        throw T("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    private int Y() throws IOException {
        int[] iArr = this.f4676b;
        int i10 = this.f4675a;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int b02 = b0(true);
            this.f4689i.readByte();
            if (b02 != 44) {
                if (b02 != 59) {
                    if (b02 == 93) {
                        this.f4690j = 4;
                        return 4;
                    }
                    throw T("Unterminated array");
                }
                W();
            }
        } else if (i11 != 3 && i11 != 5) {
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int b03 = b0(true);
                this.f4689i.readByte();
                if (b03 != 58) {
                    if (b03 == 61) {
                        W();
                        if (this.f4688h.request(1L) && this.f4689i.getByte(0L) == 62) {
                            this.f4689i.readByte();
                        }
                    } else {
                        throw T("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                iArr[i10 - 1] = 7;
            } else if (i11 == 7) {
                if (b0(false) == -1) {
                    this.f4690j = 18;
                    return 18;
                }
                W();
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        } else {
            iArr[i10 - 1] = 4;
            if (i11 == 5) {
                int b04 = b0(true);
                this.f4689i.readByte();
                if (b04 != 44) {
                    if (b04 != 59) {
                        if (b04 == 125) {
                            this.f4690j = 2;
                            return 2;
                        }
                        throw T("Unterminated object");
                    }
                    W();
                }
            }
            int b05 = b0(true);
            if (b05 != 34) {
                if (b05 != 39) {
                    if (b05 != 125) {
                        W();
                        if (a0((char) b05)) {
                            this.f4690j = 14;
                            return 14;
                        }
                        throw T("Expected name");
                    } else if (i11 != 5) {
                        this.f4689i.readByte();
                        this.f4690j = 2;
                        return 2;
                    } else {
                        throw T("Expected name");
                    }
                }
                this.f4689i.readByte();
                W();
                this.f4690j = 12;
                return 12;
            }
            this.f4689i.readByte();
            this.f4690j = 13;
            return 13;
        }
        int b06 = b0(true);
        if (b06 != 34) {
            if (b06 != 39) {
                if (b06 != 44 && b06 != 59) {
                    if (b06 != 91) {
                        if (b06 != 93) {
                            if (b06 != 123) {
                                int e02 = e0();
                                if (e02 != 0) {
                                    return e02;
                                }
                                int f02 = f0();
                                if (f02 != 0) {
                                    return f02;
                                }
                                if (a0(this.f4689i.getByte(0L))) {
                                    W();
                                    this.f4690j = 10;
                                    return 10;
                                }
                                throw T("Expected value");
                            }
                            this.f4689i.readByte();
                            this.f4690j = 1;
                            return 1;
                        } else if (i11 == 1) {
                            this.f4689i.readByte();
                            this.f4690j = 4;
                            return 4;
                        }
                    } else {
                        this.f4689i.readByte();
                        this.f4690j = 3;
                        return 3;
                    }
                }
                if (i11 != 1 && i11 != 2) {
                    throw T("Unexpected value");
                }
                W();
                this.f4690j = 7;
                return 7;
            }
            W();
            this.f4689i.readByte();
            this.f4690j = 8;
            return 8;
        }
        this.f4689i.readByte();
        this.f4690j = 9;
        return 9;
    }

    private int Z(String str, JsonReader.a aVar) {
        int length = aVar.f4681a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f4681a[i10])) {
                this.f4690j = 0;
                this.f4677c[this.f4675a - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    private boolean a0(int i10) throws IOException {
        if (i10 != 9 && i10 != 10 && i10 != 12 && i10 != 13 && i10 != 32) {
            if (i10 != 35) {
                if (i10 != 44) {
                    if (i10 != 47 && i10 != 61) {
                        if (i10 != 123 && i10 != 125 && i10 != 58) {
                            if (i10 != 59) {
                                switch (i10) {
                                    case 91:
                                    case 93:
                                        return false;
                                    case 92:
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            W();
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
        r6.f4689i.skip(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
        if (r2 != 47) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        if (r6.f4688h.request(2) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
        W();
        r3 = r6.f4689i.getByte(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        if (r3 == 42) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        if (r3 == 47) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
        r6.f4689i.readByte();
        r6.f4689i.readByte();
        j0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
        r6.f4689i.readByte();
        r6.f4689i.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
        if (i0() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
        throw T("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if (r2 != 35) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0076, code lost:
        W();
        j0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int b0(boolean r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
        L1:
            r1 = r0
        L2:
            okio.BufferedSource r2 = r6.f4688h
            int r3 = r1 + 1
            long r4 = (long) r3
            boolean r2 = r2.request(r4)
            if (r2 == 0) goto L80
            okio.Buffer r2 = r6.f4689i
            long r4 = (long) r1
            byte r2 = r2.getByte(r4)
            r4 = 10
            if (r2 == r4) goto L7e
            r4 = 32
            if (r2 == r4) goto L7e
            r4 = 13
            if (r2 == r4) goto L7e
            r4 = 9
            if (r2 != r4) goto L25
            goto L7e
        L25:
            okio.Buffer r3 = r6.f4689i
            long r4 = (long) r1
            r3.skip(r4)
            r1 = 47
            if (r2 != r1) goto L72
            okio.BufferedSource r3 = r6.f4688h
            r4 = 2
            boolean r3 = r3.request(r4)
            if (r3 != 0) goto L3a
            return r2
        L3a:
            r6.W()
            okio.Buffer r3 = r6.f4689i
            r4 = 1
            byte r3 = r3.getByte(r4)
            r4 = 42
            if (r3 == r4) goto L5a
            if (r3 == r1) goto L4c
            return r2
        L4c:
            okio.Buffer r1 = r6.f4689i
            r1.readByte()
            okio.Buffer r1 = r6.f4689i
            r1.readByte()
            r6.j0()
            goto L1
        L5a:
            okio.Buffer r1 = r6.f4689i
            r1.readByte()
            okio.Buffer r1 = r6.f4689i
            r1.readByte()
            boolean r1 = r6.i0()
            if (r1 == 0) goto L6b
            goto L1
        L6b:
            java.lang.String r7 = "Unterminated comment"
            com.airbnb.lottie.parser.moshi.JsonEncodingException r7 = r6.T(r7)
            throw r7
        L72:
            r1 = 35
            if (r2 != r1) goto L7d
            r6.W()
            r6.j0()
            goto L1
        L7d:
            return r2
        L7e:
            r1 = r3
            goto L2
        L80:
            if (r7 != 0) goto L84
            r7 = -1
            return r7
        L84:
            java.io.EOFException r7 = new java.io.EOFException
            java.lang.String r0 = "End of input"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.b.b0(boolean):int");
    }

    private String c0(ByteString byteString) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long indexOfElement = this.f4688h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f4689i.getByte(indexOfElement) == 92) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder();
                    }
                    sb2.append(this.f4689i.readUtf8(indexOfElement));
                    this.f4689i.readByte();
                    sb2.append(g0());
                } else if (sb2 == null) {
                    String readUtf8 = this.f4689i.readUtf8(indexOfElement);
                    this.f4689i.readByte();
                    return readUtf8;
                } else {
                    sb2.append(this.f4689i.readUtf8(indexOfElement));
                    this.f4689i.readByte();
                    return sb2.toString();
                }
            } else {
                throw T("Unterminated string");
            }
        }
    }

    private String d0() throws IOException {
        long indexOfElement = this.f4688h.indexOfElement(f4685p);
        if (indexOfElement != -1) {
            return this.f4689i.readUtf8(indexOfElement);
        }
        return this.f4689i.readUtf8();
    }

    private int e0() throws IOException {
        String str;
        String str2;
        int i10;
        byte b10 = this.f4689i.getByte(0L);
        if (b10 != 116 && b10 != 84) {
            if (b10 != 102 && b10 != 70) {
                if (b10 != 110 && b10 != 78) {
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
        int i11 = 1;
        while (i11 < length) {
            int i12 = i11 + 1;
            if (!this.f4688h.request(i12)) {
                return 0;
            }
            byte b11 = this.f4689i.getByte(i11);
            if (b11 != str.charAt(i11) && b11 != str2.charAt(i11)) {
                return 0;
            }
            i11 = i12;
        }
        if (this.f4688h.request(length + 1) && a0(this.f4689i.getByte(length))) {
            return 0;
        }
        this.f4689i.skip(length);
        this.f4690j = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0081, code lost:
        if (a0(r11) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0083, code lost:
        if (r6 != 2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0085, code lost:
        if (r7 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008b, code lost:
        if (r8 != Long.MIN_VALUE) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008d, code lost:
        if (r10 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0091, code lost:
        if (r8 != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0093, code lost:
        if (r10 != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0095, code lost:
        if (r10 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0098, code lost:
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0099, code lost:
        r16.f4691k = r8;
        r16.f4689i.skip(r5);
        r16.f4690j = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a5, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a6, code lost:
        if (r6 == 2) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a9, code lost:
        if (r6 == 4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ac, code lost:
        if (r6 != 7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00af, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b0, code lost:
        r16.f4692l = r5;
        r16.f4690j = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b6, code lost:
        return 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b7, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int f0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.b.f0():int");
    }

    private char g0() throws IOException {
        int i10;
        if (this.f4688h.request(1L)) {
            byte readByte = this.f4689i.readByte();
            if (readByte != 10 && readByte != 34 && readByte != 39 && readByte != 47 && readByte != 92) {
                if (readByte != 98) {
                    if (readByte != 102) {
                        if (readByte == 110) {
                            return '\n';
                        }
                        if (readByte != 114) {
                            if (readByte != 116) {
                                if (readByte != 117) {
                                    if (this.f4679e) {
                                        return (char) readByte;
                                    }
                                    throw T("Invalid escape sequence: \\" + ((char) readByte));
                                } else if (this.f4688h.request(4L)) {
                                    char c10 = 0;
                                    for (int i11 = 0; i11 < 4; i11++) {
                                        byte b10 = this.f4689i.getByte(i11);
                                        char c11 = (char) (c10 << 4);
                                        if (b10 >= 48 && b10 <= 57) {
                                            i10 = b10 - 48;
                                        } else if (b10 >= 97 && b10 <= 102) {
                                            i10 = b10 - 87;
                                        } else if (b10 < 65 || b10 > 70) {
                                            throw T("\\u" + this.f4689i.readUtf8(4L));
                                        } else {
                                            i10 = b10 - 55;
                                        }
                                        c10 = (char) (c11 + i10);
                                    }
                                    this.f4689i.skip(4L);
                                    return c10;
                                } else {
                                    throw new EOFException("Unterminated escape sequence at path " + getPath());
                                }
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\f';
                }
                return '\b';
            }
            return (char) readByte;
        }
        throw T("Unterminated escape sequence");
    }

    private void h0(ByteString byteString) throws IOException {
        while (true) {
            long indexOfElement = this.f4688h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f4689i.getByte(indexOfElement) == 92) {
                    this.f4689i.skip(indexOfElement + 1);
                    g0();
                } else {
                    this.f4689i.skip(indexOfElement + 1);
                    return;
                }
            } else {
                throw T("Unterminated string");
            }
        }
    }

    private boolean i0() throws IOException {
        boolean z10;
        long size;
        BufferedSource bufferedSource = this.f4688h;
        ByteString byteString = f4687r;
        long indexOf = bufferedSource.indexOf(byteString);
        if (indexOf != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        Buffer buffer = this.f4689i;
        if (z10) {
            size = indexOf + byteString.size();
        } else {
            size = buffer.size();
        }
        buffer.skip(size);
        return z10;
    }

    private void j0() throws IOException {
        long size;
        long indexOfElement = this.f4688h.indexOfElement(f4686q);
        Buffer buffer = this.f4689i;
        if (indexOfElement != -1) {
            size = indexOfElement + 1;
        } else {
            size = buffer.size();
        }
        buffer.skip(size);
    }

    private void l0() throws IOException {
        long indexOfElement = this.f4688h.indexOfElement(f4685p);
        Buffer buffer = this.f4689i;
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        buffer.skip(indexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void F() throws IOException {
        if (!this.f4680f) {
            int i10 = this.f4690j;
            if (i10 == 0) {
                i10 = Y();
            }
            if (i10 == 14) {
                l0();
            } else if (i10 == 13) {
                h0(f4684o);
            } else if (i10 == 12) {
                h0(f4683n);
            } else if (i10 != 15) {
                throw new JsonDataException("Expected a name but was " + v() + " at path " + getPath());
            }
            this.f4690j = 0;
            this.f4677c[this.f4675a - 1] = "null";
            return;
        }
        throw new JsonDataException("Cannot skip unexpected " + v() + " at " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void P() throws IOException {
        if (!this.f4680f) {
            int i10 = 0;
            do {
                int i11 = this.f4690j;
                if (i11 == 0) {
                    i11 = Y();
                }
                if (i11 == 3) {
                    w(1);
                } else if (i11 == 1) {
                    w(3);
                } else {
                    if (i11 == 4) {
                        i10--;
                        if (i10 >= 0) {
                            this.f4675a--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + v() + " at path " + getPath());
                        }
                    } else if (i11 == 2) {
                        i10--;
                        if (i10 >= 0) {
                            this.f4675a--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + v() + " at path " + getPath());
                        }
                    } else if (i11 != 14 && i11 != 10) {
                        if (i11 != 9 && i11 != 13) {
                            if (i11 != 8 && i11 != 12) {
                                if (i11 == 17) {
                                    this.f4689i.skip(this.f4692l);
                                } else if (i11 == 18) {
                                    throw new JsonDataException("Expected a value but was " + v() + " at path " + getPath());
                                }
                            } else {
                                h0(f4683n);
                            }
                        } else {
                            h0(f4684o);
                        }
                    } else {
                        l0();
                    }
                    this.f4690j = 0;
                }
                i10++;
                this.f4690j = 0;
            } while (i10 != 0);
            int[] iArr = this.f4678d;
            int i12 = this.f4675a;
            int i13 = i12 - 1;
            iArr[i13] = iArr[i13] + 1;
            this.f4677c[i12 - 1] = "null";
            return;
        }
        throw new JsonDataException("Cannot skip unexpected " + v() + " at " + getPath());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4690j = 0;
        this.f4676b[0] = 8;
        this.f4675a = 1;
        this.f4689i.clear();
        this.f4688h.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void d() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 3) {
            w(1);
            this.f4678d[this.f4675a - 1] = 0;
            this.f4690j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_ARRAY but was " + v() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void k() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 1) {
            w(3);
            this.f4690j = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + v() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void l() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 4) {
            int i11 = this.f4675a;
            this.f4675a = i11 - 1;
            int[] iArr = this.f4678d;
            int i12 = i11 - 2;
            iArr[i12] = iArr[i12] + 1;
            this.f4690j = 0;
            return;
        }
        throw new JsonDataException("Expected END_ARRAY but was " + v() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void m() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 2) {
            int i11 = this.f4675a;
            int i12 = i11 - 1;
            this.f4675a = i12;
            this.f4677c[i12] = null;
            int[] iArr = this.f4678d;
            int i13 = i11 - 2;
            iArr[i13] = iArr[i13] + 1;
            this.f4690j = 0;
            return;
        }
        throw new JsonDataException("Expected END_OBJECT but was " + v() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean o() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 != 2 && i10 != 4 && i10 != 18) {
            return true;
        }
        return false;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean p() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 5) {
            this.f4690j = 0;
            int[] iArr = this.f4678d;
            int i11 = this.f4675a - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        } else if (i10 == 6) {
            this.f4690j = 0;
            int[] iArr2 = this.f4678d;
            int i12 = this.f4675a - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        } else {
            throw new JsonDataException("Expected a boolean but was " + v() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double q() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 16) {
            this.f4690j = 0;
            int[] iArr = this.f4678d;
            int i11 = this.f4675a - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.f4691k;
        }
        if (i10 == 17) {
            this.f4693m = this.f4689i.readUtf8(this.f4692l);
        } else if (i10 == 9) {
            this.f4693m = c0(f4684o);
        } else if (i10 == 8) {
            this.f4693m = c0(f4683n);
        } else if (i10 == 10) {
            this.f4693m = d0();
        } else if (i10 != 11) {
            throw new JsonDataException("Expected a double but was " + v() + " at path " + getPath());
        }
        this.f4690j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4693m);
            if (!this.f4679e && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f4693m = null;
            this.f4690j = 0;
            int[] iArr2 = this.f4678d;
            int i12 = this.f4675a - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new JsonDataException("Expected a double but was " + this.f4693m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int r() throws IOException {
        String c02;
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 16) {
            long j10 = this.f4691k;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.f4690j = 0;
                int[] iArr = this.f4678d;
                int i12 = this.f4675a - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new JsonDataException("Expected an int but was " + this.f4691k + " at path " + getPath());
        }
        if (i10 == 17) {
            this.f4693m = this.f4689i.readUtf8(this.f4692l);
        } else if (i10 != 9 && i10 != 8) {
            if (i10 != 11) {
                throw new JsonDataException("Expected an int but was " + v() + " at path " + getPath());
            }
        } else {
            if (i10 == 9) {
                c02 = c0(f4684o);
            } else {
                c02 = c0(f4683n);
            }
            this.f4693m = c02;
            try {
                int parseInt = Integer.parseInt(c02);
                this.f4690j = 0;
                int[] iArr2 = this.f4678d;
                int i13 = this.f4675a - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f4690j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f4693m);
            int i14 = (int) parseDouble;
            if (i14 == parseDouble) {
                this.f4693m = null;
                this.f4690j = 0;
                int[] iArr3 = this.f4678d;
                int i15 = this.f4675a - 1;
                iArr3[i15] = iArr3[i15] + 1;
                return i14;
            }
            throw new JsonDataException("Expected an int but was " + this.f4693m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new JsonDataException("Expected an int but was " + this.f4693m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String s() throws IOException {
        String str;
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 14) {
            str = d0();
        } else if (i10 == 13) {
            str = c0(f4684o);
        } else if (i10 == 12) {
            str = c0(f4683n);
        } else if (i10 == 15) {
            str = this.f4693m;
        } else {
            throw new JsonDataException("Expected a name but was " + v() + " at path " + getPath());
        }
        this.f4690j = 0;
        this.f4677c[this.f4675a - 1] = str;
        return str;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String t() throws IOException {
        String readUtf8;
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 == 10) {
            readUtf8 = d0();
        } else if (i10 == 9) {
            readUtf8 = c0(f4684o);
        } else if (i10 == 8) {
            readUtf8 = c0(f4683n);
        } else if (i10 == 11) {
            readUtf8 = this.f4693m;
            this.f4693m = null;
        } else if (i10 == 16) {
            readUtf8 = Long.toString(this.f4691k);
        } else if (i10 == 17) {
            readUtf8 = this.f4689i.readUtf8(this.f4692l);
        } else {
            throw new JsonDataException("Expected a string but was " + v() + " at path " + getPath());
        }
        this.f4690j = 0;
        int[] iArr = this.f4678d;
        int i11 = this.f4675a - 1;
        iArr[i11] = iArr[i11] + 1;
        return readUtf8;
    }

    public String toString() {
        return "JsonReader(" + this.f4688h + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token v() throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        switch (i10) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int x(JsonReader.a aVar) throws IOException {
        int i10 = this.f4690j;
        if (i10 == 0) {
            i10 = Y();
        }
        if (i10 < 12 || i10 > 15) {
            return -1;
        }
        if (i10 == 15) {
            return Z(this.f4693m, aVar);
        }
        int select = this.f4688h.select(aVar.f4682b);
        if (select != -1) {
            this.f4690j = 0;
            this.f4677c[this.f4675a - 1] = aVar.f4681a[select];
            return select;
        }
        String str = this.f4677c[this.f4675a - 1];
        String s10 = s();
        int Z = Z(s10, aVar);
        if (Z == -1) {
            this.f4690j = 15;
            this.f4693m = s10;
            this.f4677c[this.f4675a - 1] = str;
        }
        return Z;
    }
}
