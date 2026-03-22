package com.startshorts.androidplayer.viewmodel.recommend;

import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewUserRecommendShortViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: NewUserRecommendShortViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.recommend.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0679a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final QueryCampaignRecommendShortsResult f49080a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0679a(@NotNull QueryCampaignRecommendShortsResult result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.f49080a = result;
        }

        @NotNull
        public final QueryCampaignRecommendShortsResult a() {
            return this.f49080a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0679a) && Intrinsics.areEqual(this.f49080a, ((C0679a) obj).f49080a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49080a.hashCode();
        }

        @NotNull
        public String toString() {
            return "RecommendSuccess(result=" + this.f49080a + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
