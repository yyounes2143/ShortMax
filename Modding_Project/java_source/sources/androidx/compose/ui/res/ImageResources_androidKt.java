package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.DrawableRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImageResources_androidKt {
    @NotNull
    public static final ImageBitmap imageResource(@NotNull ImageBitmap.Companion companion, @NotNull Resources res, @DrawableRes int i10) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        Drawable drawable = res.getDrawable(i10, null);
        if (drawable != null) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Intrinsics.checkNotNullExpressionValue(bitmap, "res.getDrawable(id, null…as BitmapDrawable).bitmap");
            return AndroidImageBitmap_androidKt.asImageBitmap(bitmap);
        }
        throw new NullPointerException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
    }

    @Composable
    @NotNull
    public static final ImageBitmap imageResource(@NotNull ImageBitmap.Companion companion, @DrawableRes int i10, @Nullable Composer composer, int i11) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        composer.startReplaceableGroup(-304919470);
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion2 = Composer.Companion;
        if (rememberedValue == companion2.getEmpty()) {
            rememberedValue = new TypedValue();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TypedValue typedValue = (TypedValue) rememberedValue;
        context.getResources().getValue(i10, typedValue, true);
        CharSequence charSequence = typedValue.string;
        Intrinsics.checkNotNull(charSequence);
        String obj = charSequence.toString();
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(obj);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == companion2.getEmpty()) {
            Resources resources = context.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
            rememberedValue2 = imageResource(companion, resources, i10);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        ImageBitmap imageBitmap = (ImageBitmap) rememberedValue2;
        composer.endReplaceableGroup();
        return imageBitmap;
    }
}
