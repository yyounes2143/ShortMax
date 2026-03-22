package androidx.compose.ui.text.font;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformTypefaces.kt */
@Metadata
/* loaded from: classes.dex */
public interface PlatformTypefaces {
    @NotNull
    /* renamed from: createDefault-FO1MlWM  reason: not valid java name */
    android.graphics.Typeface mo3797createDefaultFO1MlWM(@NotNull FontWeight fontWeight, int i10);

    @NotNull
    /* renamed from: createNamed-RetOiIg  reason: not valid java name */
    android.graphics.Typeface mo3798createNamedRetOiIg(@NotNull GenericFontFamily genericFontFamily, @NotNull FontWeight fontWeight, int i10);

    @Nullable
    /* renamed from: optionalOnDeviceFontFamilyByName-RetOiIg  reason: not valid java name */
    android.graphics.Typeface mo3799optionalOnDeviceFontFamilyByNameRetOiIg(@NotNull String str, @NotNull FontWeight fontWeight, int i10);
}
