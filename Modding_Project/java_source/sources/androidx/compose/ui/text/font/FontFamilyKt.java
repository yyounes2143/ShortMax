package androidx.compose.ui.text.font;

import androidx.compose.runtime.Stable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontFamily.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontFamilyKt {
    @Stable
    @NotNull
    public static final FontFamily FontFamily(@NotNull List<? extends Font> fonts) {
        Intrinsics.checkNotNullParameter(fonts, "fonts");
        return new FontListFontFamily(fonts);
    }

    @Stable
    @NotNull
    public static final FontFamily FontFamily(@NotNull Font... fonts) {
        Intrinsics.checkNotNullParameter(fonts, "fonts");
        return new FontListFontFamily(n.g(fonts));
    }

    @Stable
    @NotNull
    public static final FontFamily FontFamily(@NotNull Typeface typeface) {
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        return new LoadedFontFamily(typeface);
    }
}
