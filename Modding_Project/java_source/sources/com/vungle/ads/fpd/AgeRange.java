package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Demographic.kt */
@Metadata
/* loaded from: classes7.dex */
public enum AgeRange {
    AGE_18_20(1, new IntRange(18, 20)),
    AGE_21_30(2, new IntRange(21, 30)),
    AGE_31_40(3, new IntRange(31, 40)),
    AGE_41_50(4, new IntRange(41, 50)),
    AGE_51_60(5, new IntRange(51, 60)),
    AGE_61_70(6, new IntRange(61, 70)),
    AGE_71_75(7, new IntRange(71, 75)),
    OTHERS(0, new IntRange(Integer.MIN_VALUE, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: id  reason: collision with root package name */
    private final int f49562id;
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
        public final AgeRange fromAge$vungle_ads_release(int i10) {
            AgeRange ageRange;
            AgeRange[] values = AgeRange.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    ageRange = values[i11];
                    IntRange range = ageRange.getRange();
                    int c10 = range.c();
                    if (i10 <= range.d() && c10 <= i10) {
                        break;
                    }
                    i11++;
                } else {
                    ageRange = null;
                    break;
                }
            }
            if (ageRange == null) {
                return AgeRange.OTHERS;
            }
            return ageRange;
        }

        private Companion() {
        }
    }

    AgeRange(int i10, IntRange intRange) {
        this.f49562id = i10;
        this.range = intRange;
    }

    public final int getId() {
        return this.f49562id;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }
}
