package com.inmobi.media;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public class M8 extends C2937e8 {

    /* renamed from: l  reason: collision with root package name */
    public int f23849l;

    /* renamed from: m  reason: collision with root package name */
    public final byte f23850m;

    /* renamed from: n  reason: collision with root package name */
    public String f23851n;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList f23852o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M8(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, int i18, byte b10, String textColor, List textStyles, P8 p82) {
        super(i10, i11, i12, i13, i14, i15, i16, i17, "fill", borderStrokeStyle, borderCornerStyle, borderColor, backgroundColor, p82);
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        Intrinsics.checkNotNullParameter(textColor, "textColor");
        Intrinsics.checkNotNullParameter(textStyles, "textStyles");
        this.f23849l = i18;
        this.f23850m = b10;
        this.f23851n = textColor.length() == 0 ? "#ff000000" : textColor;
        int min = Math.min(textStyles.size(), 4);
        this.f23852o = new ArrayList();
        for (int i19 = 0; i19 < min; i19++) {
            this.f23852o.add(textStyles.get(i19));
        }
    }

    @Override // com.inmobi.media.C2937e8
    public final String a() {
        String str = this.f24646j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }
}
