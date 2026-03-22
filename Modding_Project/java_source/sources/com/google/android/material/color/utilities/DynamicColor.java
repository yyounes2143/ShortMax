package com.google.android.material.color.utilities;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Function;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class DynamicColor {
    public final Function<DynamicScheme, DynamicColor> background;
    public final ContrastCurve contrastCurve;
    private final HashMap<DynamicScheme, Hct> hctCache;
    public final boolean isBackground;
    public final String name;
    public final Function<DynamicScheme, Double> opacity;
    public final Function<DynamicScheme, TonalPalette> palette;
    public final Function<DynamicScheme, DynamicColor> secondBackground;
    public final Function<DynamicScheme, Double> tone;
    public final Function<DynamicScheme, ToneDeltaPair> toneDeltaPair;

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z10, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z10;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = null;
    }

    public static double enableLightForeground(double d10) {
        if (tonePrefersLightForeground(d10) && !toneAllowsLightForeground(d10)) {
            return 49.0d;
        }
        return d10;
    }

    public static double foregroundTone(double d10, double d11) {
        boolean z10;
        double lighterUnsafe = Contrast.lighterUnsafe(d10, d11);
        double darkerUnsafe = Contrast.darkerUnsafe(d10, d11);
        double ratioOfTones = Contrast.ratioOfTones(lighterUnsafe, d10);
        double ratioOfTones2 = Contrast.ratioOfTones(darkerUnsafe, d10);
        if (tonePrefersLightForeground(d10)) {
            if (Math.abs(ratioOfTones - ratioOfTones2) < 0.1d && ratioOfTones < d11 && ratioOfTones2 < d11) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (ratioOfTones < d11 && ratioOfTones < ratioOfTones2 && !z10) {
                return darkerUnsafe;
            }
            return lighterUnsafe;
        } else if (ratioOfTones2 >= d11 || ratioOfTones2 >= ratioOfTones) {
            return darkerUnsafe;
        } else {
            return lighterUnsafe;
        }
    }

    @NonNull
    public static DynamicColor fromArgb(@NonNull String str, int i10) {
        final Hct fromInt = Hct.fromInt(i10);
        final TonalPalette fromInt2 = TonalPalette.fromInt(i10);
        return fromPalette(str, new Function() { // from class: com.google.android.material.color.utilities.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TonalPalette lambda$fromArgb$0;
                lambda$fromArgb$0 = DynamicColor.lambda$fromArgb$0(TonalPalette.this, (DynamicScheme) obj);
                return lambda$fromArgb$0;
            }
        }, new Function() { // from class: com.google.android.material.color.utilities.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Double lambda$fromArgb$1;
                lambda$fromArgb$1 = DynamicColor.lambda$fromArgb$1(Hct.this, (DynamicScheme) obj);
                return lambda$fromArgb$1;
            }
        });
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2) {
        return new DynamicColor(str, function, function2, false, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double lambda$fromArgb$1(Hct hct, DynamicScheme dynamicScheme) {
        return Double.valueOf(hct.getTone());
    }

    public static boolean toneAllowsLightForeground(double d10) {
        if (Math.round(d10) <= 49) {
            return true;
        }
        return false;
    }

    public static boolean tonePrefersLightForeground(double d10) {
        if (Math.round(d10) < 60) {
            return true;
        }
        return false;
    }

    public int getArgb(@NonNull DynamicScheme dynamicScheme) {
        int i10 = getHct(dynamicScheme).toInt();
        Function<DynamicScheme, Double> function = this.opacity;
        if (function == null) {
            return i10;
        }
        return (MathUtils.clampInt(0, 255, (int) Math.round(function.apply(dynamicScheme).doubleValue() * 255.0d)) << 24) | (i10 & ViewCompat.MEASURED_SIZE_MASK);
    }

    @NonNull
    public Hct getHct(@NonNull DynamicScheme dynamicScheme) {
        Hct hct = this.hctCache.get(dynamicScheme);
        if (hct != null) {
            return hct;
        }
        Hct hct2 = this.palette.apply(dynamicScheme).getHct(getTone(dynamicScheme));
        if (this.hctCache.size() > 4) {
            this.hctCache.clear();
        }
        this.hctCache.put(dynamicScheme, hct2);
        return hct2;
    }

    public double getTone(@NonNull DynamicScheme dynamicScheme) {
        boolean z10;
        double d10;
        boolean z11;
        DynamicColor dynamicColor;
        DynamicColor dynamicColor2;
        double d11;
        double d12;
        if (dynamicScheme.contrastLevel < 0.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        Function<DynamicScheme, ToneDeltaPair> function = this.toneDeltaPair;
        if (function != null) {
            ToneDeltaPair apply = function.apply(dynamicScheme);
            DynamicColor roleA = apply.getRoleA();
            DynamicColor roleB = apply.getRoleB();
            double delta = apply.getDelta();
            TonePolarity polarity = apply.getPolarity();
            boolean stayTogether = apply.getStayTogether();
            double tone = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            if (polarity != TonePolarity.NEARER && ((polarity != TonePolarity.LIGHTER || dynamicScheme.isDark) && (polarity != TonePolarity.DARKER || !dynamicScheme.isDark))) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (z11) {
                dynamicColor = roleA;
            } else {
                dynamicColor = roleB;
            }
            if (z11) {
                dynamicColor2 = roleB;
            } else {
                dynamicColor2 = roleA;
            }
            boolean equals = this.name.equals(dynamicColor.name);
            if (dynamicScheme.isDark) {
                d11 = 1.0d;
            } else {
                d11 = -1.0d;
            }
            double contrast = dynamicColor.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double contrast2 = dynamicColor2.contrastCurve.getContrast(dynamicScheme.contrastLevel);
            double doubleValue = dynamicColor.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue) < contrast) {
                doubleValue = foregroundTone(tone, contrast);
            }
            double d13 = doubleValue;
            double doubleValue2 = dynamicColor2.tone.apply(dynamicScheme).doubleValue();
            if (Contrast.ratioOfTones(tone, doubleValue2) < contrast2) {
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if (z10) {
                d13 = foregroundTone(tone, contrast);
                doubleValue2 = foregroundTone(tone, contrast2);
            }
            if ((doubleValue2 - d13) * d11 < delta) {
                double d14 = delta * d11;
                doubleValue2 = MathUtils.clampDouble(0.0d, 100.0d, d13 + d14);
                if ((doubleValue2 - d13) * d11 < delta) {
                    d13 = MathUtils.clampDouble(0.0d, 100.0d, doubleValue2 - d14);
                }
            }
            if (50.0d <= d13 && d13 < 60.0d) {
                if (d11 > 0.0d) {
                    d13 = 60.0d;
                    d12 = Math.max(doubleValue2, (delta * d11) + 60.0d);
                } else {
                    d12 = Math.min(doubleValue2, (delta * d11) + 49.0d);
                    d13 = 49.0d;
                }
            } else if (50.0d <= doubleValue2 && doubleValue2 < 60.0d) {
                if (stayTogether) {
                    if (d11 > 0.0d) {
                        d12 = Math.max(doubleValue2, (delta * d11) + 60.0d);
                        d13 = 60.0d;
                    } else {
                        d12 = Math.min(doubleValue2, (delta * d11) + 49.0d);
                        d13 = 49.0d;
                    }
                } else if (d11 > 0.0d) {
                    d12 = 60.0d;
                } else {
                    d12 = 49.0d;
                }
            } else {
                d12 = doubleValue2;
            }
            if (equals) {
                return d13;
            }
            return d12;
        }
        double doubleValue3 = this.tone.apply(dynamicScheme).doubleValue();
        Function<DynamicScheme, DynamicColor> function2 = this.background;
        if (function2 == null) {
            return doubleValue3;
        }
        double tone2 = function2.apply(dynamicScheme).getTone(dynamicScheme);
        double contrast3 = this.contrastCurve.getContrast(dynamicScheme.contrastLevel);
        if (Contrast.ratioOfTones(tone2, doubleValue3) < contrast3) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        if (z10) {
            doubleValue3 = foregroundTone(tone2, contrast3);
        }
        if (this.isBackground && 50.0d <= doubleValue3 && doubleValue3 < 60.0d) {
            if (Contrast.ratioOfTones(49.0d, tone2) >= contrast3) {
                d10 = 49.0d;
            } else {
                d10 = 60.0d;
            }
        } else {
            d10 = doubleValue3;
        }
        if (this.secondBackground != null) {
            double tone3 = this.background.apply(dynamicScheme).getTone(dynamicScheme);
            double tone4 = this.secondBackground.apply(dynamicScheme).getTone(dynamicScheme);
            double max = Math.max(tone3, tone4);
            double min = Math.min(tone3, tone4);
            if (Contrast.ratioOfTones(max, d10) >= contrast3 && Contrast.ratioOfTones(min, d10) >= contrast3) {
                return d10;
            }
            double lighter = Contrast.lighter(max, contrast3);
            double darker = Contrast.darker(min, contrast3);
            ArrayList arrayList = new ArrayList();
            int i10 = (lighter > (-1.0d) ? 1 : (lighter == (-1.0d) ? 0 : -1));
            if (i10 != 0) {
                arrayList.add(Double.valueOf(lighter));
            }
            int i11 = (darker > (-1.0d) ? 1 : (darker == (-1.0d) ? 0 : -1));
            if (i11 != 0) {
                arrayList.add(Double.valueOf(darker));
            }
            if (!tonePrefersLightForeground(tone3) && !tonePrefersLightForeground(tone4)) {
                if (arrayList.size() == 1) {
                    return ((Double) arrayList.get(0)).doubleValue();
                }
                if (i11 == 0) {
                    return 0.0d;
                }
                return darker;
            } else if (i10 == 0) {
                return 100.0d;
            } else {
                return lighter;
            }
        }
        return d10;
    }

    @NonNull
    public static DynamicColor fromPalette(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z10) {
        return new DynamicColor(str, function, function2, z10, null, null, null, null);
    }

    public DynamicColor(@NonNull String str, @NonNull Function<DynamicScheme, TonalPalette> function, @NonNull Function<DynamicScheme, Double> function2, boolean z10, @Nullable Function<DynamicScheme, DynamicColor> function3, @Nullable Function<DynamicScheme, DynamicColor> function4, @Nullable ContrastCurve contrastCurve, @Nullable Function<DynamicScheme, ToneDeltaPair> function5, @Nullable Function<DynamicScheme, Double> function6) {
        this.hctCache = new HashMap<>();
        this.name = str;
        this.palette = function;
        this.tone = function2;
        this.isBackground = z10;
        this.background = function3;
        this.secondBackground = function4;
        this.contrastCurve = contrastCurve;
        this.toneDeltaPair = function5;
        this.opacity = function6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TonalPalette lambda$fromArgb$0(TonalPalette tonalPalette, DynamicScheme dynamicScheme) {
        return tonalPalette;
    }
}
