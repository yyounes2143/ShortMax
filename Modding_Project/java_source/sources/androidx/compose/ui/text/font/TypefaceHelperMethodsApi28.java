package androidx.compose.ui.text.font;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFontUtils.android.kt */
@RequiresApi(28)
@Metadata
/* loaded from: classes.dex */
public final class TypefaceHelperMethodsApi28 {
    @NotNull
    public static final TypefaceHelperMethodsApi28 INSTANCE = new TypefaceHelperMethodsApi28();

    private TypefaceHelperMethodsApi28() {
    }

    @DoNotInline
    @RequiresApi(28)
    @NotNull
    public final android.graphics.Typeface create(@NotNull android.graphics.Typeface typeface, int i10, boolean z10) {
        android.graphics.Typeface create;
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        create = android.graphics.Typeface.create(typeface, i10, z10);
        Intrinsics.checkNotNullExpressionValue(create, "create(typeface, finalFontWeight, finalFontStyle)");
        return create;
    }
}
