package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextStyleKt {

    /* compiled from: TextStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlatformTextStyle createPlatformTextStyleInternal(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (platformSpanStyle == null && platformParagraphStyle == null) {
            return null;
        }
        return AndroidTextStyle_androidKt.createPlatformTextStyle(platformSpanStyle, platformParagraphStyle);
    }

    @NotNull
    public static final TextStyle lerp(@NotNull TextStyle start, @NotNull TextStyle stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new TextStyle(SpanStyleKt.lerp(start.toSpanStyle(), stop.toSpanStyle(), f10), ParagraphStyleKt.lerp(start.toParagraphStyle(), stop.toParagraphStyle(), f10));
    }

    @NotNull
    public static final TextStyle resolveDefaults(@NotNull TextStyle style, @NotNull LayoutDirection direction) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new TextStyle(SpanStyleKt.resolveSpanStyleDefaults(style.getSpanStyle$ui_text_release()), ParagraphStyleKt.resolveParagraphStyleDefaults(style.getParagraphStyle$ui_text_release(), direction), style.getPlatformStyle());
    }

    /* renamed from: resolveTextDirection-Yj3eThk  reason: not valid java name */
    public static final int m3721resolveTextDirectionYj3eThk(@NotNull LayoutDirection layoutDirection, @Nullable TextDirection textDirection) {
        boolean m3966equalsimpl0;
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        TextDirection.Companion companion = TextDirection.Companion;
        int m3970getContents_7Xco = companion.m3970getContents_7Xco();
        if (textDirection == null) {
            m3966equalsimpl0 = false;
        } else {
            m3966equalsimpl0 = TextDirection.m3966equalsimpl0(textDirection.m3969unboximpl(), m3970getContents_7Xco);
        }
        if (m3966equalsimpl0) {
            int i10 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return companion.m3972getContentOrRtls_7Xco();
                }
                throw new NoWhenBranchMatchedException();
            }
            return companion.m3971getContentOrLtrs_7Xco();
        } else if (textDirection == null) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    return companion.m3974getRtls_7Xco();
                }
                throw new NoWhenBranchMatchedException();
            }
            return companion.m3973getLtrs_7Xco();
        } else {
            return textDirection.m3969unboximpl();
        }
    }
}
