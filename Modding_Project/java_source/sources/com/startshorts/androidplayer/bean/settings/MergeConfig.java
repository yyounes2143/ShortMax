package com.startshorts.androidplayer.bean.settings;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MergeConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MergeConfig {
    private boolean existsOtherSubscription;

    public MergeConfig(boolean z10) {
        this.existsOtherSubscription = z10;
    }

    public static /* synthetic */ MergeConfig copy$default(MergeConfig mergeConfig, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = mergeConfig.existsOtherSubscription;
        }
        return mergeConfig.copy(z10);
    }

    public final boolean component1() {
        return this.existsOtherSubscription;
    }

    @NotNull
    public final MergeConfig copy(boolean z10) {
        return new MergeConfig(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MergeConfig) && this.existsOtherSubscription == ((MergeConfig) obj).existsOtherSubscription) {
            return true;
        }
        return false;
    }

    public final boolean getExistsOtherSubscription() {
        return this.existsOtherSubscription;
    }

    public int hashCode() {
        return Boolean.hashCode(this.existsOtherSubscription);
    }

    public final void setExistsOtherSubscription(boolean z10) {
        this.existsOtherSubscription = z10;
    }

    @NotNull
    public String toString() {
        return "MergeConfig(existsOtherSubscription=" + this.existsOtherSubscription + ')';
    }
}
