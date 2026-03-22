package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import androidx.annotation.DrawableRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PainterResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PainterResources_androidKt {
    @NotNull
    private static final String errorMessage = "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG";

    private static final ImageBitmap loadImageBitmapResource(Resources resources, int i10) {
        return ImageResources_androidKt.imageResource(ImageBitmap.Companion, resources, i10);
    }

    @Composable
    private static final ImageVector loadVectorResource(Resources.Theme theme, Resources resources, int i10, Composer composer, int i11) {
        composer.startReplaceableGroup(2112503116);
        ImageVectorCache imageVectorCache = (ImageVectorCache) composer.consume(AndroidCompositionLocals_androidKt.getLocalImageVectorCache());
        ImageVectorCache.Key key = new ImageVectorCache.Key(theme, i10);
        ImageVectorCache.ImageVectorEntry imageVectorEntry = imageVectorCache.get(key);
        if (imageVectorEntry == null) {
            XmlResourceParser xml = resources.getXml(i10);
            Intrinsics.checkNotNullExpressionValue(xml, "res.getXml(id)");
            if (Intrinsics.areEqual(XmlVectorParser_androidKt.seekToStartTag(xml).getName(), "vector")) {
                imageVectorEntry = VectorResources_androidKt.loadVectorResourceInner(theme, resources, xml);
                imageVectorCache.set(key, imageVectorEntry);
            } else {
                throw new IllegalArgumentException(errorMessage);
            }
        }
        ImageVector imageVector = imageVectorEntry.getImageVector();
        composer.endReplaceableGroup();
        return imageVector;
    }

    @Composable
    @NotNull
    public static final Painter painterResource(@DrawableRes int i10, @Nullable Composer composer, int i11) {
        Painter bitmapPainter;
        composer.startReplaceableGroup(473971343);
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        Resources res = context.getResources();
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = new TypedValue();
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TypedValue typedValue = (TypedValue) rememberedValue;
        res.getValue(i10, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && StringsKt.h0(charSequence, ".xml", false, 2, null)) {
            composer.startReplaceableGroup(-738265321);
            Resources.Theme theme = context.getTheme();
            Intrinsics.checkNotNullExpressionValue(theme, "context.theme");
            Intrinsics.checkNotNullExpressionValue(res, "res");
            bitmapPainter = VectorPainterKt.rememberVectorPainter(loadVectorResource(theme, res, i10, composer, ((i11 << 6) & 896) | 72), composer, 0);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-738265196);
            Object valueOf = Integer.valueOf(i10);
            composer.startReplaceableGroup(511388516);
            boolean changed = composer.changed(valueOf) | composer.changed(charSequence);
            Object rememberedValue2 = composer.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                Intrinsics.checkNotNullExpressionValue(res, "res");
                rememberedValue2 = loadImageBitmapResource(res, i10);
                composer.updateRememberedValue(rememberedValue2);
            }
            composer.endReplaceableGroup();
            bitmapPainter = new BitmapPainter((ImageBitmap) rememberedValue2, 0L, 0L, 6, null);
            composer.endReplaceableGroup();
        }
        composer.endReplaceableGroup();
        return bitmapPainter;
    }
}
