package com.inmobi.media;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Je {
    public static final Le a(C2904c9 videoAsset, C2920d8 asset) {
        ArrayList arrayList;
        double d10;
        double d11;
        double d12;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Ve d13 = videoAsset.d();
        Point point = asset.f24581d.f24637a;
        Le le2 = null;
        if (d13 != null) {
            arrayList = ((Ue) d13).f24287i;
        } else {
            arrayList = null;
        }
        float f10 = U3.d().f24299c;
        double d14 = point.y / f10;
        double d15 = point.x / f10;
        double d16 = d15 / d14;
        double d17 = d15 * d14;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            double d18 = -1.0d;
            double d19 = 0.0d;
            while (it.hasNext()) {
                Le le3 = (Le) it.next();
                int i10 = le3.f23822b;
                Iterator it2 = it;
                double d20 = le3.f23821a;
                Le le4 = le2;
                double d21 = i10;
                if (d16 > d20 / d21) {
                    d11 = (d14 / d21) * d20;
                    d10 = d14;
                } else {
                    d10 = (d15 / d20) * d21;
                    d11 = d15;
                }
                if (d21 >= d10 * 0.33d && d20 >= 0.33d * d11) {
                    double d22 = d11 * d10;
                    if (d22 > 0.5d * d17) {
                        if (d22 > d18) {
                            d19 = d21 / d10;
                            le2 = le3;
                            d18 = d22;
                            it = it2;
                        } else if (d22 == d18) {
                            float f11 = U3.d().f24299c;
                            double d23 = d21 / d10;
                            d12 = d14;
                            if (d23 <= d19 || d19 >= f11) {
                                double d24 = f11;
                                if (d19 > d24 && d23 < d19 && d23 > d24) {
                                }
                                it = it2;
                                le2 = le4;
                                d14 = d12;
                            }
                            it = it2;
                            d19 = d23;
                            d14 = d12;
                            le2 = le3;
                        }
                    }
                }
                d12 = d14;
                it = it2;
                le2 = le4;
                d14 = d12;
            }
        }
        return le2;
    }
}
