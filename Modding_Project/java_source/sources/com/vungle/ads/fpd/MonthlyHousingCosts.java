package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Demographic.kt */
@Metadata
/* loaded from: classes7.dex */
public enum MonthlyHousingCosts {
    UNDER_500(0, new IntRange(Integer.MIN_VALUE, 500)),
    FROM_500_TO_1000(1, new IntRange(501, 1000)),
    FROM_1000_TO_1500(2, new IntRange(1001, 1500)),
    FROM_1500_TO_2000(3, new IntRange(1501, 2000)),
    FROM_2000_TO_2500(4, new IntRange(2001, 2500)),
    FROM_2500_TO_3000(5, new IntRange(2501, 3000)),
    FROM_3000_TO_3500(6, new IntRange(3001, 3500)),
    FROM_3500_TO_4000(7, new IntRange(3501, 4000)),
    FROM_4000_TO_4500(8, new IntRange(4001, 4500)),
    OVER_4500(9, new IntRange(4501, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: id  reason: collision with root package name */
    private final int f49565id;
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
        public final MonthlyHousingCosts fromCost$vungle_ads_release(int i10) {
            MonthlyHousingCosts monthlyHousingCosts;
            MonthlyHousingCosts[] values = MonthlyHousingCosts.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    monthlyHousingCosts = values[i11];
                    IntRange range = monthlyHousingCosts.getRange();
                    int c10 = range.c();
                    if (i10 <= range.d() && c10 <= i10) {
                        break;
                    }
                    i11++;
                } else {
                    monthlyHousingCosts = null;
                    break;
                }
            }
            if (monthlyHousingCosts == null) {
                return MonthlyHousingCosts.UNDER_500;
            }
            return monthlyHousingCosts;
        }

        private Companion() {
        }
    }

    MonthlyHousingCosts(int i10, IntRange intRange) {
        this.f49565id = i10;
        this.range = intRange;
    }

    public final int getId() {
        return this.f49565id;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }
}
