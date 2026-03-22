package wt;

import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractJsonLexer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n739#1,5:748\n1#2:753\n*S KotlinDebug\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n216#1:748,5\n*E\n"})
/* loaded from: classes8.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f70272a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f70274c;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final e0 f70273b = new e0();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f70275d = new StringBuilder();

    private final int B(CharSequence charSequence, int i10) {
        char charAt = charSequence.charAt(i10);
        if ('0' <= charAt && charAt < ':') {
            return charAt - '0';
        }
        if ('a' <= charAt && charAt < 'g') {
            return charAt - 'W';
        }
        if ('A' <= charAt && charAt < 'G') {
            return charAt - '7';
        }
        x(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final String L() {
        String str = this.f70274c;
        Intrinsics.checkNotNull(str);
        this.f70274c = null;
        return str;
    }

    public static /* synthetic */ boolean O(a aVar, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            return aVar.N(z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryConsumeNull");
    }

    private final boolean Q() {
        if (C().charAt(this.f70272a - 1) != '\"') {
            return true;
        }
        return false;
    }

    private final int a(int i10) {
        int H = H(i10);
        if (H != -1) {
            int i11 = H + 1;
            char charAt = C().charAt(H);
            if (charAt == 'u') {
                return c(C(), i11);
            }
            char b10 = b.b(charAt);
            if (b10 != 0) {
                this.f70275d.append(b10);
                return i11;
            }
            x(this, "Invalid escaped char '" + charAt + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        x(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int b(int i10, int i11) {
        d(i10, i11);
        return a(i11 + 1);
    }

    private final int c(CharSequence charSequence, int i10) {
        int i11 = i10 + 4;
        if (i11 >= charSequence.length()) {
            this.f70272a = i10;
            u();
            if (this.f70272a + 4 < charSequence.length()) {
                return c(charSequence, this.f70272a);
            }
            x(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        this.f70275d.append((char) ((B(charSequence, i10) << 12) + (B(charSequence, i10 + 1) << 8) + (B(charSequence, i10 + 2) << 4) + B(charSequence, i10 + 3)));
        return i11;
    }

    private final boolean f(int i10) {
        int H = H(i10);
        if (H < C().length() && H != -1) {
            int i11 = H + 1;
            int charAt = C().charAt(H) | ' ';
            if (charAt != 102) {
                if (charAt == 116) {
                    h("rue", i11);
                    return true;
                }
                x(this, "Expected valid boolean literal prefix, but had '" + q() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            h("alse", i11);
            return false;
        }
        x(this, "EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final void h(String str, int i10) {
        if (C().length() - i10 >= str.length()) {
            int length = str.length();
            for (int i11 = 0; i11 < length; i11++) {
                if (str.charAt(i11) != (C().charAt(i10 + i11) | ' ')) {
                    x(this, "Expected valid boolean literal prefix, but had '" + q() + '\'', 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            }
            this.f70272a = i10 + str.length();
            return;
        }
        x(this, "Unexpected end of boolean literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private static final double n(long j10, boolean z10) {
        if (!z10) {
            return Math.pow(10.0d, -j10);
        }
        if (z10) {
            return Math.pow(10.0d, j10);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String s(int i10, int i11) {
        d(i10, i11);
        String sb2 = this.f70275d.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        this.f70275d.setLength(0);
        return sb2;
    }

    public static /* synthetic */ Void x(a aVar, String str, int i10, String str2, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = aVar.f70272a;
            }
            if ((i11 & 4) != 0) {
                str2 = "";
            }
            return aVar.w(str, i10, str2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    public static /* synthetic */ Void z(a aVar, byte b10, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return aVar.y(b10, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    public final void A(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int y02 = StringsKt.y0(K(0, this.f70272a), key, 0, false, 6, null);
        w("Encountered an unknown key '" + key + '\'', y02, "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }

    @NotNull
    protected abstract CharSequence C();

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean D(char c10) {
        if (c10 != ',' && c10 != ':' && c10 != ']' && c10 != '}') {
            return true;
        }
        return false;
    }

    @Nullable
    public abstract String E(@NotNull String str, boolean z10);

    public byte F() {
        CharSequence C = C();
        int i10 = this.f70272a;
        while (true) {
            int H = H(i10);
            if (H != -1) {
                char charAt = C.charAt(H);
                if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                    this.f70272a = H;
                    return b.a(charAt);
                }
                i10 = H + 1;
            } else {
                this.f70272a = H;
                return (byte) 10;
            }
        }
    }

    @Nullable
    public final String G(boolean z10) {
        String o10;
        byte F = F();
        if (z10) {
            if (F != 1 && F != 0) {
                return null;
            }
            o10 = q();
        } else if (F != 1) {
            return null;
        } else {
            o10 = o();
        }
        this.f70274c = o10;
        return o10;
    }

    public abstract int H(int i10);

    public final void I(boolean z10) {
        ArrayList arrayList = new ArrayList();
        byte F = F();
        if (F != 8 && F != 6) {
            q();
            return;
        }
        while (true) {
            byte F2 = F();
            if (F2 == 1) {
                if (z10) {
                    q();
                } else {
                    i();
                }
            } else {
                if (F2 != 8 && F2 != 6) {
                    if (F2 == 9) {
                        if (((Number) CollectionsKt.C0(arrayList)).byteValue() == 8) {
                            CollectionsKt.R(arrayList);
                        } else {
                            int i10 = this.f70272a;
                            throw b0.f(i10, "found ] instead of } at path: " + this.f70273b, C());
                        }
                    } else if (F2 == 7) {
                        if (((Number) CollectionsKt.C0(arrayList)).byteValue() == 6) {
                            CollectionsKt.R(arrayList);
                        } else {
                            int i11 = this.f70272a;
                            throw b0.f(i11, "found } instead of ] at path: " + this.f70273b, C());
                        }
                    } else if (F2 == 10) {
                        x(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    arrayList.add(Byte.valueOf(F2));
                }
                j();
                if (arrayList.size() == 0) {
                    return;
                }
            }
        }
    }

    public abstract int J();

    @NotNull
    public String K(int i10, int i11) {
        return C().subSequence(i10, i11).toString();
    }

    public final boolean M() {
        int J = J();
        CharSequence C = C();
        if (J >= C.length() || J == -1 || C.charAt(J) != ',') {
            return false;
        }
        this.f70272a++;
        return true;
    }

    public final boolean N(boolean z10) {
        int H = H(J());
        int length = C().length() - H;
        if (length < 4 || H == -1) {
            return false;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if ("null".charAt(i10) != C().charAt(H + i10)) {
                return false;
            }
        }
        if (length > 4 && b.a(C().charAt(H + 4)) == 0) {
            return false;
        }
        if (z10) {
            this.f70272a = H + 4;
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P(char c10) {
        int i10 = this.f70272a;
        if (i10 > 0 && c10 == '\"') {
            try {
                this.f70272a = i10 - 1;
                String q10 = q();
                this.f70272a = i10;
                if (Intrinsics.areEqual(q10, "null")) {
                    w("Expected string literal but 'null' literal was found", this.f70272a - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw new KotlinNothingValueException();
                }
            } catch (Throwable th2) {
                this.f70272a = i10;
                throw th2;
            }
        }
        z(this, b.a(c10), false, 2, null);
        throw new KotlinNothingValueException();
    }

    protected void d(int i10, int i11) {
        this.f70275d.append(C(), i10, i11);
    }

    public abstract boolean e();

    public final boolean g() {
        boolean z10;
        int J = J();
        if (J != C().length()) {
            if (C().charAt(J) == '\"') {
                J++;
                z10 = true;
            } else {
                z10 = false;
            }
            boolean f10 = f(J);
            if (z10) {
                if (this.f70272a != C().length()) {
                    if (C().charAt(this.f70272a) == '\"') {
                        this.f70272a++;
                    } else {
                        x(this, "Expected closing quotation mark", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    x(this, "EOF", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            }
            return f10;
        }
        x(this, "EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public abstract String i();

    public abstract byte j();

    public final byte k(byte b10) {
        byte j10 = j();
        if (j10 == b10) {
            return j10;
        }
        z(this, b10, false, 2, null);
        throw new KotlinNothingValueException();
    }

    public abstract void l(char c10);

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f6, code lost:
        x(r17, "Expected numeric literal", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0206, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0142, code lost:
        if (r5 == r0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0144, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0146, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0147, code lost:
        if (r0 == r5) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0149, code lost:
        if (r10 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014d, code lost:
        if (r0 == (r5 - 1)) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014f, code lost:
        if (r1 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0151, code lost:
        if (r3 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015d, code lost:
        if (C().charAt(r5) != '\"') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x015f, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0162, code lost:
        x(r17, "Expected closing quotation mark", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0172, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0173, code lost:
        x(r17, "EOF", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0183, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0184, code lost:
        r17.f70272a = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0186, code lost:
        if (r9 == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0188, code lost:
        r0 = r11 * n(r13, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0192, code lost:
        if (r0 > 9.223372036854776E18d) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0198, code lost:
        if (r0 < (-9.223372036854776E18d)) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01a0, code lost:
        if (java.lang.Math.floor(r0) != r0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a2, code lost:
        r11 = (long) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a4, code lost:
        x(r17, "Can't convert " + r0 + " to Long", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c8, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c9, code lost:
        x(r17, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d9, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
        if (r10 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e1, code lost:
        if (r11 == Long.MIN_VALUE) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e4, code lost:
        return -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e5, code lost:
        x(r17, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f5, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m() {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wt.a.m():long");
    }

    @NotNull
    public final String o() {
        if (this.f70274c != null) {
            return L();
        }
        return i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String p(@NotNull CharSequence source, int i10, int i11) {
        String s10;
        int H;
        Intrinsics.checkNotNullParameter(source, "source");
        char charAt = source.charAt(i11);
        boolean z10 = false;
        while (charAt != '\"') {
            if (charAt == '\\') {
                H = H(b(i10, i11));
                if (H == -1) {
                    x(this, "Unexpected EOF", H, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                i11++;
                if (i11 >= source.length()) {
                    d(i10, i11);
                    H = H(i11);
                    if (H == -1) {
                        x(this, "Unexpected EOF", H, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    continue;
                    charAt = source.charAt(i11);
                }
            }
            z10 = true;
            i10 = H;
            i11 = i10;
            charAt = source.charAt(i11);
        }
        if (!z10) {
            s10 = K(i10, i11);
        } else {
            s10 = s(i10, i11);
        }
        this.f70272a = i11 + 1;
        return s10;
    }

    @NotNull
    public final String q() {
        String s10;
        if (this.f70274c != null) {
            return L();
        }
        int J = J();
        if (J < C().length() && J != -1) {
            byte a10 = b.a(C().charAt(J));
            if (a10 == 1) {
                return o();
            }
            if (a10 == 0) {
                boolean z10 = false;
                while (b.a(C().charAt(J)) == 0) {
                    J++;
                    if (J >= C().length()) {
                        d(this.f70272a, J);
                        int H = H(J);
                        if (H == -1) {
                            this.f70272a = J;
                            return s(0, 0);
                        }
                        J = H;
                        z10 = true;
                    }
                }
                if (!z10) {
                    s10 = K(this.f70272a, J);
                } else {
                    s10 = s(this.f70272a, J);
                }
                this.f70272a = J;
                return s10;
            }
            x(this, "Expected beginning of the string, but got " + C().charAt(J), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        x(this, "EOF", J, null, 4, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String r() {
        String q10 = q();
        if (Intrinsics.areEqual(q10, "null") && Q()) {
            x(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return q10;
    }

    public final void t() {
        this.f70274c = null;
    }

    @NotNull
    public String toString() {
        return "JsonReader(source='" + ((Object) C()) + "', currentPosition=" + this.f70272a + ')';
    }

    public final void v() {
        if (j() == 10) {
            return;
        }
        x(this, "Expected EOF after parsing, but had " + C().charAt(this.f70272a - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final Void w(@NotNull String message, int i10, @NotNull String hint) {
        String str;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(hint, "hint");
        if (hint.length() == 0) {
            str = "";
        } else {
            str = '\n' + hint;
        }
        throw b0.f(i10, message + " at path: " + this.f70273b.a() + str, C());
    }

    @NotNull
    public final Void y(byte b10, boolean z10) {
        int i10;
        String str;
        String c10 = b.c(b10);
        if (z10) {
            i10 = this.f70272a - 1;
        } else {
            i10 = this.f70272a;
        }
        int i11 = i10;
        if (this.f70272a != C().length() && i11 >= 0) {
            str = String.valueOf(C().charAt(i11));
        } else {
            str = "EOF";
        }
        x(this, "Expected " + c10 + ", but had '" + str + "' instead", i11, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public void u() {
    }
}
