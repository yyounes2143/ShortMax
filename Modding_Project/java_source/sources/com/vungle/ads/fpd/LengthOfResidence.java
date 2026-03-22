package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Demographic.kt */
@Metadata
/* loaded from: classes7.dex */
public enum LengthOfResidence {
    LESS_THAN_ONE_YEAR(0, new IntRange(Integer.MIN_VALUE, 0)),
    ONE_TO_FIVE_YEARS(1, new IntRange(1, 5)),
    SIX_TO_TEN_YEARS(2, new IntRange(6, 10)),
    ELEVEN_TO_TWENTY_YEARS(3, new IntRange(11, 20)),
    TWENTY_ONE_TO_THIRTY_YEARS(4, new IntRange(21, 30)),
    THIRTY_ONE_TO_FORTY_YEARS(5, new IntRange(31, 40)),
    FORTY_ONE_TO_FIFTY_YEARS(6, new IntRange(41, 50)),
    FIFTY_ONE_TO_SIXTY_YEARS(7, new IntRange(51, 60)),
    SIXTY_ONE_TO_SEVENTY_YEARS(8, new IntRange(61, 70)),
    OVER_SEVENTY_ONE_YEARS(9, new IntRange(71, Integer.MAX_VALUE));
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: id  reason: collision with root package name */
    private final int f49563id;
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
        public final LengthOfResidence fromYears$vungle_ads_release(int i10) {
            LengthOfResidence lengthOfResidence;
            LengthOfResidence[] values = LengthOfResidence.values();
            int length = values.length;
            int i11 = 0;
            while (true) {
                if (i11 < length) {
                    lengthOfResidence = values[i11];
                    IntRange range = lengthOfResidence.getRange();
                    int c10 = range.c();
                    if (i10 <= range.d() && c10 <= i10) {
                        break;
                    }
                    i11++;
                } else {
                    lengthOfResidence = null;
                    break;
                }
            }
            if (lengthOfResidence == null) {
                return LengthOfResidence.LESS_THAN_ONE_YEAR;
            }
            return lengthOfResidence;
        }

        private Companion() {
        }
    }

    LengthOfResidence(int i10, IntRange intRange) {
        this.f49563id = i10;
        this.range = intRange;
    }

    public final int getId() {
        return this.f49563id;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }
}
