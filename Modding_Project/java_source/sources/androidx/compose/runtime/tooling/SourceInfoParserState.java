package androidx.compose.runtime.tooling;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SourceInformation.kt */
@Metadata
/* loaded from: classes.dex */
final class SourceInfoParserState {
    @NotNull
    private final String data;

    /* renamed from: i  reason: collision with root package name */
    private int f1225i;

    public SourceInfoParserState(@NotNull String str) {
        this.data = str;
    }

    public static /* synthetic */ void advance$default(SourceInfoParserState sourceInfoParserState, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 1;
        }
        sourceInfoParserState.advance(i10);
    }

    public final void advance(int i10) {
        this.f1225i += i10;
    }

    public final boolean atEnd() {
        if (this.f1225i >= this.data.length()) {
            return true;
        }
        return false;
    }

    public final char current() {
        return this.data.charAt(this.f1225i);
    }

    public final void expect(char c10) {
        if (matches(c10)) {
            return;
        }
        throwParseError("expected " + c10);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String getData() {
        return this.data;
    }

    public final int getI() {
        return this.f1225i;
    }

    public final boolean matches(char c10) {
        if (this.f1225i < this.data.length() && this.data.charAt(this.f1225i) == c10) {
            return true;
        }
        return false;
    }

    public final void setI(int i10) {
        this.f1225i = i10;
    }

    public final void skipUntil(@NotNull String str) {
        while (this.f1225i < this.data.length() && !StringsKt.a0(str, this.data.charAt(this.f1225i), false, 2, null)) {
            this.f1225i++;
        }
    }

    public final int takeIntUntil(@NotNull String str) {
        Integer intOrNull = StringsKt.toIntOrNull(takeUntil(str));
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        throwParseError("expected int");
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String takeUntil(@NotNull String str) {
        int i10 = this.f1225i;
        skipUntil(str);
        int i11 = this.f1225i;
        if (i11 > i10) {
            String substring = this.data.substring(i10, i11);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return "";
    }

    @NotNull
    public final String takeUntilEnd() {
        String str = this.data;
        String substring = str.substring(this.f1225i, str.length());
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    @NotNull
    public final Void throwParseError(@NotNull String str) {
        int min = Math.min(this.f1225i, this.data.length());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error while parsing source information: ");
        sb2.append(str);
        sb2.append(" at ");
        String substring = this.data.substring(0, min);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        sb2.append(substring);
        sb2.append('|');
        String substring2 = this.data.substring(min);
        Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
        sb2.append(substring2);
        throw new ParseException(sb2.toString());
    }
}
