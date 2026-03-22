package com.startshorts.androidplayer.viewmodel.mylist;

import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<Long> f48921a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<Long> ids) {
            super(null);
            Intrinsics.checkNotNullParameter(ids, "ids");
            this.f48921a = ids;
        }

        @NotNull
        public final List<Long> a() {
            return this.f48921a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48921a, ((a) obj).f48921a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48921a.hashCode();
        }

        @NotNull
        public String toString() {
            return "DeleteWatchHistoriesSuccess(ids=" + this.f48921a + ')';
        }
    }

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends e {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<WatchHistory> f48922a;

        public b(@Nullable List<WatchHistory> list) {
            super(null);
            this.f48922a = list;
        }

        @Nullable
        public final List<WatchHistory> a() {
            return this.f48922a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48922a, ((b) obj).f48922a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<WatchHistory> list = this.f48922a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowWatchHistories(list=" + this.f48922a + ')';
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
