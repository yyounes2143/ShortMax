package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DeviceFontFamilyNameFont.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeviceFontFamilyNameFontKt {
    @ExperimentalTextApi
    @NotNull
    /* renamed from: Font-KH_DTmE  reason: not valid java name */
    public static final Font m3750FontKH_DTmE(@NotNull String familyName, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(familyName, "familyName");
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new DeviceFontFamilyNameFont(familyName, weight, i10, null);
    }

    /* renamed from: Font-KH_DTmE$default  reason: not valid java name */
    public static /* synthetic */ Font m3751FontKH_DTmE$default(String str, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 4) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3750FontKH_DTmE(str, fontWeight, i10);
    }
}
