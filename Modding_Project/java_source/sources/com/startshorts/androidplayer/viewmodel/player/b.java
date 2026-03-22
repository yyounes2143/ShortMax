package com.startshorts.androidplayer.viewmodel.player;

import android.content.Context;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<StrategySource> f48934a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<StrategySource> resources) {
            super(null);
            Intrinsics.checkNotNullParameter(resources, "resources");
            this.f48934a = resources;
        }

        @NotNull
        public final List<StrategySource> a() {
            return this.f48934a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48934a, ((a) obj).f48934a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48934a.hashCode();
        }

        @NotNull
        public String toString() {
            return "AddStrategyResources(resources=" + this.f48934a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.player.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0671b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0671b f48935a = new C0671b();

        private C0671b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0671b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -758705355;
        }

        @NotNull
        public String toString() {
            return "ClearAllStrategy";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48936a;

        public c(boolean z10) {
            super(null);
            this.f48936a = z10;
        }

        public final boolean a() {
            return this.f48936a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && this.f48936a == ((c) obj).f48936a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f48936a);
        }

        @NotNull
        public String toString() {
            return "IsMute(isMute=" + this.f48936a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f48937a = new d();

        private d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1757609768;
        }

        @NotNull
        public String toString() {
            return "Pause";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f48938a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final s f48939b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull Context context, @NotNull s params) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(params, "params");
            this.f48938a = context;
            this.f48939b = params;
        }

        @NotNull
        public final Context a() {
            return this.f48938a;
        }

        @NotNull
        public final s b() {
            return this.f48939b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48938a, eVar.f48938a) && Intrinsics.areEqual(this.f48939b, eVar.f48939b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48938a.hashCode() * 31) + this.f48939b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Play(context=" + this.f48938a + ", params=" + this.f48939b + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f48940a = new f();

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
            return -1273332551;
        }

        @NotNull
        public String toString() {
            return "Release";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f48941a = new g();

        private g() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof g)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1287776965;
        }

        @NotNull
        public String toString() {
            return "Resume";
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48942a;

        public h(int i10) {
            super(null);
            this.f48942a = i10;
        }

        public final int a() {
            return this.f48942a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && this.f48942a == ((h) obj).f48942a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48942a);
        }

        @NotNull
        public String toString() {
            return "SeekTo(millis=" + this.f48942a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48943a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull String scene) {
            super(null);
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f48943a = scene;
        }

        @NotNull
        public final String a() {
            return this.f48943a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && Intrinsics.areEqual(this.f48943a, ((i) obj).f48943a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48943a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SetScene(scene=" + this.f48943a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<StrategySource> f48944a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(@NotNull List<StrategySource> resources) {
            super(null);
            Intrinsics.checkNotNullParameter(resources, "resources");
            this.f48944a = resources;
        }

        @NotNull
        public final List<StrategySource> a() {
            return this.f48944a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof j) && Intrinsics.areEqual(this.f48944a, ((j) obj).f48944a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48944a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SetStrategyResources(resources=" + this.f48944a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends b {

        /* renamed from: a  reason: collision with root package name */
        private final float f48945a;

        public k(float f10) {
            super(null);
            this.f48945a = f10;
        }

        public final float a() {
            return this.f48945a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof k) && Float.compare(this.f48945a, ((k) obj).f48945a) == 0) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Float.hashCode(this.f48945a);
        }

        @NotNull
        public String toString() {
            return "UpdatePlaySpeed(speed=" + this.f48945a + ')';
        }
    }

    /* compiled from: PlayerViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final PlayResolution f48946a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(@NotNull PlayResolution resolution) {
            super(null);
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            this.f48946a = resolution;
        }

        @NotNull
        public final PlayResolution a() {
            return this.f48946a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof l) && Intrinsics.areEqual(this.f48946a, ((l) obj).f48946a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48946a.hashCode();
        }

        @NotNull
        public String toString() {
            return "UpdateResolution(resolution=" + this.f48946a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
