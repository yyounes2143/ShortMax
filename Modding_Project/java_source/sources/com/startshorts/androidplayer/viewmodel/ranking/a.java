package com.startshorts.androidplayer.viewmodel.ranking;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RankingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: RankingViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.ranking.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0677a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f49067a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Integer f49068b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49069c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49070d;

        public C0677a(int i10, @Nullable Integer num, int i11, int i12) {
            super(null);
            this.f49067a = i10;
            this.f49068b = num;
            this.f49069c = i11;
            this.f49070d = i12;
        }

        public final int a() {
            return this.f49070d;
        }

        public final int b() {
            return this.f49067a;
        }

        @Nullable
        public final Integer c() {
            return this.f49068b;
        }

        public final int d() {
            return this.f49069c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0677a)) {
                return false;
            }
            C0677a c0677a = (C0677a) obj;
            if (this.f49067a == c0677a.f49067a && Intrinsics.areEqual(this.f49068b, c0677a.f49068b) && this.f49069c == c0677a.f49069c && this.f49070d == c0677a.f49070d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f49067a) * 31;
            Integer num = this.f49068b;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            return ((((hashCode2 + hashCode) * 31) + Integer.hashCode(this.f49069c)) * 31) + Integer.hashCode(this.f49070d);
        }

        @NotNull
        public String toString() {
            return "NextPage(rankingId=" + this.f49067a + ", recommendId=" + this.f49068b + ", refreshWay=" + this.f49069c + ", pageNum=" + this.f49070d + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
