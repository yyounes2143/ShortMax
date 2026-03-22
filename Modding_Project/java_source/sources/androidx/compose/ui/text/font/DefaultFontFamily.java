package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontFamily.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class DefaultFontFamily extends SystemFontFamily {
    public DefaultFontFamily() {
        super(null);
    }

    @NotNull
    public String toString() {
        return "FontFamily.Default";
    }
}
