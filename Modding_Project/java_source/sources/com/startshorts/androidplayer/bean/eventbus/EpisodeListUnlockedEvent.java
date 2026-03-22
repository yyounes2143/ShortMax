package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeListUnlockedEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeListUnlockedEvent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int UNLOCK_TYPE_AD = 3;
    public static final int UNLOCK_TYPE_BATCH = 2;
    public static final int UNLOCK_TYPE_DISCOUNT = 5;
    public static final int UNLOCK_TYPE_SINGLE = 1;
    public static final int UNLOCK_TYPE_SUBS = 4;
    private final boolean canWatchAd;
    @Nullable
    private final List<BaseEpisode> list;
    @Nullable
    private final BaseEpisode nextDrama;
    private final int unlockType;
    private final boolean userRecharged;

    /* compiled from: EpisodeListUnlockedEvent.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public EpisodeListUnlockedEvent(int i10, @Nullable List<BaseEpisode> list, boolean z10, boolean z11, @Nullable BaseEpisode baseEpisode) {
        this.unlockType = i10;
        this.list = list;
        this.userRecharged = z10;
        this.canWatchAd = z11;
        this.nextDrama = baseEpisode;
    }

    public static /* synthetic */ EpisodeListUnlockedEvent copy$default(EpisodeListUnlockedEvent episodeListUnlockedEvent, int i10, List list, boolean z10, boolean z11, BaseEpisode baseEpisode, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = episodeListUnlockedEvent.unlockType;
        }
        List<BaseEpisode> list2 = list;
        if ((i11 & 2) != 0) {
            list2 = episodeListUnlockedEvent.list;
        }
        List list3 = list2;
        if ((i11 & 4) != 0) {
            z10 = episodeListUnlockedEvent.userRecharged;
        }
        boolean z12 = z10;
        if ((i11 & 8) != 0) {
            z11 = episodeListUnlockedEvent.canWatchAd;
        }
        boolean z13 = z11;
        if ((i11 & 16) != 0) {
            baseEpisode = episodeListUnlockedEvent.nextDrama;
        }
        return episodeListUnlockedEvent.copy(i10, list3, z12, z13, baseEpisode);
    }

    public final int component1() {
        return this.unlockType;
    }

    @Nullable
    public final List<BaseEpisode> component2() {
        return this.list;
    }

    public final boolean component3() {
        return this.userRecharged;
    }

    public final boolean component4() {
        return this.canWatchAd;
    }

    @Nullable
    public final BaseEpisode component5() {
        return this.nextDrama;
    }

    @NotNull
    public final EpisodeListUnlockedEvent copy(int i10, @Nullable List<BaseEpisode> list, boolean z10, boolean z11, @Nullable BaseEpisode baseEpisode) {
        return new EpisodeListUnlockedEvent(i10, list, z10, z11, baseEpisode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EpisodeListUnlockedEvent)) {
            return false;
        }
        EpisodeListUnlockedEvent episodeListUnlockedEvent = (EpisodeListUnlockedEvent) obj;
        if (this.unlockType == episodeListUnlockedEvent.unlockType && Intrinsics.areEqual(this.list, episodeListUnlockedEvent.list) && this.userRecharged == episodeListUnlockedEvent.userRecharged && this.canWatchAd == episodeListUnlockedEvent.canWatchAd && Intrinsics.areEqual(this.nextDrama, episodeListUnlockedEvent.nextDrama)) {
            return true;
        }
        return false;
    }

    public final boolean getCanWatchAd() {
        return this.canWatchAd;
    }

    public final int getFirstUnlockedEpisodeId() {
        BaseEpisode baseEpisode;
        List<BaseEpisode> list = this.list;
        if (list != null && (baseEpisode = (BaseEpisode) CollectionsKt.r0(list)) != null) {
            return baseEpisode.getId();
        }
        return -1;
    }

    @Nullable
    public final List<BaseEpisode> getList() {
        return this.list;
    }

    @Nullable
    public final BaseEpisode getNextDrama() {
        return this.nextDrama;
    }

    public final int getUnlockType() {
        return this.unlockType;
    }

    public final boolean getUserRecharged() {
        return this.userRecharged;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.unlockType) * 31;
        List<BaseEpisode> list = this.list;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode3 = (((((hashCode2 + hashCode) * 31) + Boolean.hashCode(this.userRecharged)) * 31) + Boolean.hashCode(this.canWatchAd)) * 31;
        BaseEpisode baseEpisode = this.nextDrama;
        if (baseEpisode != null) {
            i10 = baseEpisode.hashCode();
        }
        return hashCode3 + i10;
    }

    @NotNull
    public String toString() {
        return "EpisodeListUnlockedEvent(unlockType=" + this.unlockType + ", list=" + this.list + ", userRecharged=" + this.userRecharged + ", canWatchAd=" + this.canWatchAd + ", nextDrama=" + this.nextDrama + ')';
    }

    public /* synthetic */ EpisodeListUnlockedEvent(int i10, List list, boolean z10, boolean z11, BaseEpisode baseEpisode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, list, z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? null : baseEpisode);
    }
}
