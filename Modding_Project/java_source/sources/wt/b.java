package wt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AbstractJsonLexer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    public static final byte a(char c10) {
        if (c10 < '~') {
            return l.f70317c[c10];
        }
        return (byte) 0;
    }

    public static final char b(int i10) {
        if (i10 < 117) {
            return l.f70316b[i10];
        }
        return (char) 0;
    }

    @NotNull
    public static final String c(byte b10) {
        if (b10 == 1) {
            return "quotation mark '\"'";
        }
        if (b10 == 2) {
            return "string escape sequence '\\'";
        }
        if (b10 == 4) {
            return "comma ','";
        }
        if (b10 == 5) {
            return "colon ':'";
        }
        if (b10 == 6) {
            return "start of the object '{'";
        }
        if (b10 == 7) {
            return "end of the object '}'";
        }
        if (b10 == 8) {
            return "start of the array '['";
        }
        if (b10 == 9) {
            return "end of the array ']'";
        }
        if (b10 == 10) {
            return "end of the input";
        }
        if (b10 == Byte.MAX_VALUE) {
            return "invalid token";
        }
        return "valid token";
    }
}
