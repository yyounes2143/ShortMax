package wt;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommentLexers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommentLexers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/StringJsonLexerWithComments\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,219:1\n158#2:220\n*S KotlinDebug\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/StringJsonLexerWithComments\n*L\n66#1:220\n*E\n"})
/* loaded from: classes8.dex */
public final class w0 extends u0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(@NotNull String source) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
    }

    @Override // wt.a
    public byte F() {
        String C = C();
        int J = J();
        if (J < C.length() && J != -1) {
            this.f70272a = J;
            return b.a(C.charAt(J));
        }
        return (byte) 10;
    }

    @Override // wt.u0, wt.a
    public int J() {
        int i10;
        int i11 = this.f70272a;
        if (i11 == -1) {
            return i11;
        }
        String C = C();
        while (i11 < C.length()) {
            char charAt = C.charAt(i11);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                if (charAt != '/' || (i10 = i11 + 1) >= C.length()) {
                    break;
                }
                char charAt2 = C.charAt(i10);
                if (charAt2 != '*') {
                    if (charAt2 != '/') {
                        break;
                    }
                    i11 = StringsKt.p0(C, '\n', i11 + 2, false, 4, null);
                    if (i11 == -1) {
                        i11 = C.length();
                    }
                } else {
                    int q02 = StringsKt.q0(C, "*/", i11 + 2, false, 4, null);
                    if (q02 != -1) {
                        i11 = q02 + 2;
                    } else {
                        this.f70272a = C.length();
                        a.x(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                }
            }
            i11++;
        }
        this.f70272a = i11;
        return i11;
    }

    @Override // wt.u0, wt.a
    public boolean e() {
        int J = J();
        if (J < C().length() && J != -1) {
            return D(C().charAt(J));
        }
        return false;
    }

    @Override // wt.u0, wt.a
    public byte j() {
        String C = C();
        int J = J();
        if (J < C.length() && J != -1) {
            this.f70272a = J + 1;
            return b.a(C.charAt(J));
        }
        return (byte) 10;
    }

    @Override // wt.u0, wt.a
    public void l(char c10) {
        String C = C();
        int J = J();
        if (J >= C.length() || J == -1) {
            this.f70272a = -1;
            P(c10);
        }
        char charAt = C.charAt(J);
        this.f70272a = J + 1;
        if (charAt == c10) {
            return;
        }
        P(c10);
    }
}
