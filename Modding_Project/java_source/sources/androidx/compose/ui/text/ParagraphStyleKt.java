package androidx.compose.ui.text;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ParagraphStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();

    @Stable
    @NotNull
    public static final ParagraphStyle lerp(@NotNull ParagraphStyle start, @NotNull ParagraphStyle stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        TextAlign textAlign = (TextAlign) SpanStyleKt.lerpDiscrete(start.m3631getTextAlignbuA522U(), stop.m3631getTextAlignbuA522U(), f10);
        TextDirection textDirection = (TextDirection) SpanStyleKt.lerpDiscrete(start.m3632getTextDirectionmmuk1to(), stop.m3632getTextDirectionmmuk1to(), f10);
        long m3675lerpTextUnitInheritableC3pnCVY = SpanStyleKt.m3675lerpTextUnitInheritableC3pnCVY(start.m3630getLineHeightXSAIIZE(), stop.m3630getLineHeightXSAIIZE(), f10);
        TextIndent textIndent = start.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        TextIndent textIndent2 = stop.getTextIndent();
        if (textIndent2 == null) {
            textIndent2 = TextIndent.Companion.getNone();
        }
        return new ParagraphStyle(textAlign, textDirection, m3675lerpTextUnitInheritableC3pnCVY, TextIndentKt.lerp(textIndent, textIndent2, f10), lerpPlatformStyle(start.getPlatformStyle(), stop.getPlatformStyle(), f10), (LineHeightStyle) SpanStyleKt.lerpDiscrete(start.getLineHeightStyle(), stop.getLineHeightStyle(), f10), null);
    }

    private static final PlatformParagraphStyle lerpPlatformStyle(PlatformParagraphStyle platformParagraphStyle, PlatformParagraphStyle platformParagraphStyle2, float f10) {
        if (platformParagraphStyle == null && platformParagraphStyle2 == null) {
            return null;
        }
        if (platformParagraphStyle == null) {
            platformParagraphStyle = PlatformParagraphStyle.Companion.getDefault();
        }
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle2 = PlatformParagraphStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformParagraphStyle, platformParagraphStyle2, f10);
    }

    @NotNull
    public static final ParagraphStyle resolveParagraphStyleDefaults(@NotNull ParagraphStyle style, @NotNull LayoutDirection direction) {
        int m3962getStarte0LSkKk;
        long m3630getLineHeightXSAIIZE;
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(direction, "direction");
        TextAlign m3631getTextAlignbuA522U = style.m3631getTextAlignbuA522U();
        if (m3631getTextAlignbuA522U != null) {
            m3962getStarte0LSkKk = m3631getTextAlignbuA522U.m3956unboximpl();
        } else {
            m3962getStarte0LSkKk = TextAlign.Companion.m3962getStarte0LSkKk();
        }
        TextAlign m3950boximpl = TextAlign.m3950boximpl(m3962getStarte0LSkKk);
        TextDirection m3963boximpl = TextDirection.m3963boximpl(TextStyleKt.m3721resolveTextDirectionYj3eThk(direction, style.m3632getTextDirectionmmuk1to()));
        if (TextUnitKt.m4248isUnspecifiedR2X_6o(style.m3630getLineHeightXSAIIZE())) {
            m3630getLineHeightXSAIIZE = DefaultLineHeight;
        } else {
            m3630getLineHeightXSAIIZE = style.m3630getLineHeightXSAIIZE();
        }
        TextIndent textIndent = style.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        return new ParagraphStyle(m3950boximpl, m3963boximpl, m3630getLineHeightXSAIIZE, textIndent, style.getPlatformStyle(), style.getLineHeightStyle(), null);
    }
}
