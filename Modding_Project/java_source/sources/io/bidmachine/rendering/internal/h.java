package io.bidmachine.rendering.internal;

import gt.c0;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class h {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final e f58327i = new e(null);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final h f58328j = new h(a.f58337d, b.f58338d, c.f58339d, d.f58340d);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function0<c0> f58329a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function0<c0> f58330b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function0<c0> f58331c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Function0<c0> f58332d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ms.i f58333e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ms.i f58334f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final ms.i f58335g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final ms.i f58336h;

    @Metadata
    /* loaded from: classes8.dex */
    static final class a extends Lambda implements Function0<c0> {

        /* renamed from: d  reason: collision with root package name */
        public static final a f58337d = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return q0.c();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class b extends Lambda implements Function0<c0> {

        /* renamed from: d  reason: collision with root package name */
        public static final b f58338d = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return q0.c().m();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class c extends Lambda implements Function0<c0> {

        /* renamed from: d  reason: collision with root package name */
        public static final c f58339d = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return q0.b();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class d extends Lambda implements Function0<c0> {

        /* renamed from: d  reason: collision with root package name */
        public static final d f58340d = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return q0.a();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class e {
        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final h a() {
            return h.f58328j;
        }

        private e() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class f extends Lambda implements Function0<c0> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return (c0) h.this.f58332d.invoke();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class g extends Lambda implements Function0<c0> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return (c0) h.this.f58331c.invoke();
        }
    }

    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.h$h  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0817h extends Lambda implements Function0<c0> {
        C0817h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return (c0) h.this.f58329a.invoke();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class i extends Lambda implements Function0<c0> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: a */
        public final c0 invoke() {
            return (c0) h.this.f58330b.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(@NotNull Function0<? extends c0> mainProvider, @NotNull Function0<? extends c0> mainImmediateProvider, @NotNull Function0<? extends c0> ioProvider, @NotNull Function0<? extends c0> defaultProvider) {
        Intrinsics.checkNotNullParameter(mainProvider, "mainProvider");
        Intrinsics.checkNotNullParameter(mainImmediateProvider, "mainImmediateProvider");
        Intrinsics.checkNotNullParameter(ioProvider, "ioProvider");
        Intrinsics.checkNotNullParameter(defaultProvider, "defaultProvider");
        this.f58329a = mainProvider;
        this.f58330b = mainImmediateProvider;
        this.f58331c = ioProvider;
        this.f58332d = defaultProvider;
        this.f58333e = kotlin.c.b(new C0817h());
        this.f58334f = kotlin.c.b(new i());
        this.f58335g = kotlin.c.b(new g());
        this.f58336h = kotlin.c.b(new f());
    }

    @NotNull
    public static final h j() {
        return f58327i.a();
    }

    @NotNull
    public final c0 c() {
        return (c0) this.f58336h.getValue();
    }

    @NotNull
    public final c0 e() {
        return (c0) this.f58335g.getValue();
    }

    @NotNull
    public final c0 g() {
        return (c0) this.f58333e.getValue();
    }

    @NotNull
    public final c0 i() {
        return (c0) this.f58334f.getValue();
    }
}
