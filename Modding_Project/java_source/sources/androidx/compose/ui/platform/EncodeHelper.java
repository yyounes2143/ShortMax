package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidClipboardManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class EncodeHelper {
    @NotNull
    private Parcel parcel;

    public EncodeHelper() {
        Parcel obtain = Parcel.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        this.parcel = obtain;
    }

    public final void encode(@NotNull SpanStyle spanStyle) {
        Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
        long m3670getColor0d7_KjU = spanStyle.m3670getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m1843equalsimpl0(m3670getColor0d7_KjU, companion.m1878getUnspecified0d7_KjU())) {
            encode((byte) 1);
            m3544encode8_81llA(spanStyle.m3670getColor0d7_KjU());
        }
        long m3671getFontSizeXSAIIZE = spanStyle.m3671getFontSizeXSAIIZE();
        TextUnit.Companion companion2 = TextUnit.Companion;
        if (!TextUnit.m4227equalsimpl0(m3671getFontSizeXSAIIZE, companion2.m4241getUnspecifiedXSAIIZE())) {
            encode((byte) 2);
            m3541encodeR2X_6o(spanStyle.m3671getFontSizeXSAIIZE());
        }
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight != null) {
            encode((byte) 3);
            encode(fontWeight);
        }
        FontStyle m3672getFontStyle4Lr2A7w = spanStyle.m3672getFontStyle4Lr2A7w();
        if (m3672getFontStyle4Lr2A7w != null) {
            int m3778unboximpl = m3672getFontStyle4Lr2A7w.m3778unboximpl();
            encode((byte) 4);
            m3546encodenzbMABs(m3778unboximpl);
        }
        FontSynthesis m3673getFontSynthesisZQGJjVo = spanStyle.m3673getFontSynthesisZQGJjVo();
        if (m3673getFontSynthesisZQGJjVo != null) {
            int m3789unboximpl = m3673getFontSynthesisZQGJjVo.m3789unboximpl();
            encode((byte) 5);
            m3543encode6p3vJLY(m3789unboximpl);
        }
        String fontFeatureSettings = spanStyle.getFontFeatureSettings();
        if (fontFeatureSettings != null) {
            encode((byte) 6);
            encode(fontFeatureSettings);
        }
        if (!TextUnit.m4227equalsimpl0(spanStyle.m3674getLetterSpacingXSAIIZE(), companion2.m4241getUnspecifiedXSAIIZE())) {
            encode((byte) 7);
            m3541encodeR2X_6o(spanStyle.m3674getLetterSpacingXSAIIZE());
        }
        BaselineShift m3669getBaselineShift5SSeXJ0 = spanStyle.m3669getBaselineShift5SSeXJ0();
        if (m3669getBaselineShift5SSeXJ0 != null) {
            float m3912unboximpl = m3669getBaselineShift5SSeXJ0.m3912unboximpl();
            encode((byte) 8);
            m3542encode4Dl_Bck(m3912unboximpl);
        }
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform != null) {
            encode((byte) 9);
            encode(textGeometricTransform);
        }
        if (!Color.m1843equalsimpl0(spanStyle.m3668getBackground0d7_KjU(), companion.m1878getUnspecified0d7_KjU())) {
            encode((byte) 10);
            m3544encode8_81llA(spanStyle.m3668getBackground0d7_KjU());
        }
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration != null) {
            encode((byte) 11);
            encode(textDecoration);
        }
        Shadow shadow = spanStyle.getShadow();
        if (shadow != null) {
            encode((byte) 12);
            encode(shadow);
        }
    }

    /* renamed from: encode--R2X_6o  reason: not valid java name */
    public final void m3541encodeR2X_6o(long j10) {
        long m4229getTypeUIouoOA = TextUnit.m4229getTypeUIouoOA(j10);
        TextUnitType.Companion companion = TextUnitType.Companion;
        byte b10 = 0;
        if (!TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4264getUnspecifiedUIouoOA())) {
            if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4263getSpUIouoOA())) {
                b10 = 1;
            } else if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4262getEmUIouoOA())) {
                b10 = 2;
            }
        }
        encode(b10);
        if (!TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), companion.m4264getUnspecifiedUIouoOA())) {
            encode(TextUnit.m4230getValueimpl(j10));
        }
    }

    /* renamed from: encode-4Dl_Bck  reason: not valid java name */
    public final void m3542encode4Dl_Bck(float f10) {
        encode(f10);
    }

    /* renamed from: encode-6p3vJLY  reason: not valid java name */
    public final void m3543encode6p3vJLY(int i10) {
        FontSynthesis.Companion companion = FontSynthesis.Companion;
        byte b10 = 0;
        if (!FontSynthesis.m3784equalsimpl0(i10, companion.m3791getNoneGVVA2EU())) {
            if (FontSynthesis.m3784equalsimpl0(i10, companion.m3790getAllGVVA2EU())) {
                b10 = 1;
            } else if (FontSynthesis.m3784equalsimpl0(i10, companion.m3793getWeightGVVA2EU())) {
                b10 = 2;
            } else if (FontSynthesis.m3784equalsimpl0(i10, companion.m3792getStyleGVVA2EU())) {
                b10 = 3;
            }
        }
        encode(b10);
    }

    /* renamed from: encode-8_81llA  reason: not valid java name */
    public final void m3544encode8_81llA(long j10) {
        m3545encodeVKZWuLQ(j10);
    }

    /* renamed from: encode-VKZWuLQ  reason: not valid java name */
    public final void m3545encodeVKZWuLQ(long j10) {
        this.parcel.writeLong(j10);
    }

    /* renamed from: encode-nzbMABs  reason: not valid java name */
    public final void m3546encodenzbMABs(int i10) {
        FontStyle.Companion companion = FontStyle.Companion;
        byte b10 = 0;
        if (!FontStyle.m3775equalsimpl0(i10, companion.m3780getNormal_LCdwA()) && FontStyle.m3775equalsimpl0(i10, companion.m3779getItalic_LCdwA())) {
            b10 = 1;
        }
        encode(b10);
    }

    @NotNull
    public final String encodedString() {
        String encodeToString = Base64.encodeToString(this.parcel.marshall(), 0);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(bytes, Base64.DEFAULT)");
        return encodeToString;
    }

    public final void reset() {
        this.parcel.recycle();
        Parcel obtain = Parcel.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        this.parcel = obtain;
    }

    public final void encode(@NotNull FontWeight fontWeight) {
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        encode(fontWeight.getWeight());
    }

    public final void encode(@NotNull TextGeometricTransform textGeometricTransform) {
        Intrinsics.checkNotNullParameter(textGeometricTransform, "textGeometricTransform");
        encode(textGeometricTransform.getScaleX());
        encode(textGeometricTransform.getSkewX());
    }

    public final void encode(@NotNull TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(textDecoration, "textDecoration");
        encode(textDecoration.getMask());
    }

    public final void encode(@NotNull Shadow shadow) {
        Intrinsics.checkNotNullParameter(shadow, "shadow");
        m3544encode8_81llA(shadow.m2126getColor0d7_KjU());
        encode(Offset.m1606getXimpl(shadow.m2127getOffsetF1C5BW0()));
        encode(Offset.m1607getYimpl(shadow.m2127getOffsetF1C5BW0()));
        encode(shadow.getBlurRadius());
    }

    public final void encode(byte b10) {
        this.parcel.writeByte(b10);
    }

    public final void encode(int i10) {
        this.parcel.writeInt(i10);
    }

    public final void encode(float f10) {
        this.parcel.writeFloat(f10);
    }

    public final void encode(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        this.parcel.writeString(string);
    }
}
