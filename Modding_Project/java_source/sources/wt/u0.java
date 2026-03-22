package wt;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringJsonLexer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n158#2:130\n158#2:131\n158#2:132\n158#2:133\n1863#3,2:134\n*S KotlinDebug\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n*L\n23#1:130\n38#1:131\n57#1:132\n73#1:133\n109#1:134,2\n*E\n"})
/* loaded from: classes8.dex */
public class u0 extends a {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f70353e;

    public u0(@NotNull String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f70353e = source;
    }

    @Override // wt.a
    @Nullable
    public String E(@NotNull String keyToMatch, boolean z10) {
        Intrinsics.checkNotNullParameter(keyToMatch, "keyToMatch");
        int i10 = this.f70272a;
        try {
            if (j() == 6 && Intrinsics.areEqual(G(z10), keyToMatch)) {
                t();
                if (j() == 5) {
                    return G(z10);
                }
            }
            return null;
        } finally {
            this.f70272a = i10;
            t();
        }
    }

    @Override // wt.a
    public int H(int i10) {
        if (i10 >= C().length()) {
            return -1;
        }
        return i10;
    }

    @Override // wt.a
    public int J() {
        char charAt;
        int i10 = this.f70272a;
        if (i10 == -1) {
            return i10;
        }
        String C = C();
        while (i10 < C.length() && ((charAt = C.charAt(i10)) == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t')) {
            i10++;
        }
        this.f70272a = i10;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wt.a
    @NotNull
    /* renamed from: R */
    public String C() {
        return this.f70353e;
    }

    @Override // wt.a
    public boolean e() {
        int i10 = this.f70272a;
        if (i10 == -1) {
            return false;
        }
        String C = C();
        while (i10 < C.length()) {
            char charAt = C.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.f70272a = i10;
                return D(charAt);
            }
            i10++;
        }
        this.f70272a = i10;
        return false;
    }

    @Override // wt.a
    @NotNull
    public String i() {
        l('\"');
        int i10 = this.f70272a;
        int p02 = StringsKt.p0(C(), '\"', i10, false, 4, null);
        if (p02 != -1) {
            for (int i11 = i10; i11 < p02; i11++) {
                if (C().charAt(i11) == '\\') {
                    return p(C(), this.f70272a, i11);
                }
            }
            this.f70272a = p02 + 1;
            String substring = C().substring(i10, p02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        q();
        y((byte) 1, false);
        throw new KotlinNothingValueException();
    }

    @Override // wt.a
    public byte j() {
        String C = C();
        int i10 = this.f70272a;
        while (i10 != -1 && i10 < C.length()) {
            int i11 = i10 + 1;
            char charAt = C.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.f70272a = i11;
                return b.a(charAt);
            }
            i10 = i11;
        }
        this.f70272a = C.length();
        return (byte) 10;
    }

    @Override // wt.a
    public void l(char c10) {
        if (this.f70272a == -1) {
            P(c10);
        }
        String C = C();
        int i10 = this.f70272a;
        while (i10 < C.length()) {
            int i11 = i10 + 1;
            char charAt = C.charAt(i10);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.f70272a = i11;
                if (charAt == c10) {
                    return;
                }
                P(c10);
            }
            i10 = i11;
        }
        this.f70272a = -1;
        P(c10);
    }
}
