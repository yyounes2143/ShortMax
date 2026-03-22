package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.FontWeight;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFontUtils.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFontUtils_androidKt {
    @NotNull
    public static final FontWeight getAndroidBold(@NotNull FontWeight.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return companion.getW600();
    }

    public static final int getAndroidTypefaceStyle(boolean z10, boolean z11) {
        if (z11 && z10) {
            return 3;
        }
        if (z10) {
            return 1;
        }
        if (z11) {
            return 2;
        }
        return 0;
    }

    /* renamed from: getAndroidTypefaceStyle-FO1MlWM  reason: not valid java name */
    public static final int m3733getAndroidTypefaceStyleFO1MlWM(@NotNull FontWeight fontWeight, int i10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        if (fontWeight.compareTo(getAndroidBold(FontWeight.Companion)) >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return getAndroidTypefaceStyle(z10, FontStyle.m3775equalsimpl0(i10, FontStyle.Companion.m3779getItalic_LCdwA()));
    }
}
