package androidx.compose.ui.text.font;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Font.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontKt {
    @Stable
    @ms.c
    /* renamed from: Font-RetOiIg  reason: not valid java name */
    public static final /* synthetic */ Font m3755FontRetOiIg(int i10, FontWeight weight, int i11) {
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new ResourceFont(i10, weight, i11, FontLoadingStrategy.Companion.m3767getBlockingPKNRLFQ(), null);
    }

    /* renamed from: Font-RetOiIg$default  reason: not valid java name */
    public static /* synthetic */ Font m3756FontRetOiIg$default(int i10, FontWeight fontWeight, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i12 & 4) != 0) {
            i11 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3755FontRetOiIg(i10, fontWeight, i11);
    }

    @Stable
    @NotNull
    /* renamed from: Font-YpTlLL0  reason: not valid java name */
    public static final Font m3757FontYpTlLL0(int i10, @NotNull FontWeight weight, int i11, int i12) {
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new ResourceFont(i10, weight, i11, i12, null);
    }

    /* renamed from: Font-YpTlLL0$default  reason: not valid java name */
    public static /* synthetic */ Font m3758FontYpTlLL0$default(int i10, FontWeight fontWeight, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i13 & 4) != 0) {
            i11 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        if ((i13 & 8) != 0) {
            i12 = FontLoadingStrategy.Companion.m3767getBlockingPKNRLFQ();
        }
        return m3757FontYpTlLL0(i10, fontWeight, i11, i12);
    }

    @Stable
    @NotNull
    public static final FontFamily toFontFamily(@NotNull Font font) {
        Intrinsics.checkNotNullParameter(font, "<this>");
        return FontFamilyKt.FontFamily(font);
    }
}
