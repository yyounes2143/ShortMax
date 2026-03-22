package com.inmobi.media;

import android.graphics.Point;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.e8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2937e8 {

    /* renamed from: a  reason: collision with root package name */
    public final Point f24637a;

    /* renamed from: b  reason: collision with root package name */
    public final Point f24638b;

    /* renamed from: c  reason: collision with root package name */
    public final Point f24639c;

    /* renamed from: d  reason: collision with root package name */
    public final Point f24640d;

    /* renamed from: e  reason: collision with root package name */
    public final String f24641e;

    /* renamed from: f  reason: collision with root package name */
    public final String f24642f;

    /* renamed from: g  reason: collision with root package name */
    public final String f24643g;

    /* renamed from: h  reason: collision with root package name */
    public final float f24644h;

    /* renamed from: i  reason: collision with root package name */
    public final String f24645i;

    /* renamed from: j  reason: collision with root package name */
    public final String f24646j;

    /* renamed from: k  reason: collision with root package name */
    public final P8 f24647k;

    public C2937e8() {
        this.f24637a = new Point(0, 0);
        this.f24639c = new Point(0, 0);
        this.f24638b = new Point(0, 0);
        this.f24640d = new Point(0, 0);
        this.f24641e = DevicePublicKeyStringDef.NONE;
        this.f24642f = "straight";
        this.f24644h = 10.0f;
        this.f24645i = "#ff000000";
        this.f24646j = "#00000000";
        this.f24643g = "fill";
        this.f24647k = null;
    }

    public String a() {
        String str = this.f24646j;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public C2937e8(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, String contentMode, String borderStrokeStyle, String borderCornerStyle, String borderColor, String backgroundColor, P8 p82) {
        Intrinsics.checkNotNullParameter(contentMode, "contentMode");
        Intrinsics.checkNotNullParameter(borderStrokeStyle, "borderStrokeStyle");
        Intrinsics.checkNotNullParameter(borderCornerStyle, "borderCornerStyle");
        Intrinsics.checkNotNullParameter(borderColor, "borderColor");
        Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
        this.f24637a = new Point(i12, i13);
        this.f24638b = new Point(i16, i17);
        this.f24639c = new Point(i10, i11);
        this.f24640d = new Point(i14, i15);
        this.f24641e = borderStrokeStyle;
        this.f24642f = borderCornerStyle;
        this.f24644h = 10.0f;
        this.f24643g = contentMode;
        this.f24645i = borderColor.length() == 0 ? "#ff000000" : borderColor;
        this.f24646j = backgroundColor.length() == 0 ? "#00000000" : backgroundColor;
        this.f24647k = p82;
    }
}
