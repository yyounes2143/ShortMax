package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class TonalPalette {
    Map<Integer, Integer> cache = new HashMap();
    double chroma;
    double hue;
    Hct keyColor;

    private TonalPalette(double d10, double d11, Hct hct) {
        this.hue = d10;
        this.chroma = d11;
        this.keyColor = hct;
    }

    private static Hct createKeyColor(double d10, double d11) {
        Hct from = Hct.from(d10, d11, 50.0d);
        double abs = Math.abs(from.getChroma() - d11);
        for (double d12 = 1.0d; d12 < 50.0d; d12 += 1.0d) {
            if (Math.round(d11) == Math.round(from.getChroma())) {
                return from;
            }
            Hct from2 = Hct.from(d10, d11, 50.0d + d12);
            double abs2 = Math.abs(from2.getChroma() - d11);
            if (abs2 < abs) {
                from = from2;
                abs = abs2;
            }
            Hct from3 = Hct.from(d10, d11, 50.0d - d12);
            double abs3 = Math.abs(from3.getChroma() - d11);
            if (abs3 < abs) {
                from = from3;
                abs = abs3;
            }
        }
        return from;
    }

    public static TonalPalette fromHct(Hct hct) {
        return new TonalPalette(hct.getHue(), hct.getChroma(), hct);
    }

    public static TonalPalette fromHueAndChroma(double d10, double d11) {
        return new TonalPalette(d10, d11, createKeyColor(d10, d11));
    }

    public static TonalPalette fromInt(int i10) {
        return fromHct(Hct.fromInt(i10));
    }

    public double getChroma() {
        return this.chroma;
    }

    public Hct getHct(double d10) {
        return Hct.from(this.hue, this.chroma, d10);
    }

    public double getHue() {
        return this.hue;
    }

    public Hct getKeyColor() {
        return this.keyColor;
    }

    public int tone(int i10) {
        Integer num = this.cache.get(Integer.valueOf(i10));
        if (num == null) {
            num = Integer.valueOf(Hct.from(this.hue, this.chroma, i10).toInt());
            this.cache.put(Integer.valueOf(i10), num);
        }
        return num.intValue();
    }
}
