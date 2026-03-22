package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshPayScoreResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshPayScoreResult {
    private final boolean value;

    public RefreshPayScoreResult(boolean z10) {
        this.value = z10;
    }

    public static /* synthetic */ RefreshPayScoreResult copy$default(RefreshPayScoreResult refreshPayScoreResult, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = refreshPayScoreResult.value;
        }
        return refreshPayScoreResult.copy(z10);
    }

    public final boolean component1() {
        return this.value;
    }

    @NotNull
    public final RefreshPayScoreResult copy(boolean z10) {
        return new RefreshPayScoreResult(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RefreshPayScoreResult) && this.value == ((RefreshPayScoreResult) obj).value) {
            return true;
        }
        return false;
    }

    public final boolean getValue() {
        return this.value;
    }

    public int hashCode() {
        return Boolean.hashCode(this.value);
    }

    @NotNull
    public String toString() {
        return "RefreshPayScoreResult(value=" + this.value + ')';
    }
}
