package com.startshorts.androidplayer.viewmodel.player;

import com.ss.ttvideoengine.Resolution;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48947a;

        public a(int i10) {
            super(null);
            this.f48947a = i10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f48947a == ((a) obj).f48947a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48947a);
        }

        @NotNull
        public String toString() {
            return "OnBufferEnd(code=" + this.f48947a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48948a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48949b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48950c;

        public b(int i10, int i11, int i12) {
            super(null);
            this.f48948a = i10;
            this.f48949b = i11;
            this.f48950c = i12;
        }

        public final int a() {
            return this.f48950c;
        }

        public final int b() {
            return this.f48949b;
        }

        public final int c() {
            return this.f48948a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f48948a == bVar.f48948a && this.f48949b == bVar.f48949b && this.f48950c == bVar.f48950c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f48948a) * 31) + Integer.hashCode(this.f48949b)) * 31) + Integer.hashCode(this.f48950c);
        }

        @NotNull
        public String toString() {
            return "OnBufferStart(code=" + this.f48948a + ", afterFirstFrame=" + this.f48949b + ", action=" + this.f48950c + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.player.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0672c extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48951a;

        public C0672c(int i10) {
            super(null);
            this.f48951a = i10;
        }

        public final int a() {
            return this.f48951a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0672c) && this.f48951a == ((C0672c) obj).f48951a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48951a);
        }

        @NotNull
        public String toString() {
            return "OnCompleted(totalTime=" + this.f48951a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48952a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48953b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Resolution f48954c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull String errCode, @Nullable String str, @Nullable Resolution resolution) {
            super(null);
            Intrinsics.checkNotNullParameter(errCode, "errCode");
            this.f48952a = errCode;
            this.f48953b = str;
            this.f48954c = resolution;
        }

        @Nullable
        public final Resolution a() {
            return this.f48954c;
        }

        @NotNull
        public final String b() {
            return this.f48952a;
        }

        @Nullable
        public final String c() {
            return this.f48953b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f48952a, dVar.f48952a) && Intrinsics.areEqual(this.f48953b, dVar.f48953b) && this.f48954c == dVar.f48954c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f48952a.hashCode() * 31;
            String str = this.f48953b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            Resolution resolution = this.f48954c;
            if (resolution != null) {
                i10 = resolution.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "OnError(errCode=" + this.f48952a + ", errMsg=" + this.f48953b + ", currentResolution=" + this.f48954c + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final e f48955a = new e();

        private e() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 747529966;
        }

        @NotNull
        public String toString() {
            return "OnPaused";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f48956a = new f();

        private f() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1995225710;
        }

        @NotNull
        public String toString() {
            return "OnPlaying";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Resolution f48957a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Resolution f48958b;

        public g(@Nullable Resolution resolution, @Nullable Resolution resolution2) {
            super(null);
            this.f48957a = resolution;
            this.f48958b = resolution2;
        }

        @Nullable
        public final Resolution a() {
            return this.f48958b;
        }

        @Nullable
        public final Resolution b() {
            return this.f48957a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (this.f48957a == gVar.f48957a && this.f48958b == gVar.f48958b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Resolution resolution = this.f48957a;
            int i10 = 0;
            if (resolution == null) {
                hashCode = 0;
            } else {
                hashCode = resolution.hashCode();
            }
            int i11 = hashCode * 31;
            Resolution resolution2 = this.f48958b;
            if (resolution2 != null) {
                i10 = resolution2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "OnPrepared(resolutionBeforeDowngrade=" + this.f48957a + ", currentResolution=" + this.f48958b + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends c {

        /* renamed from: a  reason: collision with root package name */
        private final long f48959a;

        public h(long j10) {
            super(null);
            this.f48959a = j10;
        }

        public final long a() {
            return this.f48959a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && this.f48959a == ((h) obj).f48959a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Long.hashCode(this.f48959a);
        }

        @NotNull
        public String toString() {
            return "OnRenderStart(costTime=" + this.f48959a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Resolution f48960a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull Resolution resolution) {
            super(null);
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            this.f48960a = resolution;
        }

        @NotNull
        public final Resolution a() {
            return this.f48960a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && this.f48960a == ((i) obj).f48960a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48960a.hashCode();
        }

        @NotNull
        public String toString() {
            return "OnResolutionChanged(resolution=" + this.f48960a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends c {

        /* renamed from: a  reason: collision with root package name */
        private final int f48961a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48962b;

        public j(int i10, int i11) {
            super(null);
            this.f48961a = i10;
            this.f48962b = i11;
        }

        public final int a() {
            return this.f48962b;
        }

        public final int b() {
            return this.f48961a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            if (this.f48961a == jVar.f48961a && this.f48962b == jVar.f48962b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48961a) * 31) + Integer.hashCode(this.f48962b);
        }

        @NotNull
        public String toString() {
            return "OnTimeInfo(totalTime=" + this.f48961a + ", currentTime=" + this.f48962b + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
