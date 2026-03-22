package com.startshorts.androidplayer.bean.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RedeemCodeEquity.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RedeemCodeEquity {
    @NotNull
    public static final String CONDITION_CODES_EARNBYDAYS = "earnByDays";
    @NotNull
    public static final String CONDITION_CODES_EARNSINGLE = "earnSingle";
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_BONUS = 12;
    public static final int TYPE_COINS = 11;
    @Nullable
    private final String text;
    @Nullable
    private final Integer type;
    @Nullable
    private final Integer value;

    /* compiled from: RedeemCodeEquity.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<String> getSupportConditionCodes() {
            return CollectionsKt.q(RedeemCodeEquity.CONDITION_CODES_EARNSINGLE, RedeemCodeEquity.CONDITION_CODES_EARNBYDAYS);
        }

        @NotNull
        public final List<Integer> getSupportTypes() {
            return CollectionsKt.q(11, 12);
        }

        private Companion() {
        }
    }

    public RedeemCodeEquity(@Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        this.type = num;
        this.value = num2;
        this.text = str;
    }

    public static /* synthetic */ RedeemCodeEquity copy$default(RedeemCodeEquity redeemCodeEquity, Integer num, Integer num2, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = redeemCodeEquity.type;
        }
        if ((i10 & 2) != 0) {
            num2 = redeemCodeEquity.value;
        }
        if ((i10 & 4) != 0) {
            str = redeemCodeEquity.text;
        }
        return redeemCodeEquity.copy(num, num2, str);
    }

    @Nullable
    public final Integer component1() {
        return this.type;
    }

    @Nullable
    public final Integer component2() {
        return this.value;
    }

    @Nullable
    public final String component3() {
        return this.text;
    }

    @NotNull
    public final RedeemCodeEquity copy(@Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        return new RedeemCodeEquity(num, num2, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RedeemCodeEquity)) {
            return false;
        }
        RedeemCodeEquity redeemCodeEquity = (RedeemCodeEquity) obj;
        if (Intrinsics.areEqual(this.type, redeemCodeEquity.type) && Intrinsics.areEqual(this.value, redeemCodeEquity.value) && Intrinsics.areEqual(this.text, redeemCodeEquity.text)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final Integer getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.type;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num2 = this.value;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str = this.text;
        if (str != null) {
            i10 = str.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "RedeemCodeEquity(type=" + this.type + ", value=" + this.value + ", text=" + this.text + ')';
    }
}
