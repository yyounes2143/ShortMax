package com.startshorts.androidplayer.viewmodel.shorts;

import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: ShortsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.shorts.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0691a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0691a f49400a = new C0691a();

        private C0691a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0691a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -624033559;
        }

        @NotNull
        public String toString() {
            return "CancelPreloadNextEpisodeForImmersion";
        }
    }

    /* compiled from: ShortsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49401a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<ShortsEpisode> f49402b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49403c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49404d;

        public b(boolean z10, @Nullable List<ShortsEpisode> list, int i10, int i11) {
            super(null);
            this.f49401a = z10;
            this.f49402b = list;
            this.f49403c = i10;
            this.f49404d = i11;
        }

        public final int a() {
            return this.f49403c;
        }

        @Nullable
        public final List<ShortsEpisode> b() {
            return this.f49402b;
        }

        public final boolean c() {
            return this.f49401a;
        }

        public final int d() {
            return this.f49404d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f49401a == bVar.f49401a && Intrinsics.areEqual(this.f49402b, bVar.f49402b) && this.f49403c == bVar.f49403c && this.f49404d == bVar.f49404d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49401a) * 31;
            List<ShortsEpisode> list = this.f49402b;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            return ((((hashCode2 + hashCode) * 31) + Integer.hashCode(this.f49403c)) * 31) + Integer.hashCode(this.f49404d);
        }

        @NotNull
        public String toString() {
            return "LoadEpisodes(loadMore=" + this.f49401a + ", list=" + this.f49402b + ", currentPosition=" + this.f49403c + ", pageSize=" + this.f49404d + ')';
        }
    }

    /* compiled from: ShortsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ShortsEpisode f49405a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ShortsEpisode episode) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            this.f49405a = episode;
        }

        @NotNull
        public final ShortsEpisode a() {
            return this.f49405a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49405a, ((c) obj).f49405a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49405a.hashCode();
        }

        @NotNull
        public String toString() {
            return "PreloadNextEpisodeForImmersion(episode=" + this.f49405a + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
