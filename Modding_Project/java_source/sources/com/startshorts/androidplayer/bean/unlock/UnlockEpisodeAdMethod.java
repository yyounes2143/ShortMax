package com.startshorts.androidplayer.bean.unlock;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnlockEpisodeAdMethod.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UnlockEpisodeAdMethod {
    private int canWatchAdNum;
    private long nextRefreshTime;
    private boolean payTemplateShowAd;
    private int totalWatchAdNum;

    public final boolean enable() {
        if (this.totalWatchAdNum > 0 && this.canWatchAdNum > 0) {
            return true;
        }
        return false;
    }

    public final int getCanWatchAdNum() {
        return this.canWatchAdNum;
    }

    public final long getNextRefreshTime() {
        return this.nextRefreshTime;
    }

    public final boolean getPayTemplateShowAd() {
        return this.payTemplateShowAd;
    }

    public final int getTotalWatchAdNum() {
        return this.totalWatchAdNum;
    }

    public final void setCanWatchAdNum(int i10) {
        this.canWatchAdNum = i10;
    }

    public final void setNextRefreshTime(long j10) {
        this.nextRefreshTime = j10;
    }

    public final void setPayTemplateShowAd(boolean z10) {
        this.payTemplateShowAd = z10;
    }

    public final void setTotalWatchAdNum(int i10) {
        this.totalWatchAdNum = i10;
    }

    @NotNull
    public String toString() {
        return "UnlockEpisodeAdMethod(payTemplateShowAd=" + this.payTemplateShowAd + ", canWatchAdNum=" + this.canWatchAdNum + ", totalWatchAdNum=" + this.totalWatchAdNum + ", nextRefreshTime=" + this.nextRefreshTime + ')';
    }
}
