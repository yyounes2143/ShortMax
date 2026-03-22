package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectionViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.mylist.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0668a extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48881a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48882b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48883c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final BaseEpisode f48884d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f48885e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f48886f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0668a(@Nullable Context context, int i10, int i11, @NotNull BaseEpisode episode, @NotNull String scene, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f48881a = context;
            this.f48882b = i10;
            this.f48883c = i11;
            this.f48884d = episode;
            this.f48885e = scene;
            this.f48886f = z10;
        }

        @Nullable
        public final Context a() {
            return this.f48881a;
        }

        @NotNull
        public final BaseEpisode b() {
            return this.f48884d;
        }

        @NotNull
        public final String c() {
            return this.f48885e;
        }

        public final int d() {
            return this.f48883c;
        }

        public final int e() {
            return this.f48882b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0668a)) {
                return false;
            }
            C0668a c0668a = (C0668a) obj;
            if (Intrinsics.areEqual(this.f48881a, c0668a.f48881a) && this.f48882b == c0668a.f48882b && this.f48883c == c0668a.f48883c && Intrinsics.areEqual(this.f48884d, c0668a.f48884d) && Intrinsics.areEqual(this.f48885e, c0668a.f48885e) && this.f48886f == c0668a.f48886f) {
                return true;
            }
            return false;
        }

        public final boolean f() {
            return this.f48886f;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48881a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((((((hashCode * 31) + Integer.hashCode(this.f48882b)) * 31) + Integer.hashCode(this.f48883c)) * 31) + this.f48884d.hashCode()) * 31) + this.f48885e.hashCode()) * 31) + Boolean.hashCode(this.f48886f);
        }

        @NotNull
        public String toString() {
            return "AddCollection(context=" + this.f48881a + ", type=" + this.f48882b + ", source=" + this.f48883c + ", episode=" + this.f48884d + ", scene=" + this.f48885e + ", isAuto=" + this.f48886f + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48887a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48888b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48889c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final BaseEpisode f48890d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f48891e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f48892f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@Nullable Context context, int i10, int i11, @NotNull BaseEpisode episode, @NotNull String scene, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(episode, "episode");
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f48887a = context;
            this.f48888b = i10;
            this.f48889c = i11;
            this.f48890d = episode;
            this.f48891e = scene;
            this.f48892f = z10;
        }

        @Nullable
        public final Context a() {
            return this.f48887a;
        }

        @NotNull
        public final BaseEpisode b() {
            return this.f48890d;
        }

        @NotNull
        public final String c() {
            return this.f48891e;
        }

        public final int d() {
            return this.f48889c;
        }

        public final int e() {
            return this.f48888b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48887a, bVar.f48887a) && this.f48888b == bVar.f48888b && this.f48889c == bVar.f48889c && Intrinsics.areEqual(this.f48890d, bVar.f48890d) && Intrinsics.areEqual(this.f48891e, bVar.f48891e) && this.f48892f == bVar.f48892f) {
                return true;
            }
            return false;
        }

        public final boolean f() {
            return this.f48892f;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48887a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((((((hashCode * 31) + Integer.hashCode(this.f48888b)) * 31) + Integer.hashCode(this.f48889c)) * 31) + this.f48890d.hashCode()) * 31) + this.f48891e.hashCode()) * 31) + Boolean.hashCode(this.f48892f);
        }

        @NotNull
        public String toString() {
            return "CancelCollection(context=" + this.f48887a + ", type=" + this.f48888b + ", source=" + this.f48889c + ", episode=" + this.f48890d + ", scene=" + this.f48891e + ", isAuto=" + this.f48892f + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48893a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<Long> f48894b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Integer> f48895c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@Nullable Context context, @NotNull List<Long> collectionIds, @NotNull List<Integer> shortsIds) {
            super(null);
            Intrinsics.checkNotNullParameter(collectionIds, "collectionIds");
            Intrinsics.checkNotNullParameter(shortsIds, "shortsIds");
            this.f48893a = context;
            this.f48894b = collectionIds;
            this.f48895c = shortsIds;
        }

        @NotNull
        public final List<Long> a() {
            return this.f48894b;
        }

        @Nullable
        public final Context b() {
            return this.f48893a;
        }

        @NotNull
        public final List<Integer> c() {
            return this.f48895c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f48893a, cVar.f48893a) && Intrinsics.areEqual(this.f48894b, cVar.f48894b) && Intrinsics.areEqual(this.f48895c, cVar.f48895c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48893a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((hashCode * 31) + this.f48894b.hashCode()) * 31) + this.f48895c.hashCode();
        }

        @NotNull
        public String toString() {
            return "CancelCollections(context=" + this.f48893a + ", collectionIds=" + this.f48894b + ", shortsIds=" + this.f48895c + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48896a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<Long> f48897b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Integer> f48898c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final CancelCollectBatchRequest f48899d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@Nullable Context context, @NotNull List<Long> collectionIds, @NotNull List<Integer> shortsIds, @NotNull CancelCollectBatchRequest cancelRequest) {
            super(null);
            Intrinsics.checkNotNullParameter(collectionIds, "collectionIds");
            Intrinsics.checkNotNullParameter(shortsIds, "shortsIds");
            Intrinsics.checkNotNullParameter(cancelRequest, "cancelRequest");
            this.f48896a = context;
            this.f48897b = collectionIds;
            this.f48898c = shortsIds;
            this.f48899d = cancelRequest;
        }

        @NotNull
        public final CancelCollectBatchRequest a() {
            return this.f48899d;
        }

        @NotNull
        public final List<Long> b() {
            return this.f48897b;
        }

        @Nullable
        public final Context c() {
            return this.f48896a;
        }

        @NotNull
        public final List<Integer> d() {
            return this.f48898c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f48896a, dVar.f48896a) && Intrinsics.areEqual(this.f48897b, dVar.f48897b) && Intrinsics.areEqual(this.f48898c, dVar.f48898c) && Intrinsics.areEqual(this.f48899d, dVar.f48899d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48896a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((hashCode * 31) + this.f48897b.hashCode()) * 31) + this.f48898c.hashCode()) * 31) + this.f48899d.hashCode();
        }

        @NotNull
        public String toString() {
            return "CancelCollectionsV2(context=" + this.f48896a + ", collectionIds=" + this.f48897b + ", shortsIds=" + this.f48898c + ", cancelRequest=" + this.f48899d + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private final long f48900a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48901b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48902c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<Integer> f48903d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(long j10, int i10, int i11, @NotNull List<Integer> sources) {
            super(null);
            Intrinsics.checkNotNullParameter(sources, "sources");
            this.f48900a = j10;
            this.f48901b = i10;
            this.f48902c = i11;
            this.f48903d = sources;
        }

        public final long a() {
            return this.f48900a;
        }

        public final int b() {
            return this.f48901b;
        }

        @NotNull
        public final List<Integer> c() {
            return this.f48903d;
        }

        public final int d() {
            return this.f48902c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f48900a == eVar.f48900a && this.f48901b == eVar.f48901b && this.f48902c == eVar.f48902c && Intrinsics.areEqual(this.f48903d, eVar.f48903d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((Long.hashCode(this.f48900a) * 31) + Integer.hashCode(this.f48901b)) * 31) + Integer.hashCode(this.f48902c)) * 31) + this.f48903d.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadCollections(lastTime=" + this.f48900a + ", pageSize=" + this.f48901b + ", type=" + this.f48902c + ", sources=" + this.f48903d + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends a {

        /* renamed from: a  reason: collision with root package name */
        private final long f48904a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48905b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48906c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<Integer> f48907d;

        /* renamed from: e  reason: collision with root package name */
        private final int f48908e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(long j10, int i10, int i11, @NotNull List<Integer> sources, int i12) {
            super(null);
            Intrinsics.checkNotNullParameter(sources, "sources");
            this.f48904a = j10;
            this.f48905b = i10;
            this.f48906c = i11;
            this.f48907d = sources;
            this.f48908e = i12;
        }

        public final int a() {
            return this.f48908e;
        }

        public final long b() {
            return this.f48904a;
        }

        public final int c() {
            return this.f48905b;
        }

        @NotNull
        public final List<Integer> d() {
            return this.f48907d;
        }

        public final int e() {
            return this.f48906c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f48904a == fVar.f48904a && this.f48905b == fVar.f48905b && this.f48906c == fVar.f48906c && Intrinsics.areEqual(this.f48907d, fVar.f48907d) && this.f48908e == fVar.f48908e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((Long.hashCode(this.f48904a) * 31) + Integer.hashCode(this.f48905b)) * 31) + Integer.hashCode(this.f48906c)) * 31) + this.f48907d.hashCode()) * 31) + Integer.hashCode(this.f48908e);
        }

        @NotNull
        public String toString() {
            return "LoadCollectionsV2(lastTime=" + this.f48904a + ", pageSize=" + this.f48905b + ", type=" + this.f48906c + ", sources=" + this.f48907d + ", currentCount=" + this.f48908e + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48909a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f48910b;

        public g(int i10, boolean z10) {
            super(null);
            this.f48909a = i10;
            this.f48910b = z10;
        }

        public final boolean a() {
            return this.f48910b;
        }

        public final int b() {
            return this.f48909a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f48909a == gVar.f48909a && this.f48910b == gVar.f48910b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48909a) * 31) + Boolean.hashCode(this.f48910b);
        }

        @NotNull
        public String toString() {
            return "NotifyCollectionState(shortsId=" + this.f48909a + ", collect=" + this.f48910b + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
