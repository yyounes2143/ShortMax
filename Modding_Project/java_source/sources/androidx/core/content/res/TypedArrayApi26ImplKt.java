package androidx.core.content.res;

import android.content.res.TypedArray;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleableRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypedArray.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class TypedArrayApi26ImplKt {
    @NotNull
    public static final TypedArrayApi26ImplKt INSTANCE = new TypedArrayApi26ImplKt();

    private TypedArrayApi26ImplKt() {
    }

    @DoNotInline
    @NotNull
    public static final Typeface getFont(@NotNull TypedArray typedArray, @StyleableRes int i10) {
        Typeface font = typedArray.getFont(i10);
        Intrinsics.checkNotNull(font);
        return font;
    }
}
