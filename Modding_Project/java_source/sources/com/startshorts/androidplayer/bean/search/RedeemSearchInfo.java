package com.startshorts.androidplayer.bean.search;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RedeemSearchInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RedeemSearchInfo {
    @NotNull
    private final String code;
    private final long time;

    public RedeemSearchInfo(@NotNull String code, long j10) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.code = code;
        this.time = j10;
    }

    public static /* synthetic */ RedeemSearchInfo copy$default(RedeemSearchInfo redeemSearchInfo, String str, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = redeemSearchInfo.code;
        }
        if ((i10 & 2) != 0) {
            j10 = redeemSearchInfo.time;
        }
        return redeemSearchInfo.copy(str, j10);
    }

    @NotNull
    public final String component1() {
        return this.code;
    }

    public final long component2() {
        return this.time;
    }

    @NotNull
    public final RedeemSearchInfo copy(@NotNull String code, long j10) {
        Intrinsics.checkNotNullParameter(code, "code");
        return new RedeemSearchInfo(code, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RedeemSearchInfo)) {
            return false;
        }
        RedeemSearchInfo redeemSearchInfo = (RedeemSearchInfo) obj;
        if (Intrinsics.areEqual(this.code, redeemSearchInfo.code) && this.time == redeemSearchInfo.time) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    public final long getTime() {
        return this.time;
    }

    public int hashCode() {
        return (this.code.hashCode() * 31) + Long.hashCode(this.time);
    }

    @NotNull
    public String toString() {
        return "RedeemSearchInfo(code=" + this.code + ", time=" + this.time + ')';
    }
}
