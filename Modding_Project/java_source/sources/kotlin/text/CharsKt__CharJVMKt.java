package kotlin.text;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CharJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class CharsKt__CharJVMKt {
    public static final int a(char c10, int i10) {
        return Character.digit((int) c10, i10);
    }

    public static boolean b(char c10) {
        if (!Character.isWhitespace(c10) && !Character.isSpaceChar(c10)) {
            return false;
        }
        return true;
    }

    @NotNull
    public static String c(char c10, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String valueOf = String.valueOf(c10);
        Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = valueOf.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public static int checkRadix(int i10) {
        if (2 <= i10 && i10 < 37) {
            return i10;
        }
        throw new IllegalArgumentException("radix " + i10 + " was not in valid range " + new IntRange(2, 36));
    }

    @NotNull
    public static String d(char c10, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String e10 = e(c10, locale);
        if (e10.length() > 1) {
            if (c10 != 329) {
                char charAt = e10.charAt(0);
                Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type java.lang.String");
                String substring = e10.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = substring.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                return charAt + lowerCase;
            }
            return e10;
        }
        String valueOf = String.valueOf(c10);
        Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        if (!Intrinsics.areEqual(e10, upperCase)) {
            return e10;
        }
        return String.valueOf(Character.toTitleCase(c10));
    }

    @NotNull
    public static final String e(char c10, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String valueOf = String.valueOf(c10);
        Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
