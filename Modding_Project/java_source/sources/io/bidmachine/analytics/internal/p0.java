package io.bidmachine.analytics.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes7.dex */
public final class p0 {

    /* renamed from: g  reason: collision with root package name */
    public static final d f54302g = new d(null);

    /* renamed from: h  reason: collision with root package name */
    private static final p0 f54303h = new p0(a.f54310a, b.f54311a, c.f54312a);

    /* renamed from: a  reason: collision with root package name */
    private final Function0 f54304a;

    /* renamed from: b  reason: collision with root package name */
    private final Function0 f54305b;

    /* renamed from: c  reason: collision with root package name */
    private final Function0 f54306c;

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f54307d = kotlin.c.b(new g());

    /* renamed from: e  reason: collision with root package name */
    private final ms.i f54308e = kotlin.c.b(new f());

    /* renamed from: f  reason: collision with root package name */
    private final ms.i f54309f = kotlin.c.b(new e());

    /* loaded from: classes7.dex */
    static final class a extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f54310a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return gt.q0.c();
        }
    }

    /* loaded from: classes7.dex */
    static final class b extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f54311a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return gt.q0.b();
        }
    }

    /* loaded from: classes7.dex */
    static final class c extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final c f54312a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return gt.q0.a();
        }
    }

    /* loaded from: classes7.dex */
    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p0 a() {
            return p0.f54303h;
        }

        private d() {
        }
    }

    /* loaded from: classes7.dex */
    static final class e extends Lambda implements Function0 {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return (gt.c0) p0.this.f54306c.invoke();
        }
    }

    /* loaded from: classes7.dex */
    static final class f extends Lambda implements Function0 {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return (gt.c0) p0.this.f54305b.invoke();
        }
    }

    /* loaded from: classes7.dex */
    static final class g extends Lambda implements Function0 {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.c0 invoke() {
            return (gt.c0) p0.this.f54304a.invoke();
        }
    }

    public p0(Function0 function0, Function0 function02, Function0 function03) {
        this.f54304a = function0;
        this.f54305b = function02;
        this.f54306c = function03;
    }

    public final gt.c0 b() {
        return (gt.c0) this.f54309f.getValue();
    }

    public final gt.c0 c() {
        return (gt.c0) this.f54308e.getValue();
    }
}
