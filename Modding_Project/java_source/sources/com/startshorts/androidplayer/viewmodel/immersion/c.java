package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ImmersionParams f48709a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ImmersionParams params) {
            super(null);
            Intrinsics.checkNotNullParameter(params, "params");
            this.f48709a = params;
        }

        @NotNull
        public final ImmersionParams a() {
            return this.f48709a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48709a, ((a) obj).f48709a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48709a.hashCode();
        }

        @NotNull
        public String toString() {
            return "FirstLoadEpisodes(params=" + this.f48709a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends c {
        public b() {
            super(null);
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0662c extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final BaseEpisode f48710a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f48711b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0662c(@NotNull BaseEpisode episode, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            this.f48710a = episode;
            this.f48711b = z10;
        }

        @NotNull
        public final BaseEpisode a() {
            return this.f48710a;
        }

        public final boolean b() {
            return this.f48711b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0662c)) {
                return false;
            }
            C0662c c0662c = (C0662c) obj;
            if (Intrinsics.areEqual(this.f48710a, c0662c.f48710a) && this.f48711b == c0662c.f48711b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48710a.hashCode() * 31) + Boolean.hashCode(this.f48711b);
        }

        @NotNull
        public String toString() {
            return "PreloadNextEpisodes(episode=" + this.f48710a + ", fromUser=" + this.f48711b + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48712a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48713b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f48714c;

        public d(int i10, int i11, boolean z10) {
            super(null);
            this.f48712a = i10;
            this.f48713b = i11;
            this.f48714c = z10;
        }

        public final int a() {
            return this.f48712a;
        }

        public final boolean b() {
            return this.f48714c;
        }

        public final int c() {
            return this.f48713b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f48712a == dVar.f48712a && this.f48713b == dVar.f48713b && this.f48714c == dVar.f48714c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f48712a) * 31) + Integer.hashCode(this.f48713b)) * 31) + Boolean.hashCode(this.f48714c);
        }

        @NotNull
        public String toString() {
            return "PreloadPrevEpisodes(episodeId=" + this.f48712a + ", videoType=" + this.f48713b + ", toastError=" + this.f48714c + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48715a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48716b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48717c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48718d;

        public e(@Nullable Context context, int i10, int i11, int i12) {
            super(null);
            this.f48715a = context;
            this.f48716b = i10;
            this.f48717c = i11;
            this.f48718d = i12;
        }

        @Nullable
        public final Context a() {
            return this.f48715a;
        }

        public final int b() {
            return this.f48716b;
        }

        public final int c() {
            return this.f48717c;
        }

        public final int d() {
            return this.f48718d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48715a, eVar.f48715a) && this.f48716b == eVar.f48716b && this.f48717c == eVar.f48717c && this.f48718d == eVar.f48718d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48715a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((hashCode * 31) + Integer.hashCode(this.f48716b)) * 31) + Integer.hashCode(this.f48717c)) * 31) + Integer.hashCode(this.f48718d);
        }

        @NotNull
        public String toString() {
            return "QueryEpisodeDetail(context=" + this.f48715a + ", episodeId=" + this.f48716b + ", reason=" + this.f48717c + ", videoType=" + this.f48718d + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48719a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48720b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f48721c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48722d;

        public final int a() {
            return this.f48720b;
        }

        public final int b() {
            return this.f48719a;
        }

        public final int c() {
            return this.f48722d;
        }

        public final boolean d() {
            return this.f48721c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f48719a == fVar.f48719a && this.f48720b == fVar.f48720b && this.f48721c == fVar.f48721c && this.f48722d == fVar.f48722d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.f48719a) * 31) + Integer.hashCode(this.f48720b)) * 31) + Boolean.hashCode(this.f48721c)) * 31) + Integer.hashCode(this.f48722d);
        }

        @NotNull
        public String toString() {
            return "QueryEpisodesByEpisodeNum(shortsId=" + this.f48719a + ", episodeNum=" + this.f48720b + ", isMergeShorts=" + this.f48721c + ", videoType=" + this.f48722d + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48723a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48724b;

        public final int a() {
            return this.f48723a;
        }

        public final int b() {
            return this.f48724b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f48723a == gVar.f48723a && this.f48724b == gVar.f48724b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48723a) * 31) + Integer.hashCode(this.f48724b);
        }

        @NotNull
        public String toString() {
            return "QueryEpisodesByShortsId(shortsId=" + this.f48723a + ", videoType=" + this.f48724b + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48725a;

        public h(int i10) {
            super(null);
            this.f48725a = i10;
        }

        public final int a() {
            return this.f48725a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && this.f48725a == ((h) obj).f48725a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48725a);
        }

        @NotNull
        public String toString() {
            return "QueryImmersionBackShorts(shortsId=" + this.f48725a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48726a;

        public i(int i10) {
            super(null);
            this.f48726a = i10;
        }

        public final int a() {
            return this.f48726a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && this.f48726a == ((i) obj).f48726a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48726a);
        }

        @NotNull
        public String toString() {
            return "QueryShortDiscount(shortsId=" + this.f48726a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48727a;

        public j(int i10) {
            super(null);
            this.f48727a = i10;
        }

        public final int a() {
            return this.f48727a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof j) && this.f48727a == ((j) obj).f48727a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48727a);
        }

        @NotNull
        public String toString() {
            return "QueryShortsDetail(shortsId=" + this.f48727a + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48728a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48729b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48730c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48731d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final ImmersionActivity.ResetReason f48732e;

        public /* synthetic */ k(Context context, int i10, int i11, int i12, ImmersionActivity.ResetReason resetReason, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? null : context, i10, i11, i12, (i13 & 16) != 0 ? null : resetReason);
        }

        @Nullable
        public final Context a() {
            return this.f48728a;
        }

        public final int b() {
            return this.f48730c;
        }

        @Nullable
        public final ImmersionActivity.ResetReason c() {
            return this.f48732e;
        }

        public final int d() {
            return this.f48729b;
        }

        public final int e() {
            return this.f48731d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            if (Intrinsics.areEqual(this.f48728a, kVar.f48728a) && this.f48729b == kVar.f48729b && this.f48730c == kVar.f48730c && this.f48731d == kVar.f48731d && this.f48732e == kVar.f48732e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48728a;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode2 = ((((((hashCode * 31) + Integer.hashCode(this.f48729b)) * 31) + Integer.hashCode(this.f48730c)) * 31) + Integer.hashCode(this.f48731d)) * 31;
            ImmersionActivity.ResetReason resetReason = this.f48732e;
            if (resetReason != null) {
                i10 = resetReason.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryVideoListByCurEpisodeId(context=" + this.f48728a + ", shortsId=" + this.f48729b + ", episodeId=" + this.f48730c + ", videoType=" + this.f48731d + ", resetReason=" + this.f48732e + ')';
        }

        public k(@Nullable Context context, int i10, int i11, int i12, @Nullable ImmersionActivity.ResetReason resetReason) {
            super(null);
            this.f48728a = context;
            this.f48729b = i10;
            this.f48730c = i11;
            this.f48731d = i12;
            this.f48732e = resetReason;
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48733a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48734b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48735c;

        public final int a() {
            return this.f48734b;
        }

        public final int b() {
            return this.f48733a;
        }

        public final int c() {
            return this.f48735c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            if (this.f48733a == lVar.f48733a && this.f48734b == lVar.f48734b && this.f48735c == lVar.f48735c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f48733a) * 31) + Integer.hashCode(this.f48734b)) * 31) + Integer.hashCode(this.f48735c);
        }

        @NotNull
        public String toString() {
            return "QueryVideoListByPrevEpisodeId(shortsId=" + this.f48733a + ", episodeId=" + this.f48734b + ", videoType=" + this.f48735c + ')';
        }
    }

    /* compiled from: ImmersionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48736a;

        public m(@Nullable String str) {
            super(null);
            this.f48736a = str;
        }

        @Nullable
        public final String a() {
            return this.f48736a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof m) && Intrinsics.areEqual(this.f48736a, ((m) obj).f48736a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48736a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "SetFrom(from=" + this.f48736a + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
