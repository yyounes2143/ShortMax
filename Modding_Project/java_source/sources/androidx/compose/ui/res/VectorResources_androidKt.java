package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorParser;
import androidx.compose.ui.graphics.vector.compat.XmlVectorParser_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: VectorResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorResources_androidKt {
    @NotNull
    public static final ImageVectorCache.ImageVectorEntry loadVectorResourceInner(@Nullable Resources.Theme theme, @NotNull Resources res, @NotNull XmlResourceParser parser) throws XmlPullParserException {
        Intrinsics.checkNotNullParameter(res, "res");
        Intrinsics.checkNotNullParameter(parser, "parser");
        AttributeSet attrs = Xml.asAttributeSet(parser);
        AndroidVectorParser androidVectorParser = new AndroidVectorParser(parser, 0, 2, null);
        Intrinsics.checkNotNullExpressionValue(attrs, "attrs");
        ImageVector.Builder createVectorImageBuilder = XmlVectorParser_androidKt.createVectorImageBuilder(androidVectorParser, res, theme, attrs);
        int i10 = 0;
        while (!XmlVectorParser_androidKt.isAtEnd(parser)) {
            i10 = XmlVectorParser_androidKt.parseCurrentVectorNode(androidVectorParser, res, attrs, theme, createVectorImageBuilder, i10);
            parser.next();
        }
        return new ImageVectorCache.ImageVectorEntry(createVectorImageBuilder.build(), androidVectorParser.getConfig());
    }

    public static /* synthetic */ ImageVectorCache.ImageVectorEntry loadVectorResourceInner$default(Resources.Theme theme, Resources resources, XmlResourceParser xmlResourceParser, int i10, Object obj) throws XmlPullParserException {
        if ((i10 & 1) != 0) {
            theme = null;
        }
        return loadVectorResourceInner(theme, resources, xmlResourceParser);
    }

    @Composable
    @NotNull
    public static final ImageVector vectorResource(@NotNull ImageVector.Companion companion, @DrawableRes int i10, @Nullable Composer composer, int i11) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        composer.startReplaceableGroup(44534090);
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        Resources res = context.getResources();
        Resources.Theme theme = context.getTheme();
        Integer valueOf = Integer.valueOf(i10);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(valueOf);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            Intrinsics.checkNotNullExpressionValue(res, "res");
            rememberedValue = vectorResource(companion, theme, res, i10);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ImageVector imageVector = (ImageVector) rememberedValue;
        composer.endReplaceableGroup();
        return imageVector;
    }

    public static /* synthetic */ ImageVector vectorResource$default(ImageVector.Companion companion, Resources.Theme theme, Resources resources, int i10, int i11, Object obj) throws XmlPullParserException {
        if ((i11 & 1) != 0) {
            theme = null;
        }
        return vectorResource(companion, theme, resources, i10);
    }

    @NotNull
    public static final ImageVector vectorResource(@NotNull ImageVector.Companion companion, @Nullable Resources.Theme theme, @NotNull Resources res, int i10) throws XmlPullParserException {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(res, "res");
        XmlResourceParser xml = res.getXml(i10);
        Intrinsics.checkNotNullExpressionValue(xml, "");
        XmlVectorParser_androidKt.seekToStartTag(xml);
        Unit unit = Unit.f60915a;
        Intrinsics.checkNotNullExpressionValue(xml, "res.getXml(resId).apply { seekToStartTag() }");
        return loadVectorResourceInner(theme, res, xml).getImageVector();
    }
}
