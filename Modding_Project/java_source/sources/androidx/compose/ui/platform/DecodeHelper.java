package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.OffsetKt;
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
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidClipboardManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class DecodeHelper {
    @NotNull
    private final Parcel parcel;

    public DecodeHelper(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        Parcel obtain = Parcel.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        this.parcel = obtain;
        byte[] decode = Base64.decode(string, 0);
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
    }

    private final int dataAvailable() {
        return this.parcel.dataAvail();
    }

    /* renamed from: decodeBaselineShift-y9eOQZs  reason: not valid java name */
    private final float m3535decodeBaselineShifty9eOQZs() {
        return BaselineShift.m3907constructorimpl(decodeFloat());
    }

    private final byte decodeByte() {
        return this.parcel.readByte();
    }

    private final float decodeFloat() {
        return this.parcel.readFloat();
    }

    private final int decodeInt() {
        return this.parcel.readInt();
    }

    private final Shadow decodeShadow() {
        return new Shadow(m3537decodeColor0d7_KjU(), OffsetKt.Offset(decodeFloat(), decodeFloat()), decodeFloat(), null);
    }

    private final String decodeString() {
        return this.parcel.readString();
    }

    private final TextDecoration decodeTextDecoration() {
        boolean z10;
        int decodeInt = decodeInt();
        TextDecoration.Companion companion = TextDecoration.Companion;
        boolean z11 = false;
        if ((companion.getLineThrough().getMask() & decodeInt) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((decodeInt & companion.getUnderline().getMask()) != 0) {
            z11 = true;
        }
        if (z10 && z11) {
            return companion.combine(CollectionsKt.q(companion.getLineThrough(), companion.getUnderline()));
        }
        if (z10) {
            return companion.getLineThrough();
        }
        if (z11) {
            return companion.getUnderline();
        }
        return companion.getNone();
    }

    private final TextGeometricTransform decodeTextGeometricTransform() {
        return new TextGeometricTransform(decodeFloat(), decodeFloat());
    }

    /* renamed from: decodeULong-s-VKNKU  reason: not valid java name */
    private final long m3536decodeULongsVKNKU() {
        return ms.p.b(this.parcel.readLong());
    }

    /* renamed from: decodeColor-0d7_KjU  reason: not valid java name */
    public final long m3537decodeColor0d7_KjU() {
        return Color.m1838constructorimpl(m3536decodeULongsVKNKU());
    }

    /* renamed from: decodeFontStyle-_-LCdwA  reason: not valid java name */
    public final int m3538decodeFontStyle_LCdwA() {
        byte decodeByte = decodeByte();
        if (decodeByte == 0) {
            return FontStyle.Companion.m3780getNormal_LCdwA();
        }
        if (decodeByte == 1) {
            return FontStyle.Companion.m3779getItalic_LCdwA();
        }
        return FontStyle.Companion.m3780getNormal_LCdwA();
    }

    /* renamed from: decodeFontSynthesis-GVVA2EU  reason: not valid java name */
    public final int m3539decodeFontSynthesisGVVA2EU() {
        byte decodeByte = decodeByte();
        if (decodeByte == 0) {
            return FontSynthesis.Companion.m3791getNoneGVVA2EU();
        }
        if (decodeByte == 1) {
            return FontSynthesis.Companion.m3790getAllGVVA2EU();
        }
        if (decodeByte == 3) {
            return FontSynthesis.Companion.m3792getStyleGVVA2EU();
        }
        if (decodeByte == 2) {
            return FontSynthesis.Companion.m3793getWeightGVVA2EU();
        }
        return FontSynthesis.Companion.m3791getNoneGVVA2EU();
    }

    @NotNull
    public final FontWeight decodeFontWeight() {
        return new FontWeight(decodeInt());
    }

    @NotNull
    public final SpanStyle decodeSpanStyle() {
        MutableSpanStyle mutableSpanStyle;
        MutableSpanStyle mutableSpanStyle2 = r15;
        MutableSpanStyle mutableSpanStyle3 = new MutableSpanStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16383, null);
        while (this.parcel.dataAvail() > 1) {
            byte decodeByte = decodeByte();
            if (decodeByte == 1) {
                if (dataAvailable() < 8) {
                    break;
                }
                mutableSpanStyle2.m3560setColor8_81llA(m3537decodeColor0d7_KjU());
            } else {
                mutableSpanStyle = mutableSpanStyle2;
                if (decodeByte == 2) {
                    if (dataAvailable() < 5) {
                        break;
                    }
                    mutableSpanStyle.m3561setFontSizeR2X_6o(m3540decodeTextUnitXSAIIZE());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte == 3) {
                    if (dataAvailable() < 4) {
                        break;
                    }
                    mutableSpanStyle.setFontWeight(decodeFontWeight());
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte == 4) {
                    if (dataAvailable() < 1) {
                        break;
                    }
                    mutableSpanStyle.m3562setFontStylemLjRB2g(FontStyle.m3772boximpl(m3538decodeFontStyle_LCdwA()));
                    mutableSpanStyle2 = mutableSpanStyle;
                } else if (decodeByte == 5) {
                    if (dataAvailable() < 1) {
                        break;
                    }
                    mutableSpanStyle.m3563setFontSynthesistDdu0R4(FontSynthesis.m3781boximpl(m3539decodeFontSynthesisGVVA2EU()));
                    mutableSpanStyle2 = mutableSpanStyle;
                } else {
                    if (decodeByte == 6) {
                        mutableSpanStyle.setFontFeatureSettings(decodeString());
                    } else if (decodeByte == 7) {
                        if (dataAvailable() < 5) {
                            break;
                        }
                        mutableSpanStyle.m3564setLetterSpacingR2X_6o(m3540decodeTextUnitXSAIIZE());
                    } else if (decodeByte == 8) {
                        if (dataAvailable() < 4) {
                            break;
                        }
                        mutableSpanStyle.m3559setBaselineShift_isdbwI(BaselineShift.m3906boximpl(m3535decodeBaselineShifty9eOQZs()));
                    } else if (decodeByte == 9) {
                        if (dataAvailable() < 8) {
                            break;
                        }
                        mutableSpanStyle.setTextGeometricTransform(decodeTextGeometricTransform());
                    } else if (decodeByte == 10) {
                        if (dataAvailable() < 8) {
                            break;
                        }
                        mutableSpanStyle.m3558setBackground8_81llA(m3537decodeColor0d7_KjU());
                    } else if (decodeByte == 11) {
                        if (dataAvailable() < 4) {
                            break;
                        }
                        mutableSpanStyle.setTextDecoration(decodeTextDecoration());
                    } else if (decodeByte == 12) {
                        if (dataAvailable() < 20) {
                            break;
                        }
                        mutableSpanStyle.setShadow(decodeShadow());
                    }
                    mutableSpanStyle2 = mutableSpanStyle;
                }
            }
        }
        mutableSpanStyle = mutableSpanStyle2;
        return mutableSpanStyle.toSpanStyle();
    }

    /* renamed from: decodeTextUnit-XSAIIZE  reason: not valid java name */
    public final long m3540decodeTextUnitXSAIIZE() {
        long m4264getUnspecifiedUIouoOA;
        byte decodeByte = decodeByte();
        if (decodeByte == 1) {
            m4264getUnspecifiedUIouoOA = TextUnitType.Companion.m4263getSpUIouoOA();
        } else if (decodeByte == 2) {
            m4264getUnspecifiedUIouoOA = TextUnitType.Companion.m4262getEmUIouoOA();
        } else {
            m4264getUnspecifiedUIouoOA = TextUnitType.Companion.m4264getUnspecifiedUIouoOA();
        }
        if (TextUnitType.m4258equalsimpl0(m4264getUnspecifiedUIouoOA, TextUnitType.Companion.m4264getUnspecifiedUIouoOA())) {
            return TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        return TextUnitKt.m4242TextUnitanM5pPY(decodeFloat(), m4264getUnspecifiedUIouoOA);
    }
}
