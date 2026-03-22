package com.startshorts.androidplayer.viewmodel.routing;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoutingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0684a f49267a = new C0684a(null);

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.routing.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0684a {
        public /* synthetic */ C0684a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0684a() {
        }
    }

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49268b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.f49268b = message;
        }

        @NotNull
        public final String a() {
            return this.f49268b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f49268b, ((b) obj).f49268b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49268b.hashCode();
        }

        @NotNull
        public String toString() {
            return "End(message=" + this.f49268b + ')';
        }
    }

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49269b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String errorMessage) {
            super(null);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            this.f49269b = errorMessage;
        }

        @NotNull
        public final String a() {
            return this.f49269b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49269b, ((c) obj).f49269b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49269b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Exception(errorMessage=" + this.f49269b + ')';
        }
    }

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {

        /* renamed from: b  reason: collision with root package name */
        private final long f49270b;

        /* renamed from: c  reason: collision with root package name */
        private final long f49271c;

        public d(long j10, long j11) {
            super(null);
            this.f49270b = j10;
            this.f49271c = j11;
        }

        public final long a() {
            return this.f49271c;
        }

        public final long b() {
            return this.f49270b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f49270b == dVar.f49270b && this.f49271c == dVar.f49271c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Long.hashCode(this.f49270b) * 31) + Long.hashCode(this.f49271c);
        }

        @NotNull
        public String toString() {
            return "Loading(maxStayTime=" + this.f49270b + ", loadingStartTime=" + this.f49271c + ')';
        }
    }

    /* compiled from: RoutingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {

        /* renamed from: b  reason: collision with root package name */
        private final boolean f49272b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f49273c;

        public e(boolean z10, boolean z11) {
            super(null);
            this.f49272b = z10;
            this.f49273c = z11;
        }

        public final boolean a() {
            return this.f49273c;
        }

        public final boolean b() {
            return this.f49272b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f49272b == eVar.f49272b && this.f49273c == eVar.f49273c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Boolean.hashCode(this.f49272b) * 31) + Boolean.hashCode(this.f49273c);
        }

        @NotNull
        public String toString() {
            return "Showing(ad=" + this.f49272b + ", act=" + this.f49273c + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
