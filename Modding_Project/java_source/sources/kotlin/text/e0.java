package kotlin.text;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: _OneToManyTitlecaseMappings.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e0 {
    @NotNull
    public static final String a(char c10) {
        String valueOf = String.valueOf(c10);
        Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = valueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        if (upperCase.length() > 1) {
            if (c10 != 329) {
                char charAt = upperCase.charAt(0);
                Intrinsics.checkNotNull(upperCase, "null cannot be cast to non-null type java.lang.String");
                String substring = upperCase.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = substring.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                return charAt + lowerCase;
            }
            return upperCase;
        }
        return String.valueOf(Character.toTitleCase(c10));
    }
}
