package androidx.compose.ui.text.intl;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformLocale.kt */
@Metadata
/* loaded from: classes.dex */
public interface PlatformLocaleDelegate {
    @NotNull
    List<PlatformLocale> getCurrent();

    @NotNull
    PlatformLocale parseLanguageTag(@NotNull String str);
}
