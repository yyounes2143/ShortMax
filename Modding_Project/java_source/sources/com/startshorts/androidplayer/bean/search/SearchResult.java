package com.startshorts.androidplayer.bean.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchResult {
    @Nullable
    private final RedeemCode codeInfo;
    @Nullable
    private final RedeemCodeVip memberInfo;
    @NotNull
    private final List<EpisodeSearchResult> shortPlays;

    public SearchResult(@NotNull List<EpisodeSearchResult> shortPlays, @Nullable RedeemCode redeemCode, @Nullable RedeemCodeVip redeemCodeVip) {
        Intrinsics.checkNotNullParameter(shortPlays, "shortPlays");
        this.shortPlays = shortPlays;
        this.codeInfo = redeemCode;
        this.memberInfo = redeemCodeVip;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchResult copy$default(SearchResult searchResult, List list, RedeemCode redeemCode, RedeemCodeVip redeemCodeVip, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = searchResult.shortPlays;
        }
        if ((i10 & 2) != 0) {
            redeemCode = searchResult.codeInfo;
        }
        if ((i10 & 4) != 0) {
            redeemCodeVip = searchResult.memberInfo;
        }
        return searchResult.copy(list, redeemCode, redeemCodeVip);
    }

    @NotNull
    public final List<EpisodeSearchResult> component1() {
        return this.shortPlays;
    }

    @Nullable
    public final RedeemCode component2() {
        return this.codeInfo;
    }

    @Nullable
    public final RedeemCodeVip component3() {
        return this.memberInfo;
    }

    @NotNull
    public final SearchResult copy(@NotNull List<EpisodeSearchResult> shortPlays, @Nullable RedeemCode redeemCode, @Nullable RedeemCodeVip redeemCodeVip) {
        Intrinsics.checkNotNullParameter(shortPlays, "shortPlays");
        return new SearchResult(shortPlays, redeemCode, redeemCodeVip);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchResult)) {
            return false;
        }
        SearchResult searchResult = (SearchResult) obj;
        if (Intrinsics.areEqual(this.shortPlays, searchResult.shortPlays) && Intrinsics.areEqual(this.codeInfo, searchResult.codeInfo) && Intrinsics.areEqual(this.memberInfo, searchResult.memberInfo)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final RedeemCode getCodeInfo() {
        return this.codeInfo;
    }

    @Nullable
    public final RedeemCodeVip getMemberInfo() {
        return this.memberInfo;
    }

    @NotNull
    public final List<EpisodeSearchResult> getShortPlays() {
        return this.shortPlays;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.shortPlays.hashCode() * 31;
        RedeemCode redeemCode = this.codeInfo;
        int i10 = 0;
        if (redeemCode == null) {
            hashCode = 0;
        } else {
            hashCode = redeemCode.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        RedeemCodeVip redeemCodeVip = this.memberInfo;
        if (redeemCodeVip != null) {
            i10 = redeemCodeVip.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "SearchResult(shortPlays=" + this.shortPlays + ", codeInfo=" + this.codeInfo + ", memberInfo=" + this.memberInfo + ')';
    }
}
