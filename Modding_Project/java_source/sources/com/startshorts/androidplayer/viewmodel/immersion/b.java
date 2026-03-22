package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: EpisodeViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final BaseEpisode f48706a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f48707b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull BaseEpisode curEpisode, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(curEpisode, "curEpisode");
            this.f48706a = curEpisode;
            this.f48707b = z10;
        }

        @NotNull
        public final BaseEpisode a() {
            return this.f48706a;
        }

        public final boolean b() {
            return this.f48707b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f48706a, aVar.f48706a) && this.f48707b == aVar.f48707b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48706a.hashCode() * 31) + Boolean.hashCode(this.f48707b);
        }

        @NotNull
        public String toString() {
            return "PrevEpisodeUnlockedStatus(curEpisode=" + this.f48706a + ", prevEpisodeLocked=" + this.f48707b + ')';
        }
    }

    /* compiled from: EpisodeViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0661b extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final ShortsListNewBean f48708a;

        public C0661b(@Nullable ShortsListNewBean shortsListNewBean) {
            super(null);
            this.f48708a = shortsListNewBean;
        }

        @Nullable
        public final ShortsListNewBean a() {
            return this.f48708a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0661b) && Intrinsics.areEqual(this.f48708a, ((C0661b) obj).f48708a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            ShortsListNewBean shortsListNewBean = this.f48708a;
            if (shortsListNewBean == null) {
                return 0;
            }
            return shortsListNewBean.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowEpisodeList(shortsData=" + this.f48708a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
