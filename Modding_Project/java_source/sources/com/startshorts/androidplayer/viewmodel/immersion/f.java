package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class f {

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48783a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48784b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z10, @NotNull String action) {
            super(null);
            Intrinsics.checkNotNullParameter(action, "action");
            this.f48783a = z10;
            this.f48784b = action;
        }

        @NotNull
        public final String a() {
            return this.f48784b;
        }

        public final boolean b() {
            return this.f48783a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f48783a == aVar.f48783a && Intrinsics.areEqual(this.f48784b, aVar.f48784b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Boolean.hashCode(this.f48783a) * 31) + this.f48784b.hashCode();
        }

        @NotNull
        public String toString() {
            return "CanShowAdContinueDialog(canShow=" + this.f48783a + ", action=" + this.f48784b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<zc.g> f48785a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull List<zc.g> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f48785a = list;
        }

        @NotNull
        public final List<zc.g> a() {
            return this.f48785a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48785a, ((b) obj).f48785a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48785a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Products(list=" + this.f48785a + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<UnlockEpisodeMethod> f48786a;

        public c(@Nullable List<UnlockEpisodeMethod> list) {
            super(null);
            this.f48786a = list;
        }

        @Nullable
        public final List<UnlockEpisodeMethod> a() {
            return this.f48786a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48786a, ((c) obj).f48786a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<UnlockEpisodeMethod> list = this.f48786a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowUnlockEpisodeMethods(list=" + this.f48786a + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f48787a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Integer f48788b;

        public d(int i10, @Nullable Integer num) {
            super(null);
            this.f48787a = i10;
            this.f48788b = num;
        }

        public final int a() {
            return this.f48787a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f48787a == dVar.f48787a && Intrinsics.areEqual(this.f48788b, dVar.f48788b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f48787a) * 31;
            Integer num = this.f48788b;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "UnlockEpisodeByCoinsFailed(episodeId=" + this.f48787a + ", errCode=" + this.f48788b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f48789a;

        public e(int i10) {
            super(null);
            this.f48789a = i10;
        }

        public final int a() {
            return this.f48789a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && this.f48789a == ((e) obj).f48789a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48789a);
        }

        @NotNull
        public String toString() {
            return "UnlockEpisodeByDiscountSuccess(shortsId=" + this.f48789a + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.f$f  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0665f extends f {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48790a;

        public C0665f(boolean z10) {
            super(null);
            this.f48790a = z10;
        }

        public final boolean a() {
            return this.f48790a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0665f) && this.f48790a == ((C0665f) obj).f48790a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f48790a);
        }

        @NotNull
        public String toString() {
            return "UnlockEpisodeMethodsResult(isEmpty=" + this.f48790a + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends f {

        /* renamed from: a  reason: collision with root package name */
        private final int f48791a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final UnlockEpisodeMethod f48792b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(int i10, @NotNull UnlockEpisodeMethod method) {
            super(null);
            Intrinsics.checkNotNullParameter(method, "method");
            this.f48791a = i10;
            this.f48792b = method;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f48791a == gVar.f48791a && Intrinsics.areEqual(this.f48792b, gVar.f48792b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48791a) * 31) + this.f48792b.hashCode();
        }

        @NotNull
        public String toString() {
            return "UpdateUnlockEpisodeMethod(position=" + this.f48791a + ", method=" + this.f48792b + ')';
        }
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
