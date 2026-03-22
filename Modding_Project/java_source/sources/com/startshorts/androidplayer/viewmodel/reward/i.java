package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class i {

    /* compiled from: RewardsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends i {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49192a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final WatchAdBonusTask f49193b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z10, @NotNull WatchAdBonusTask task) {
            super(null);
            Intrinsics.checkNotNullParameter(task, "task");
            this.f49192a = z10;
            this.f49193b = task;
        }

        public final boolean a() {
            return this.f49192a;
        }

        @NotNull
        public final WatchAdBonusTask b() {
            return this.f49193b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f49192a == aVar.f49192a && Intrinsics.areEqual(this.f49193b, aVar.f49193b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Boolean.hashCode(this.f49192a) * 31) + this.f49193b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Result(result=" + this.f49192a + ", task=" + this.f49193b + ')';
        }
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private i() {
    }
}
