package com.vungle.ads.fpd;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.r2;
import vt.v0;
/* compiled from: Demographic.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class Demographic {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Integer ageRange;
    @Nullable
    private Integer lengthOfResidence;
    @Nullable
    private Integer medianHomeValueUSD;
    @Nullable
    private Integer monthlyHousingPaymentUSD;

    /* compiled from: Demographic.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Demographic> serializer() {
            return Demographic$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public Demographic() {
    }

    public static final void write$Self(@NotNull Demographic self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.ageRange != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, v0.f69529a, self.ageRange);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.lengthOfResidence != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, v0.f69529a, self.lengthOfResidence);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.medianHomeValueUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, v0.f69529a, self.medianHomeValueUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.monthlyHousingPaymentUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, v0.f69529a, self.monthlyHousingPaymentUSD);
        }
    }

    @NotNull
    public final Demographic setAgeRange(int i10) {
        this.ageRange = Integer.valueOf(AgeRange.Companion.fromAge$vungle_ads_release(i10).getId());
        return this;
    }

    @NotNull
    public final Demographic setLengthOfResidence(int i10) {
        this.lengthOfResidence = Integer.valueOf(LengthOfResidence.Companion.fromYears$vungle_ads_release(i10).getId());
        return this;
    }

    @NotNull
    public final Demographic setMedianHomeValueUSD(int i10) {
        this.medianHomeValueUSD = Integer.valueOf(MedianHomeValueUSD.Companion.fromPrice$vungle_ads_release(i10).getId());
        return this;
    }

    @NotNull
    public final Demographic setMonthlyHousingCosts(int i10) {
        this.monthlyHousingPaymentUSD = Integer.valueOf(MonthlyHousingCosts.Companion.fromCost$vungle_ads_release(i10).getId());
        return this;
    }

    @c
    public /* synthetic */ Demographic(int i10, Integer num, Integer num2, Integer num3, Integer num4, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.ageRange = null;
        } else {
            this.ageRange = num;
        }
        if ((i10 & 2) == 0) {
            this.lengthOfResidence = null;
        } else {
            this.lengthOfResidence = num2;
        }
        if ((i10 & 4) == 0) {
            this.medianHomeValueUSD = null;
        } else {
            this.medianHomeValueUSD = num3;
        }
        if ((i10 & 8) == 0) {
            this.monthlyHousingPaymentUSD = null;
        } else {
            this.monthlyHousingPaymentUSD = num4;
        }
    }

    private static /* synthetic */ void getAgeRange$annotations() {
    }

    private static /* synthetic */ void getLengthOfResidence$annotations() {
    }

    private static /* synthetic */ void getMedianHomeValueUSD$annotations() {
    }

    private static /* synthetic */ void getMonthlyHousingPaymentUSD$annotations() {
    }
}
