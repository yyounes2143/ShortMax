package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTypefaceWrapper.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidTypefaceWrapper implements AndroidTypeface {
    @Nullable
    private final FontFamily fontFamily;
    @NotNull
    private final Typeface typeface;

    public AndroidTypefaceWrapper(@NotNull Typeface typeface) {
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        this.typeface = typeface;
    }

    @Override // androidx.compose.ui.text.font.Typeface
    @Nullable
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    @NotNull
    /* renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo3878getNativeTypefacePYhJU0U(@NotNull FontWeight fontWeight, int i10, int i11) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return this.typeface;
    }

    @NotNull
    public final Typeface getTypeface() {
        return this.typeface;
    }
}
