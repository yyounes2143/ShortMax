package com.startshorts.androidplayer.bean.subs;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClaimSubsBonusResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ClaimSubsBonusResult {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int STATUS_CLAIMED = 2;
    private static final int STATUS_CLAIM_SUCCESS = 1;
    private int bonus;
    private final int receiveDay;
    private final int status;
    private final int type;

    /* compiled from: ClaimSubsBonusResult.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClaimSubsBonusResult(int i10, int i11, int i12, int i13) {
        this.bonus = i10;
        this.status = i11;
        this.receiveDay = i12;
        this.type = i13;
    }

    public static /* synthetic */ ClaimSubsBonusResult copy$default(ClaimSubsBonusResult claimSubsBonusResult, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = claimSubsBonusResult.bonus;
        }
        if ((i14 & 2) != 0) {
            i11 = claimSubsBonusResult.status;
        }
        if ((i14 & 4) != 0) {
            i12 = claimSubsBonusResult.receiveDay;
        }
        if ((i14 & 8) != 0) {
            i13 = claimSubsBonusResult.type;
        }
        return claimSubsBonusResult.copy(i10, i11, i12, i13);
    }

    public final int component1() {
        return this.bonus;
    }

    public final int component2() {
        return this.status;
    }

    public final int component3() {
        return this.receiveDay;
    }

    public final int component4() {
        return this.type;
    }

    @NotNull
    public final ClaimSubsBonusResult copy(int i10, int i11, int i12, int i13) {
        return new ClaimSubsBonusResult(i10, i11, i12, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClaimSubsBonusResult)) {
            return false;
        }
        ClaimSubsBonusResult claimSubsBonusResult = (ClaimSubsBonusResult) obj;
        if (this.bonus == claimSubsBonusResult.bonus && this.status == claimSubsBonusResult.status && this.receiveDay == claimSubsBonusResult.receiveDay && this.type == claimSubsBonusResult.type) {
            return true;
        }
        return false;
    }

    public final int getBonus() {
        return this.bonus;
    }

    public final int getReceiveDay() {
        return this.receiveDay;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.bonus) * 31) + Integer.hashCode(this.status)) * 31) + Integer.hashCode(this.receiveDay)) * 31) + Integer.hashCode(this.type);
    }

    public final boolean isClaimed() {
        if (this.status == 2) {
            return true;
        }
        return false;
    }

    public final void setBonus(int i10) {
        this.bonus = i10;
    }

    @NotNull
    public String toString() {
        return "ClaimSubsBonusResult(bonus=" + this.bonus + ", status=" + this.status + ", receiveDay=" + this.receiveDay + ", type=" + this.type + ')';
    }
}
