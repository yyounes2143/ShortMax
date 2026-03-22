package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f48915a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<Long> f48916b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@Nullable Context context, @NotNull List<Long> ids) {
            super(null);
            Intrinsics.checkNotNullParameter(ids, "ids");
            this.f48915a = context;
            this.f48916b = ids;
        }

        @Nullable
        public final Context a() {
            return this.f48915a;
        }

        @NotNull
        public final List<Long> b() {
            return this.f48916b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f48915a, aVar.f48915a) && Intrinsics.areEqual(this.f48916b, aVar.f48916b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48915a;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (hashCode * 31) + this.f48916b.hashCode();
        }

        @NotNull
        public String toString() {
            return "DeleteWatchHistories(context=" + this.f48915a + ", ids=" + this.f48916b + ')';
        }
    }

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private final long f48917a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48918b;

        public b(long j10, int i10) {
            super(null);
            this.f48917a = j10;
            this.f48918b = i10;
        }

        public final long a() {
            return this.f48917a;
        }

        public final int b() {
            return this.f48918b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f48917a == bVar.f48917a && this.f48918b == bVar.f48918b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Long.hashCode(this.f48917a) * 31) + Integer.hashCode(this.f48918b);
        }

        @NotNull
        public String toString() {
            return "LoadWatchHistories(lastTime=" + this.f48917a + ", pageSize=" + this.f48918b + ')';
        }
    }

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {

        /* renamed from: a  reason: collision with root package name */
        private final long f48919a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48920b;

        public c(long j10, int i10) {
            super(null);
            this.f48919a = j10;
            this.f48920b = i10;
        }

        public final long a() {
            return this.f48919a;
        }

        public final int b() {
            return this.f48920b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f48919a == cVar.f48919a && this.f48920b == cVar.f48920b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Long.hashCode(this.f48919a) * 31) + Integer.hashCode(this.f48920b);
        }

        @NotNull
        public String toString() {
            return "LoadWatchHistoriesSimple(lastTime=" + this.f48919a + ", pageSize=" + this.f48920b + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
