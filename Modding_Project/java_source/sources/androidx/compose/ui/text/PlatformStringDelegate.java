package androidx.compose.ui.text;

import androidx.compose.ui.text.intl.PlatformLocale;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: String.kt */
@Metadata
/* loaded from: classes.dex */
public interface PlatformStringDelegate {
    @NotNull
    String capitalize(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String decapitalize(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String toLowerCase(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String toUpperCase(@NotNull String str, @NotNull PlatformLocale platformLocale);
}
