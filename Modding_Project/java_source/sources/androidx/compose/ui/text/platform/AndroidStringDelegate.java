package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.PlatformStringDelegate;
import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.PlatformLocale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidStringDelegate.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidStringDelegate implements PlatformStringDelegate {
    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String capitalize(@NotNull String string, @NotNull PlatformLocale locale) {
        String valueOf;
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (string.length() > 0) {
            StringBuilder sb2 = new StringBuilder();
            char charAt = string.charAt(0);
            if (Character.isLowerCase(charAt)) {
                valueOf = CharsKt.d(charAt, ((AndroidLocale) locale).getJavaLocale());
            } else {
                valueOf = String.valueOf(charAt);
            }
            sb2.append((Object) valueOf);
            String substring = string.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            sb2.append(substring);
            return sb2.toString();
        }
        return string;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String decapitalize(@NotNull String string, @NotNull PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (string.length() > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) CharsKt.c(string.charAt(0), ((AndroidLocale) locale).getJavaLocale()));
            String substring = string.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            sb2.append(substring);
            return sb2.toString();
        }
        return string;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String toLowerCase(@NotNull String string, @NotNull PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = string.toLowerCase(((AndroidLocale) locale).getJavaLocale());
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String toUpperCase(@NotNull String string, @NotNull PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = string.toUpperCase(((AndroidLocale) locale).getJavaLocale());
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }
}
