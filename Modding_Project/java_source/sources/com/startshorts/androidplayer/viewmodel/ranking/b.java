package com.startshorts.androidplayer.viewmodel.ranking;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RankingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: RankingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f49071a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final ApiErrorState f49072b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i10, @NotNull ApiErrorState errorState) {
            super(null);
            Intrinsics.checkNotNullParameter(errorState, "errorState");
            this.f49071a = i10;
            this.f49072b = errorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f49072b;
        }

        public final int b() {
            return this.f49071a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f49071a == aVar.f49071a && Intrinsics.areEqual(this.f49072b, aVar.f49072b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f49071a) * 31) + this.f49072b.hashCode();
        }

        @NotNull
        public String toString() {
            return "NextPageFailure(refreshWay=" + this.f49071a + ", errorState=" + this.f49072b + ')';
        }
    }

    /* compiled from: RankingViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.ranking.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0678b extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f49073a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private List<DiscoverShorts> f49074b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f49075c;

        public C0678b(int i10, @Nullable List<DiscoverShorts> list, boolean z10) {
            super(null);
            this.f49073a = i10;
            this.f49074b = list;
            this.f49075c = z10;
        }

        @Nullable
        public final List<DiscoverShorts> a() {
            return this.f49074b;
        }

        public final int b() {
            return this.f49073a;
        }

        public final boolean c() {
            return this.f49075c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0678b)) {
                return false;
            }
            C0678b c0678b = (C0678b) obj;
            if (this.f49073a == c0678b.f49073a && Intrinsics.areEqual(this.f49074b, c0678b.f49074b) && this.f49075c == c0678b.f49075c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f49073a) * 31;
            List<DiscoverShorts> list = this.f49074b;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            return ((hashCode2 + hashCode) * 31) + Boolean.hashCode(this.f49075c);
        }

        @NotNull
        public String toString() {
            return "NextPageSuccess(refreshWay=" + this.f49073a + ", list=" + this.f49074b + ", isComplete=" + this.f49075c + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
