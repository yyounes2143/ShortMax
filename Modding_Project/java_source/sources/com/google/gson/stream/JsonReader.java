package com.google.gson.stream;

import com.google.gson.Strictness;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.TroubleshootingGuide;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes5.dex */
public class JsonReader implements Closeable {
    static final int BUFFER_SIZE = 1024;
    static final int DEFAULT_NESTING_LIMIT = 255;
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;

    /* renamed from: in  reason: collision with root package name */
    private final Reader f21702in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private Strictness strictness = Strictness.LEGACY_STRICT;
    private int nestingLimit = 255;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int stackSize = 1;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int i10 = jsonReader.peeked;
                if (i10 == 0) {
                    i10 = jsonReader.doPeek();
                }
                if (i10 == 13) {
                    jsonReader.peeked = 9;
                } else if (i10 == 12) {
                    jsonReader.peeked = 8;
                } else if (i10 == 14) {
                    jsonReader.peeked = 10;
                } else {
                    throw jsonReader.unexpectedTokenError("a name");
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f21702in = reader;
    }

    private void checkLenient() throws MalformedJsonException {
        if (this.strictness == Strictness.LENIENT) {
            return;
        }
        throw syntaxError("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int i10 = this.pos;
        this.pos = i10 - 1;
        if (i10 + 4 > this.limit && !fillBuffer(5)) {
            return;
        }
        int i11 = this.pos;
        char[] cArr = this.buffer;
        if (cArr[i11] == ')' && cArr[i11 + 1] == ']' && cArr[i11 + 2] == '}' && cArr[i11 + 3] == '\'' && cArr[i11 + 4] == '\n') {
            this.pos = i11 + 5;
        }
    }

    private boolean fillBuffer(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.buffer;
        int i13 = this.lineStart;
        int i14 = this.pos;
        this.lineStart = i13 - i14;
        int i15 = this.limit;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.limit = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.f21702in;
            int i17 = this.limit;
            int read = reader.read(cArr, i17, cArr.length - i17);
            if (read == -1) {
                return false;
            }
            i11 = this.limit + read;
            this.limit = i11;
            if (this.lineNumber == 0 && (i12 = this.lineStart) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i12 + 1;
                i10++;
                continue;
            }
        } while (i11 < i10);
        return true;
    }

    private String getPath(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.stackSize;
            if (i10 < i11) {
                int i12 = this.stack[i10];
                switch (i12) {
                    case 1:
                    case 2:
                        int i13 = this.pathIndices[i10];
                        if (z10 && i13 > 0 && i10 == i11 - 1) {
                            i13--;
                        }
                        sb2.append('[');
                        sb2.append(i13);
                        sb2.append(']');
                        break;
                    case 3:
                    case 4:
                    case 5:
                        sb2.append('.');
                        String str = this.pathNames[i10];
                        if (str == null) {
                            break;
                        } else {
                            sb2.append(str);
                            break;
                        }
                    case 6:
                    case 7:
                    case 8:
                        break;
                    default:
                        throw new AssertionError("Unknown scope value: " + i12);
                }
                i10++;
            } else {
                return sb2.toString();
            }
        }
    }

    private boolean isLiteral(char c10) throws IOException {
        if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
            if (c10 != '#') {
                if (c10 != ',') {
                    if (c10 != '/' && c10 != '=') {
                        if (c10 != '{' && c10 != '}' && c10 != ':') {
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
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            checkLenient();
            return false;
        }
        return false;
    }

    private int nextNonWhitespace(boolean z10) throws IOException {
        char[] cArr = this.buffer;
        int i10 = this.pos;
        int i11 = this.limit;
        while (true) {
            if (i10 == i11) {
                this.pos = i10;
                if (!fillBuffer(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + locationString());
                }
                i10 = this.pos;
                i11 = this.limit;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.lineNumber++;
                this.lineStart = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.pos = i12;
                    if (i12 == i11) {
                        this.pos = i10;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c10;
                        }
                    }
                    checkLenient();
                    int i13 = this.pos;
                    char c11 = cArr[i13];
                    if (c11 != '*') {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.pos = i13 + 1;
                        skipToEndOfLine();
                        i10 = this.pos;
                        i11 = this.limit;
                    } else {
                        this.pos = i13 + 1;
                        if (skipTo("*/")) {
                            i10 = this.pos + 2;
                            i11 = this.limit;
                        } else {
                            throw syntaxError("Unterminated comment");
                        }
                    }
                } else if (c10 == '#') {
                    this.pos = i12;
                    checkLenient();
                    skipToEndOfLine();
                    i10 = this.pos;
                    i11 = this.limit;
                } else {
                    this.pos = i12;
                    return c10;
                }
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006c, code lost:
        if (r1 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006e, code lost:
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007c, code lost:
        r1.append(r0, r3, r2 - r3);
        r10.pos = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextQuotedValue(char r11) throws java.io.IOException {
        /*
            r10 = this;
            char[] r0 = r10.buffer
            r1 = 0
        L3:
            int r2 = r10.pos
            int r3 = r10.limit
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L6c
            int r7 = r2 + 1
            char r2 = r0[r2]
            com.google.gson.Strictness r8 = r10.strictness
            com.google.gson.Strictness r9 = com.google.gson.Strictness.STRICT
            if (r8 != r9) goto L24
            r8 = 32
            if (r2 < r8) goto L1d
            goto L24
        L1d:
            java.lang.String r11 = "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"
            com.google.gson.stream.MalformedJsonException r11 = r10.syntaxError(r11)
            throw r11
        L24:
            if (r2 != r11) goto L3a
            r10.pos = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L32
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r3, r7)
            return r11
        L32:
            r1.append(r0, r3, r7)
            java.lang.String r11 = r1.toString()
            return r11
        L3a:
            r8 = 92
            if (r2 != r8) goto L5f
            r10.pos = r7
            int r7 = r7 - r3
            int r2 = r7 + (-1)
            if (r1 != 0) goto L50
            int r7 = r7 * 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r4 = java.lang.Math.max(r7, r5)
            r1.<init>(r4)
        L50:
            r1.append(r0, r3, r2)
            char r2 = r10.readEscapeCharacter()
            r1.append(r2)
            int r2 = r10.pos
            int r3 = r10.limit
            goto L7
        L5f:
            r5 = 10
            if (r2 != r5) goto L6a
            int r2 = r10.lineNumber
            int r2 = r2 + r6
            r10.lineNumber = r2
            r10.lineStart = r7
        L6a:
            r2 = r7
            goto L9
        L6c:
            if (r1 != 0) goto L7c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L7c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r10.pos = r2
            boolean r2 = r10.fillBuffer(r6)
            if (r2 == 0) goto L8b
            goto L3
        L8b:
            java.lang.String r11 = "Unterminated string"
            com.google.gson.stream.MalformedJsonException r11 = r10.syntaxError(r11)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextQuotedValue(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        checkLenient();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextUnquotedValue() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.pos
            int r4 = r3 + r2
            int r5 = r6.limit
            if (r4 >= r5) goto L4e
            char[] r4 = r6.buffer
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
            r6.checkLenient()
            goto L5c
        L4e:
            char[] r3 = r6.buffer
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.fillBuffer(r3)
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
            char[] r3 = r6.buffer
            int r4 = r6.pos
            r0.append(r3, r4, r2)
            int r3 = r6.pos
            int r3 = r3 + r2
            r6.pos = r3
            r2 = 1
            boolean r2 = r6.fillBuffer(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.buffer
            int r3 = r6.pos
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.buffer
            int r3 = r6.pos
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.pos
            int r2 = r2 + r1
            r6.pos = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextUnquotedValue():java.lang.String");
    }

    private int peekKeyword() throws IOException {
        String str;
        String str2;
        int i10;
        boolean z10;
        char c10 = this.buffer[this.pos];
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
        if (this.strictness != Strictness.STRICT) {
            z10 = true;
        } else {
            z10 = false;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (this.pos + i11 >= this.limit && !fillBuffer(i11 + 1)) {
                return 0;
            }
            char c11 = this.buffer[this.pos + i11];
            if (c11 != str.charAt(i11) && (!z10 || c11 != str2.charAt(i11))) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
        if (isLiteral(r14) != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
        if (r9 != 2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
        if (r10 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
        if (r11 != Long.MIN_VALUE) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009d, code lost:
        if (r13 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
        if (r11 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a5, code lost:
        if (r13 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a7, code lost:
        if (r13 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00aa, code lost:
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ab, code lost:
        r18.peekedLong = r11;
        r18.pos += r8;
        r18.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b6, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b7, code lost:
        if (r9 == 2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ba, code lost:
        if (r9 == 4) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00bd, code lost:
        if (r9 != 7) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c0, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c2, code lost:
        r18.peekedNumberLength = r8;
        r18.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c8, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c9, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int peekNumber() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private void push(int i10) throws MalformedJsonException {
        int i11 = this.stackSize;
        if (i11 - 1 < this.nestingLimit) {
            int[] iArr = this.stack;
            if (i11 == iArr.length) {
                int i12 = i11 * 2;
                this.stack = Arrays.copyOf(iArr, i12);
                this.pathIndices = Arrays.copyOf(this.pathIndices, i12);
                this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i12);
            }
            int[] iArr2 = this.stack;
            int i13 = this.stackSize;
            this.stackSize = i13 + 1;
            iArr2[i13] = i10;
            return;
        }
        throw new MalformedJsonException("Nesting limit " + this.nestingLimit + " reached" + locationString());
    }

    private char readEscapeCharacter() throws IOException {
        int i10;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i11 = this.pos;
        int i12 = i11 + 1;
        this.pos = i12;
        char c10 = cArr[i11];
        if (c10 != '\n') {
            if (c10 != '\"') {
                if (c10 != '\'') {
                    if (c10 != '/' && c10 != '\\') {
                        if (c10 != 'b') {
                            if (c10 != 'f') {
                                if (c10 == 'n') {
                                    return '\n';
                                }
                                if (c10 != 'r') {
                                    if (c10 != 't') {
                                        if (c10 == 'u') {
                                            if (i11 + 5 > this.limit && !fillBuffer(4)) {
                                                throw syntaxError("Unterminated escape sequence");
                                            }
                                            int i13 = this.pos;
                                            int i14 = i13 + 4;
                                            int i15 = 0;
                                            while (i13 < i14) {
                                                char c11 = this.buffer[i13];
                                                int i16 = i15 << 4;
                                                if (c11 >= '0' && c11 <= '9') {
                                                    i10 = c11 - '0';
                                                } else if (c11 >= 'a' && c11 <= 'f') {
                                                    i10 = c11 - 'W';
                                                } else if (c11 >= 'A' && c11 <= 'F') {
                                                    i10 = c11 - '7';
                                                } else {
                                                    throw syntaxError("Malformed Unicode escape \\u" + new String(this.buffer, this.pos, 4));
                                                }
                                                i15 = i16 + i10;
                                                i13++;
                                            }
                                            this.pos += 4;
                                            return (char) i15;
                                        }
                                        throw syntaxError("Invalid escape sequence");
                                    }
                                    return '\t';
                                }
                                return '\r';
                            }
                            return '\f';
                        }
                        return '\b';
                    }
                }
            }
            return c10;
        } else if (this.strictness != Strictness.STRICT) {
            this.lineNumber++;
            this.lineStart = i12;
        } else {
            throw syntaxError("Cannot escape a newline character in strict mode");
        }
        if (this.strictness == Strictness.STRICT) {
            throw syntaxError("Invalid escaped character \"'\" in strict mode");
        }
        return c10;
    }

    private void skipQuotedValue(char c10) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i10 = this.pos;
            int i11 = this.limit;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.pos = i12;
                    return;
                } else if (c11 == '\\') {
                    this.pos = i12;
                    readEscapeCharacter();
                    i10 = this.pos;
                    i11 = this.limit;
                } else {
                    if (c11 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i12;
                    }
                    i10 = i12;
                }
            }
            this.pos = i10;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i10 = this.pos;
            if (cArr[i10] == '\n') {
                this.lineNumber++;
                this.lineStart = i10 + 1;
            } else {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.buffer[this.pos + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c10;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i10 = this.pos;
                int i11 = i10 + 1;
                this.pos = i11;
                c10 = cArr[i10];
                if (c10 == '\n') {
                    this.lineNumber++;
                    this.lineStart = i11;
                    return;
                }
            } else {
                return;
            }
        } while (c10 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
        checkLenient();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void skipUnquotedValue() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.pos
            int r2 = r1 + r0
            int r3 = r4.limit
            if (r2 >= r3) goto L51
            char[] r2 = r4.buffer
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.checkLenient()
        L4b:
            int r1 = r4.pos
            int r1 = r1 + r0
            r4.pos = r1
            return
        L51:
            int r1 = r1 + r0
            r4.pos = r1
            r0 = 1
            boolean r0 = r4.fillBuffer(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.skipUnquotedValue():void");
    }

    private MalformedJsonException syntaxError(String str) throws MalformedJsonException {
        throw new MalformedJsonException(str + locationString() + "\nSee " + TroubleshootingGuide.createUrl("malformed-json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IllegalStateException unexpectedTokenError(String str) throws IOException {
        String str2;
        if (peek() == JsonToken.NULL) {
            str2 = "adapter-not-null-safe";
        } else {
            str2 = "unexpected-json-structure";
        }
        return new IllegalStateException("Expected " + str + " but was " + peek() + locationString() + "\nSee " + TroubleshootingGuide.createUrl(str2));
    }

    public void beginArray() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError("BEGIN_ARRAY");
    }

    public void beginObject() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError("BEGIN_OBJECT");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f21702in.close();
    }

    int doPeek() throws IOException {
        int nextNonWhitespace;
        int[] iArr = this.stack;
        int i10 = this.stackSize;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 != 44) {
                if (nextNonWhitespace2 != 59) {
                    if (nextNonWhitespace2 == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    throw syntaxError("Unterminated array");
                }
                checkLenient();
            }
        } else if (i11 != 3 && i11 != 5) {
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int nextNonWhitespace3 = nextNonWhitespace(true);
                if (nextNonWhitespace3 != 58) {
                    if (nextNonWhitespace3 == 61) {
                        checkLenient();
                        if (this.pos < this.limit || fillBuffer(1)) {
                            char[] cArr = this.buffer;
                            int i12 = this.pos;
                            if (cArr[i12] == '>') {
                                this.pos = i12 + 1;
                            }
                        }
                    } else {
                        throw syntaxError("Expected ':'");
                    }
                }
            } else if (i11 == 6) {
                if (this.strictness == Strictness.LENIENT) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i11 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        } else {
            iArr[i10 - 1] = 4;
            if (i11 == 5 && (nextNonWhitespace = nextNonWhitespace(true)) != 44) {
                if (nextNonWhitespace != 59) {
                    if (nextNonWhitespace == 125) {
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError("Unterminated object");
                }
                checkLenient();
            }
            int nextNonWhitespace4 = nextNonWhitespace(true);
            if (nextNonWhitespace4 != 34) {
                if (nextNonWhitespace4 != 39) {
                    if (nextNonWhitespace4 != 125) {
                        checkLenient();
                        this.pos--;
                        if (isLiteral((char) nextNonWhitespace4)) {
                            this.peeked = 14;
                            return 14;
                        }
                        throw syntaxError("Expected name");
                    } else if (i11 != 5) {
                        this.peeked = 2;
                        return 2;
                    } else {
                        throw syntaxError("Expected name");
                    }
                }
                checkLenient();
                this.peeked = 12;
                return 12;
            }
            this.peeked = 13;
            return 13;
        }
        int nextNonWhitespace5 = nextNonWhitespace(true);
        if (nextNonWhitespace5 != 34) {
            if (nextNonWhitespace5 != 39) {
                if (nextNonWhitespace5 != 44 && nextNonWhitespace5 != 59) {
                    if (nextNonWhitespace5 != 91) {
                        if (nextNonWhitespace5 != 93) {
                            if (nextNonWhitespace5 != 123) {
                                this.pos--;
                                int peekKeyword = peekKeyword();
                                if (peekKeyword != 0) {
                                    return peekKeyword;
                                }
                                int peekNumber = peekNumber();
                                if (peekNumber != 0) {
                                    return peekNumber;
                                }
                                if (isLiteral(this.buffer[this.pos])) {
                                    checkLenient();
                                    this.peeked = 10;
                                    return 10;
                                }
                                throw syntaxError("Expected value");
                            }
                            this.peeked = 1;
                            return 1;
                        } else if (i11 == 1) {
                            this.peeked = 4;
                            return 4;
                        }
                    } else {
                        this.peeked = 3;
                        return 3;
                    }
                }
                if (i11 != 1 && i11 != 2) {
                    throw syntaxError("Unexpected value");
                }
                checkLenient();
                this.pos--;
                this.peeked = 7;
                return 7;
            }
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        this.peeked = 9;
        return 9;
    }

    public void endArray() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 4) {
            int i11 = this.stackSize;
            this.stackSize = i11 - 1;
            int[] iArr = this.pathIndices;
            int i12 = i11 - 2;
            iArr[i12] = iArr[i12] + 1;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError("END_ARRAY");
    }

    public void endObject() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 2) {
            int i11 = this.stackSize;
            int i12 = i11 - 1;
            this.stackSize = i12;
            this.pathNames[i12] = null;
            int[] iArr = this.pathIndices;
            int i13 = i11 - 2;
            iArr[i13] = iArr[i13] + 1;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError("END_OBJECT");
    }

    public final int getNestingLimit() {
        return this.nestingLimit;
    }

    public String getPreviousPath() {
        return getPath(true);
    }

    public final Strictness getStrictness() {
        return this.strictness;
    }

    public boolean hasNext() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 != 2 && i10 != 4 && i10 != 17) {
            return true;
        }
        return false;
    }

    public final boolean isLenient() {
        if (this.strictness == Strictness.LENIENT) {
            return true;
        }
        return false;
    }

    String locationString() {
        return " at line " + (this.lineNumber + 1) + " column " + ((this.pos - this.lineStart) + 1) + " path " + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        } else if (i10 == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i12 = this.stackSize - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        } else {
            throw unexpectedTokenError("a boolean");
        }
    }

    public double nextDouble() throws IOException {
        char c10;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i10 != 8 && i10 != 9) {
            if (i10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else if (i10 != 11) {
                throw unexpectedTokenError("a double");
            }
        } else {
            if (i10 == 8) {
                c10 = '\'';
            } else {
                c10 = '\"';
            }
            this.peekedString = nextQuotedValue(c10);
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.strictness != Strictness.LENIENT && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw syntaxError("JSON forbids NaN and infinities: " + parseDouble);
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return parseDouble;
    }

    public int nextInt() throws IOException {
        char c10;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            long j10 = this.peekedLong;
            int i11 = (int) j10;
            if (j10 == i11) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw unexpectedTokenError("an int");
        } else {
            if (i10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.peekedString = nextQuotedValue(c10);
            }
            try {
                int parseInt = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i13 = this.stackSize - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        int i14 = (int) parseDouble;
        if (i14 == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i15 = this.stackSize - 1;
            iArr3[i15] = iArr3[i15] + 1;
            return i14;
        }
        throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
    }

    public long nextLong() throws IOException {
        char c10;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (i10 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i10 != 8 && i10 != 9 && i10 != 10) {
            throw unexpectedTokenError("a long");
        } else {
            if (i10 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                if (i10 == 8) {
                    c10 = '\'';
                } else {
                    c10 = '\"';
                }
                this.peekedString = nextQuotedValue(c10);
            }
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j10 = (long) parseDouble;
        if (j10 == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i13 = this.stackSize - 1;
            iArr3[i13] = iArr3[i13] + 1;
            return j10;
        }
        throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
    }

    public String nextName() throws IOException {
        String nextQuotedValue;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 14) {
            nextQuotedValue = nextUnquotedValue();
        } else if (i10 == 12) {
            nextQuotedValue = nextQuotedValue('\'');
        } else if (i10 == 13) {
            nextQuotedValue = nextQuotedValue('\"');
        } else {
            throw unexpectedTokenError("a name");
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextQuotedValue;
        return nextQuotedValue;
    }

    public void nextNull() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw unexpectedTokenError("null");
    }

    public String nextString() throws IOException {
        String str;
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        if (i10 == 10) {
            str = nextUnquotedValue();
        } else if (i10 == 8) {
            str = nextQuotedValue('\'');
        } else if (i10 == 9) {
            str = nextQuotedValue('\"');
        } else if (i10 == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (i10 == 15) {
            str = Long.toString(this.peekedLong);
        } else if (i10 == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw unexpectedTokenError("a string");
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i11 = this.stackSize - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int i10 = this.peeked;
        if (i10 == 0) {
            i10 = doPeek();
        }
        switch (i10) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Deprecated
    public final void setLenient(boolean z10) {
        Strictness strictness;
        if (z10) {
            strictness = Strictness.LENIENT;
        } else {
            strictness = Strictness.LEGACY_STRICT;
        }
        setStrictness(strictness);
    }

    public final void setNestingLimit(int i10) {
        if (i10 >= 0) {
            this.nestingLimit = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid nesting limit: " + i10);
    }

    public final void setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.strictness = strictness;
    }

    public void skipValue() throws IOException {
        int i10 = 0;
        do {
            int i11 = this.peeked;
            if (i11 == 0) {
                i11 = doPeek();
            }
            switch (i11) {
                case 1:
                    push(3);
                    i10++;
                    break;
                case 2:
                    if (i10 == 0) {
                        this.pathNames[this.stackSize - 1] = null;
                    }
                    this.stackSize--;
                    i10--;
                    break;
                case 3:
                    push(1);
                    i10++;
                    break;
                case 4:
                    this.stackSize--;
                    i10--;
                    break;
                case 8:
                    skipQuotedValue('\'');
                    break;
                case 9:
                    skipQuotedValue('\"');
                    break;
                case 10:
                    skipUnquotedValue();
                    break;
                case 12:
                    skipQuotedValue('\'');
                    if (i10 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 13:
                    skipQuotedValue('\"');
                    if (i10 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 14:
                    skipUnquotedValue();
                    if (i10 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                        break;
                    }
                    break;
                case 16:
                    this.pos += this.peekedNumberLength;
                    break;
                case 17:
                    return;
            }
            this.peeked = 0;
        } while (i10 > 0);
        int[] iArr = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr[i12] = iArr[i12] + 1;
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }

    public String getPath() {
        return getPath(false);
    }
}
