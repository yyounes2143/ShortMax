package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.campaign.GoogleEventUploadInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final GoogleEventUploadInfo f48737a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull GoogleEventUploadInfo googleCampaignInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(googleCampaignInfo, "googleCampaignInfo");
            this.f48737a = googleCampaignInfo;
        }

        @NotNull
        public final GoogleEventUploadInfo a() {
            return this.f48737a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48737a, ((a) obj).f48737a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48737a.hashCode();
        }

        @NotNull
        public String toString() {
            return "GetMatchEventUploadInfoSuccess(googleCampaignInfo=" + this.f48737a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private final int f48738a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final BaseEpisode f48739b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, @NotNull BaseEpisode episode) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            this.f48738a = i10;
            this.f48739b = episode;
        }

        @NotNull
        public final BaseEpisode a() {
            return this.f48739b;
        }

        public final int b() {
            return this.f48738a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f48738a == bVar.f48738a && Intrinsics.areEqual(this.f48739b, bVar.f48739b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48738a) * 31) + this.f48739b.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryEpisodeDetailSuccess(reason=" + this.f48738a + ", episode=" + this.f48739b + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f48740a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48741b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ApiErrorState apiErrorState, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(apiErrorState, "apiErrorState");
            this.f48740a = apiErrorState;
            this.f48741b = str;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f48740a;
        }

        @Nullable
        public final String b() {
            return this.f48741b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f48740a, cVar.f48740a) && Intrinsics.areEqual(this.f48741b, cVar.f48741b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f48740a.hashCode() * 31;
            String str = this.f48741b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "QueryEpisodesFailed(apiErrorState=" + this.f48740a + ", realErrMsg=" + this.f48741b + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.d$d  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0663d extends d {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48742a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48743b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48744c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final QueryEpisodesResult f48745d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final ImmersionActivity.ResetReason f48746e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0663d(boolean z10, int i10, int i11, @NotNull QueryEpisodesResult result, @Nullable ImmersionActivity.ResetReason resetReason) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.f48742a = z10;
            this.f48743b = i10;
            this.f48744c = i11;
            this.f48745d = result;
            this.f48746e = resetReason;
        }

        public final int a() {
            return this.f48744c;
        }

        public final int b() {
            return this.f48743b;
        }

        public final boolean c() {
            return this.f48742a;
        }

        @Nullable
        public final ImmersionActivity.ResetReason d() {
            return this.f48746e;
        }

        @NotNull
        public final QueryEpisodesResult e() {
            return this.f48745d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0663d)) {
                return false;
            }
            C0663d c0663d = (C0663d) obj;
            if (this.f48742a == c0663d.f48742a && this.f48743b == c0663d.f48743b && this.f48744c == c0663d.f48744c && Intrinsics.areEqual(this.f48745d, c0663d.f48745d) && this.f48746e == c0663d.f48746e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((((((Boolean.hashCode(this.f48742a) * 31) + Integer.hashCode(this.f48743b)) * 31) + Integer.hashCode(this.f48744c)) * 31) + this.f48745d.hashCode()) * 31;
            ImmersionActivity.ResetReason resetReason = this.f48746e;
            if (resetReason == null) {
                hashCode = 0;
            } else {
                hashCode = resetReason.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "QueryEpisodesSuccess(preload=" + this.f48742a + ", expectPrevSize=" + this.f48743b + ", expectNextSize=" + this.f48744c + ", result=" + this.f48745d + ", resetReason=" + this.f48746e + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends d {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48747a;

        public e(boolean z10) {
            super(null);
            this.f48747a = z10;
        }

        public final boolean a() {
            return this.f48747a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f48747a == ((e) obj).f48747a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f48747a);
        }

        @NotNull
        public String toString() {
            return "QueryNextEpisodesFinished(success=" + this.f48747a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f48748a = new f();

        private f() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1724529366;
        }

        @NotNull
        public String toString() {
            return "QueryPrevEpisodesFinished";
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends d {

        /* renamed from: a  reason: collision with root package name */
        private final int f48749a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final ShortDiscountSku f48750b;

        public g(int i10, @Nullable ShortDiscountSku shortDiscountSku) {
            super(null);
            this.f48749a = i10;
            this.f48750b = shortDiscountSku;
        }

        public final int a() {
            return this.f48749a;
        }

        @Nullable
        public final ShortDiscountSku b() {
            return this.f48750b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f48749a == gVar.f48749a && Intrinsics.areEqual(this.f48750b, gVar.f48750b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f48749a) * 31;
            ShortDiscountSku shortDiscountSku = this.f48750b;
            if (shortDiscountSku == null) {
                hashCode = 0;
            } else {
                hashCode = shortDiscountSku.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "QueryShortDiscountSuccess(shortsId=" + this.f48749a + ", sku=" + this.f48750b + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ShortsDetail f48751a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull ShortsDetail shortsDetail) {
            super(null);
            Intrinsics.checkNotNullParameter(shortsDetail, "shortsDetail");
            this.f48751a = shortsDetail;
        }

        @NotNull
        public final ShortsDetail a() {
            return this.f48751a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f48751a, ((h) obj).f48751a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48751a.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryShortsDetailSuccess(shortsDetail=" + this.f48751a + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
