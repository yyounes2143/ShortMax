package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Demographic.kt */
@Metadata
/* loaded from: classes7.dex */
public enum MedianHomeValueUSD {
    UNDER_100K(0, new IntRange(Integer.MIN_VALUE, 100000)),
    FROM_100K_TO_300K(1, new IntRange(100001, 300000)),
    FROM_300K_TO_500K(2, new IntRange(300001, 500000)),
    FROM_500K_TO_700K(3, new IntRange(500001, 700000)),
    FROM_700K_TO_900K(4, new IntRange(700001, 900000)),
    FROM_900K_TO_1M1(5, new IntRange(900001, 1100000)),
    FROM_1M1_TO_1M3(6, new IntRange(1100001, 1300000)),
    FROM_1M3_TO_1M5(7, new IntRange(1300001, 1500000)),
    FROM_1M5_TO_1M7(8, new IntRange(1500001, 1700000)),
    OVER_1M7(9, new IntRange(1700001, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: id  reason: collision with root package name */
    private final int f49564id;
    @NotNull
    private final IntRange range;

    /* compiled from: Demographic.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final MedianHomeValueUSD fromPrice$vungle_ads_release(int i10) {
            MedianHomeValueUSD medianHomeValueUSD;
            MedianHomeValueUSD[] values = MedianHomeValueUSD.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    medianHomeValueUSD = values[i11];
                    IntRange range = medianHomeValueUSD.getRange();
                    int c10 = range.c();
                    if (i10 <= range.d() && c10 <= i10) {
                        break;
                    }
                    i11++;
                } else {
                    medianHomeValueUSD = null;
                    break;
                }
            }
            if (medianHomeValueUSD == null) {
                return MedianHomeValueUSD.UNDER_100K;
            }
            return medianHomeValueUSD;
        }

        private Companion() {
        }
    }

    MedianHomeValueUSD(int i10, IntRange intRange) {
        this.f49564id = i10;
        this.range = intRange;
    }

    public final int getId() {
        return this.f49564id;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }
}
