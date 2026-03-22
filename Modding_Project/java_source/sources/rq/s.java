package rq;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final float f66096a;

    /* renamed from: b  reason: collision with root package name */
    private final float f66097b;

    /* renamed from: c  reason: collision with root package name */
    private final float f66098c;

    /* renamed from: d  reason: collision with root package name */
    private final float f66099d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final n0 f66100e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final n0 f66101f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final n0 f66102g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final n0 f66103h;

    /* renamed from: i  reason: collision with root package name */
    private final float f66104i;

    /* renamed from: j  reason: collision with root package name */
    private final float f66105j;

    /* renamed from: k  reason: collision with root package name */
    private final float f66106k;

    /* renamed from: l  reason: collision with root package name */
    private final float f66107l;

    /* renamed from: m  reason: collision with root package name */
    private final float f66108m;

    /* renamed from: n  reason: collision with root package name */
    private final float f66109n;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private float f66110a;

        /* renamed from: b  reason: collision with root package name */
        private float f66111b;

        /* renamed from: c  reason: collision with root package name */
        private float f66112c;

        /* renamed from: d  reason: collision with root package name */
        private float f66113d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private n0 f66114e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private n0 f66115f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private n0 f66116g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private n0 f66117h;

        /* renamed from: i  reason: collision with root package name */
        private float f66118i;

        /* renamed from: j  reason: collision with root package name */
        private float f66119j;

        /* renamed from: k  reason: collision with root package name */
        private float f66120k;

        /* renamed from: l  reason: collision with root package name */
        private float f66121l;

        /* renamed from: m  reason: collision with root package name */
        private float f66122m;

        /* renamed from: n  reason: collision with root package name */
        private float f66123n;

        @NotNull
        public final s a() {
            return new s(this.f66110a, this.f66111b, this.f66112c, this.f66113d, this.f66114e, this.f66115f, this.f66116g, this.f66117h, this.f66118i, this.f66119j, this.f66120k, this.f66121l, this.f66122m, this.f66123n);
        }

        @NotNull
        public final a b(@Nullable n0 n0Var) {
            this.f66117h = n0Var;
            return this;
        }

        @NotNull
        public final a c(float f10) {
            this.f66111b = f10;
            return this;
        }

        @NotNull
        public final a d(float f10) {
            this.f66113d = f10;
            return this;
        }

        @NotNull
        public final a e(@Nullable n0 n0Var) {
            this.f66114e = n0Var;
            return this;
        }

        @NotNull
        public final a f(float f10) {
            this.f66121l = f10;
            return this;
        }

        @NotNull
        public final a g(float f10) {
            this.f66118i = f10;
            return this;
        }

        @NotNull
        public final a h(float f10) {
            this.f66120k = f10;
            return this;
        }

        @NotNull
        public final a i(float f10) {
            this.f66119j = f10;
            return this;
        }

        @NotNull
        public final a j(@Nullable n0 n0Var) {
            this.f66116g = n0Var;
            return this;
        }

        @NotNull
        public final a k(@Nullable n0 n0Var) {
            this.f66115f = n0Var;
            return this;
        }

        @NotNull
        public final a l(float f10) {
            this.f66122m = f10;
            return this;
        }

        @NotNull
        public final a m(float f10) {
            this.f66123n = f10;
            return this;
        }

        @NotNull
        public final a n(float f10) {
            this.f66110a = f10;
            return this;
        }

        @NotNull
        public final a o(float f10) {
            this.f66112c = f10;
            return this;
        }
    }

    public s(float f10, float f11, float f12, float f13, @Nullable n0 n0Var, @Nullable n0 n0Var2, @Nullable n0 n0Var3, @Nullable n0 n0Var4, float f14, float f15, float f16, float f17, float f18, float f19) {
        this.f66096a = f10;
        this.f66097b = f11;
        this.f66098c = f12;
        this.f66099d = f13;
        this.f66100e = n0Var;
        this.f66101f = n0Var2;
        this.f66102g = n0Var3;
        this.f66103h = n0Var4;
        this.f66104i = f14;
        this.f66105j = f15;
        this.f66106k = f16;
        this.f66107l = f17;
        this.f66108m = f18;
        this.f66109n = f19;
    }

    @Nullable
    public final n0 a() {
        return this.f66103h;
    }

    public final float b() {
        return this.f66099d;
    }

    public final int c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66097b);
    }

    @Nullable
    public final n0 d() {
        return this.f66100e;
    }

    public final int e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66107l);
    }

    public final int f(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66104i);
    }

    public final int g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66106k);
    }

    public final int h(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66105j);
    }

    @Nullable
    public final n0 i() {
        return this.f66102g;
    }

    @Nullable
    public final n0 j() {
        return this.f66101f;
    }

    public final int k(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66108m);
    }

    public final int l(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66109n);
    }

    public final float m() {
        return this.f66098c;
    }

    public final int n(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return yq.s.j(context, this.f66096a);
    }

    public /* synthetic */ s(float f10, float f11, float f12, float f13, n0 n0Var, n0 n0Var2, n0 n0Var3, n0 n0Var4, float f14, float f15, float f16, float f17, float f18, float f19, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11, (i10 & 4) != 0 ? 0.0f : f12, (i10 & 8) != 0 ? 0.0f : f13, (i10 & 16) != 0 ? null : n0Var, (i10 & 32) != 0 ? null : n0Var2, (i10 & 64) != 0 ? null : n0Var3, (i10 & 128) == 0 ? n0Var4 : null, (i10 & 256) != 0 ? 0.0f : f14, (i10 & 512) != 0 ? 0.0f : f15, (i10 & 1024) != 0 ? 0.0f : f16, (i10 & 2048) != 0 ? 0.0f : f17, (i10 & 4096) != 0 ? 0.0f : f18, (i10 & 8192) == 0 ? f19 : 0.0f);
    }
}
