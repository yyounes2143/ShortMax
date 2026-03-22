package androidx.compose.ui.text.platform.extensions;

import androidx.compose.ui.text.intl.AndroidLocale;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocaleExtensions.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class LocaleExtensions_androidKt {
    @NotNull
    public static final Locale toJavaLocale(@NotNull androidx.compose.ui.text.intl.Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "<this>");
        return ((AndroidLocale) locale.getPlatformLocale$ui_text_release()).getJavaLocale();
    }
}
