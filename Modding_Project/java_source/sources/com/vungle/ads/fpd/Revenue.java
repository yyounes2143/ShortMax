package com.vungle.ads.fpd;

import com.vungle.ads.internal.util.RangeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.f;
import vt.i;
import vt.l0;
import vt.r2;
import vt.w2;
/* compiled from: Revenue.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class Revenue {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Float earningsByPlacementUSD;
    @Nullable
    private Boolean isUserAPurchaser;
    @Nullable
    private Boolean isUserASubscriber;
    @Nullable
    private Float last30DaysMeanSpendUSD;
    @Nullable
    private Float last30DaysMedianSpendUSD;
    @Nullable
    private Float last30DaysPlacementFillRate;
    @Nullable
    private Float last30DaysTotalSpendUSD;
    @Nullable
    private Float last30DaysUserLtvUSD;
    @Nullable
    private Float last30DaysUserPltvUSD;
    @Nullable
    private Float last7DaysMeanSpendUSD;
    @Nullable
    private Float last7DaysMedianSpendUSD;
    @Nullable
    private Float last7DaysPlacementFillRate;
    @Nullable
    private Float last7DaysTotalSpendUSD;
    @Nullable
    private Float last7DaysUserLtvUSD;
    @Nullable
    private Float last7DaysUserPltvUSD;
    @Nullable
    private List<String> topNAdomain;
    @Nullable
    private Float totalEarningsUSD;

    /* compiled from: Revenue.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Revenue> serializer() {
            return Revenue$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public Revenue() {
    }

    public static final void write$Self(@NotNull Revenue self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.totalEarningsUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, l0.f69469a, self.totalEarningsUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.earningsByPlacementUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, l0.f69469a, self.earningsByPlacementUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.topNAdomain != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, new f(w2.f69539a), self.topNAdomain);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.isUserAPurchaser != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, i.f69441a, self.isUserAPurchaser);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.isUserASubscriber != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, i.f69441a, self.isUserASubscriber);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.last7DaysTotalSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, l0.f69469a, self.last7DaysTotalSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.last7DaysMedianSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, l0.f69469a, self.last7DaysMedianSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.last7DaysMeanSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, l0.f69469a, self.last7DaysMeanSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.last30DaysTotalSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, l0.f69469a, self.last30DaysTotalSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.last30DaysMedianSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, l0.f69469a, self.last30DaysMedianSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.last30DaysMeanSpendUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, l0.f69469a, self.last30DaysMeanSpendUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.last7DaysUserPltvUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, l0.f69469a, self.last7DaysUserPltvUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.last7DaysUserLtvUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 12, l0.f69469a, self.last7DaysUserLtvUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.last30DaysUserPltvUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, l0.f69469a, self.last30DaysUserPltvUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.last30DaysUserLtvUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, l0.f69469a, self.last30DaysUserLtvUSD);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.last7DaysPlacementFillRate != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, l0.f69469a, self.last7DaysPlacementFillRate);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.last30DaysPlacementFillRate != null) {
            output.encodeNullableSerializableElement(serialDesc, 16, l0.f69469a, self.last30DaysPlacementFillRate);
        }
    }

    @NotNull
    public final Revenue setEarningsByPlacement(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.earningsByPlacementUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setIsUserAPurchaser(boolean z10) {
        this.isUserAPurchaser = Boolean.valueOf(z10);
        return this;
    }

    @NotNull
    public final Revenue setIsUserASubscriber(boolean z10) {
        this.isUserASubscriber = Boolean.valueOf(z10);
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysMeanSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMeanSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysMedianSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMedianSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysPlacementFillRate(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.last30DaysPlacementFillRate = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysTotalSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysTotalSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysUserLtvUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserLtvUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast30DaysUserPltvUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserPltvUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysMeanSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMeanSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysMedianSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMedianSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysPlacementFillRate(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.last7DaysPlacementFillRate = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysTotalSpendUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysTotalSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysUserLtvUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserLtvUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setLast7DaysUserPltvUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserPltvUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final Revenue setTopNAdomain(@Nullable List<String> list) {
        List<String> list2;
        if (list != null) {
            list2 = CollectionsKt.g1(list);
        } else {
            list2 = null;
        }
        this.topNAdomain = list2;
        return this;
    }

    @NotNull
    public final Revenue setTotalEarningsUsd(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.totalEarningsUSD = Float.valueOf(f10);
        }
        return this;
    }

    @c
    public /* synthetic */ Revenue(int i10, Float f10, Float f11, List list, Boolean bool, Boolean bool2, Float f12, Float f13, Float f14, Float f15, Float f16, Float f17, Float f18, Float f19, Float f20, Float f21, Float f22, Float f23, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.totalEarningsUSD = null;
        } else {
            this.totalEarningsUSD = f10;
        }
        if ((i10 & 2) == 0) {
            this.earningsByPlacementUSD = null;
        } else {
            this.earningsByPlacementUSD = f11;
        }
        if ((i10 & 4) == 0) {
            this.topNAdomain = null;
        } else {
            this.topNAdomain = list;
        }
        if ((i10 & 8) == 0) {
            this.isUserAPurchaser = null;
        } else {
            this.isUserAPurchaser = bool;
        }
        if ((i10 & 16) == 0) {
            this.isUserASubscriber = null;
        } else {
            this.isUserASubscriber = bool2;
        }
        if ((i10 & 32) == 0) {
            this.last7DaysTotalSpendUSD = null;
        } else {
            this.last7DaysTotalSpendUSD = f12;
        }
        if ((i10 & 64) == 0) {
            this.last7DaysMedianSpendUSD = null;
        } else {
            this.last7DaysMedianSpendUSD = f13;
        }
        if ((i10 & 128) == 0) {
            this.last7DaysMeanSpendUSD = null;
        } else {
            this.last7DaysMeanSpendUSD = f14;
        }
        if ((i10 & 256) == 0) {
            this.last30DaysTotalSpendUSD = null;
        } else {
            this.last30DaysTotalSpendUSD = f15;
        }
        if ((i10 & 512) == 0) {
            this.last30DaysMedianSpendUSD = null;
        } else {
            this.last30DaysMedianSpendUSD = f16;
        }
        if ((i10 & 1024) == 0) {
            this.last30DaysMeanSpendUSD = null;
        } else {
            this.last30DaysMeanSpendUSD = f17;
        }
        if ((i10 & 2048) == 0) {
            this.last7DaysUserPltvUSD = null;
        } else {
            this.last7DaysUserPltvUSD = f18;
        }
        if ((i10 & 4096) == 0) {
            this.last7DaysUserLtvUSD = null;
        } else {
            this.last7DaysUserLtvUSD = f19;
        }
        if ((i10 & 8192) == 0) {
            this.last30DaysUserPltvUSD = null;
        } else {
            this.last30DaysUserPltvUSD = f20;
        }
        if ((i10 & 16384) == 0) {
            this.last30DaysUserLtvUSD = null;
        } else {
            this.last30DaysUserLtvUSD = f21;
        }
        if ((32768 & i10) == 0) {
            this.last7DaysPlacementFillRate = null;
        } else {
            this.last7DaysPlacementFillRate = f22;
        }
        if ((i10 & 65536) == 0) {
            this.last30DaysPlacementFillRate = null;
        } else {
            this.last30DaysPlacementFillRate = f23;
        }
    }

    private static /* synthetic */ void getEarningsByPlacementUSD$annotations() {
    }

    private static /* synthetic */ void getLast30DaysMeanSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast30DaysMedianSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast30DaysPlacementFillRate$annotations() {
    }

    private static /* synthetic */ void getLast30DaysTotalSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast30DaysUserLtvUSD$annotations() {
    }

    private static /* synthetic */ void getLast30DaysUserPltvUSD$annotations() {
    }

    private static /* synthetic */ void getLast7DaysMeanSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast7DaysMedianSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast7DaysPlacementFillRate$annotations() {
    }

    private static /* synthetic */ void getLast7DaysTotalSpendUSD$annotations() {
    }

    private static /* synthetic */ void getLast7DaysUserLtvUSD$annotations() {
    }

    private static /* synthetic */ void getLast7DaysUserPltvUSD$annotations() {
    }

    private static /* synthetic */ void getTopNAdomain$annotations() {
    }

    private static /* synthetic */ void getTotalEarningsUSD$annotations() {
    }

    private static /* synthetic */ void isUserAPurchaser$annotations() {
    }

    private static /* synthetic */ void isUserASubscriber$annotations() {
    }
}
