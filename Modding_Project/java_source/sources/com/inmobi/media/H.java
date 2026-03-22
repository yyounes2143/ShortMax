package com.inmobi.media;

import android.graphics.Point;
import android.graphics.RectF;
import android.view.RoundedCorner;
import android.view.WindowInsets;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class H extends Af {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ I f23691a;

    public H(I i10) {
        this.f23691a = i10;
    }

    @Override // com.inmobi.media.Af
    public final void a(WindowInsets insets) {
        RoundedCorner roundedCorner;
        int i10;
        RoundedCorner roundedCorner2;
        int i11;
        RoundedCorner roundedCorner3;
        int i12;
        RoundedCorner roundedCorner4;
        int i13;
        RoundedCorner roundedCorner5;
        Point point;
        RoundedCorner roundedCorner6;
        Point point2;
        RoundedCorner roundedCorner7;
        Point point3;
        RoundedCorner roundedCorner8;
        Point point4;
        RectF rectF;
        RectF rectF2;
        RectF rectF3;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (L3.f23796a.A()) {
            roundedCorner = insets.getRoundedCorner(0);
            if (roundedCorner != null) {
                i10 = roundedCorner.getRadius();
            } else {
                i10 = 0;
            }
            roundedCorner2 = insets.getRoundedCorner(1);
            if (roundedCorner2 != null) {
                i11 = roundedCorner2.getRadius();
            } else {
                i11 = 0;
            }
            roundedCorner3 = insets.getRoundedCorner(2);
            if (roundedCorner3 != null) {
                i12 = roundedCorner3.getRadius();
            } else {
                i12 = 0;
            }
            roundedCorner4 = insets.getRoundedCorner(3);
            if (roundedCorner4 != null) {
                i13 = roundedCorner4.getRadius();
            } else {
                i13 = 0;
            }
            roundedCorner5 = insets.getRoundedCorner(0);
            RectF rectF4 = null;
            if (roundedCorner5 != null) {
                point = roundedCorner5.getCenter();
            } else {
                point = null;
            }
            roundedCorner6 = insets.getRoundedCorner(1);
            if (roundedCorner6 != null) {
                point2 = roundedCorner6.getCenter();
            } else {
                point2 = null;
            }
            roundedCorner7 = insets.getRoundedCorner(2);
            if (roundedCorner7 != null) {
                point3 = roundedCorner7.getCenter();
            } else {
                point3 = null;
            }
            roundedCorner8 = insets.getRoundedCorner(3);
            if (roundedCorner8 != null) {
                point4 = roundedCorner8.getCenter();
            } else {
                point4 = null;
            }
            if (i10 > 0 && point != null) {
                rectF = new RectF(i19 - i10, i20 - i10, point.x, point.y);
            } else {
                rectF = null;
            }
            if (i11 > 0 && point2 != null) {
                rectF2 = new RectF(point2.x, i18 - i10, i17 + i11, point2.y);
            } else {
                rectF2 = null;
            }
            if (i13 > 0 && point4 != null) {
                int i21 = point4.x;
                rectF3 = new RectF(i21 - i13, point4.y, i21, i16 + i13);
            } else {
                rectF3 = null;
            }
            if (i12 > 0 && point3 != null) {
                rectF4 = new RectF(point3.x, point3.y, i14 + i12, i15 + i12);
            }
            this.f23691a.f23713g = new B(rectF, rectF2, rectF3, rectF4);
        }
    }
}
