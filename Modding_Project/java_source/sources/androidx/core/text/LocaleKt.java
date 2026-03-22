package androidx.core.text;

import android.text.TextUtils;
import java.util.Locale;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Locale.kt */
@Metadata
/* loaded from: classes.dex */
public final class LocaleKt {
    public static final int getLayoutDirection(@NotNull Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
