package io.bidmachine.rendering.internal.detector.brokencreative;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import gt.f0;
import gt.q0;
import gt.r1;
import io.bidmachine.rendering.model.StopDetectorAfter;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
import rq.l;
import rq.m;
import rq.n;
import tp.s;
import yq.f;
@Metadata
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f58289a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f58290b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final m f58291c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final hq.a f58292d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f58293e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<n> f58294f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f58295g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f58296h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f58297i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Object f58298j;

    /* renamed from: k  reason: collision with root package name */
    private volatile long f58299k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private b f58300l;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0814a extends cr.b {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final iq.a f58301b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Bitmap f58302c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final Function2<C0814a, l, Unit> f58303d;

        /* JADX WARN: Multi-variable type inference failed */
        public C0814a(@NotNull iq.a algorithm, @NotNull Bitmap image, @NotNull Function2<? super C0814a, ? super l, Unit> callback) {
            Intrinsics.checkNotNullParameter(algorithm, "algorithm");
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.f58301b = algorithm;
            this.f58302c = image;
            this.f58303d = callback;
        }

        @Override // cr.b
        public void d() {
            long currentTimeMillis = System.currentTimeMillis();
            Boolean g10 = this.f58301b.g(this.f58302c);
            if (g10 != null) {
                this.f58303d.invoke(this, new l(g10.booleanValue(), this.f58301b.d(), System.currentTimeMillis() - currentTimeMillis));
            } else {
                this.f58303d.invoke(this, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends cr.b {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Handler f58304b;

        /* renamed from: c  reason: collision with root package name */
        private final double f58305c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<iq.a> f58306d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final Function1<List<l>, Unit> f58307e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final CoroutineTaskManager f58308f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final WeakReference<View> f58309g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final List<C0814a> f58310h;
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        private final List<l> f58311i;

        @Metadata
        /* renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        private final class C0815a implements mq.b {
            public C0815a() {
            }

            @Override // mq.b
            public void a(@NotNull Bitmap bitmap) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                b.this.e(bitmap);
            }

            @Override // mq.b
            public void a() {
                b.this.m();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata
        /* renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0816b extends Lambda implements Function2<C0814a, l, Unit> {
            C0816b() {
                super(2);
            }

            public final void b(@NotNull C0814a algorithmTask, @Nullable l lVar) {
                Intrinsics.checkNotNullParameter(algorithmTask, "algorithmTask");
                b.this.g(algorithmTask, lVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(C0814a c0814a, l lVar) {
                b(c0814a, lVar);
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull View view, @NotNull Handler screenshotCallbackHandler, double d10, @NotNull List<? extends iq.a> algorithms, @NotNull Function1<? super List<l>, Unit> callback) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(screenshotCallbackHandler, "screenshotCallbackHandler");
            Intrinsics.checkNotNullParameter(algorithms, "algorithms");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.f58304b = screenshotCallbackHandler;
            this.f58305c = d10;
            this.f58306d = algorithms;
            this.f58307e = callback;
            this.f58308f = new CoroutineTaskManager(kotlinx.coroutines.i.a(new f0("DetectorTaskManager").plus(r1.b(null, 1, null)).plus(q0.a())));
            this.f58309g = new WeakReference<>(view);
            this.f58310h = new CopyOnWriteArrayList();
            this.f58311i = new CopyOnWriteArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(Bitmap bitmap) {
            if (!k()) {
                f.g(bitmap);
                return;
            }
            Bitmap a10 = f.a(bitmap, this.f58305c);
            if (!Intrinsics.areEqual(a10, bitmap)) {
                f.g(bitmap);
            }
            if (!k()) {
                f.g(bitmap);
                return;
            }
            List<iq.a> list = this.f58306d;
            ArrayList<C0814a> arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (iq.a aVar : list) {
                arrayList.add(new C0814a(aVar, a10, new C0816b()));
            }
            this.f58310h.addAll(arrayList);
            for (C0814a c0814a : arrayList) {
                if (!this.f58308f.b(c0814a)) {
                    f(c0814a);
                }
            }
        }

        private final void f(C0814a c0814a) {
            this.f58310h.remove(c0814a);
            if (!this.f58310h.isEmpty()) {
                return;
            }
            l();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(C0814a c0814a, l lVar) {
            if (lVar != null) {
                this.f58311i.add(lVar);
            }
            f(c0814a);
        }

        private final boolean k() {
            return !c();
        }

        private final void l() {
            if (!k()) {
                return;
            }
            this.f58307e.invoke(this.f58311i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void m() {
            l();
        }

        @Override // cr.b, yq.a
        public void a(boolean z10) {
            super.a(z10);
            if (z10) {
                for (C0814a c0814a : this.f58310h) {
                    this.f58308f.cancel(c0814a);
                }
                this.f58310h.clear();
            }
        }

        @Override // cr.b
        public void d() {
            View view = this.f58309g.get();
            if (view == null) {
                return;
            }
            mq.a.f62620a.a(view, this.f58304b, new C0815a());
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class c extends Lambda implements Function0<er.a> {

        /* renamed from: d  reason: collision with root package name */
        public static final c f58314d = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final er.a invoke() {
            HandlerThread handlerThread = new HandlerThread("BrokenCreativeDetectorTaskManager");
            handlerThread.start();
            return new er.a(new Handler(handlerThread.getLooper()));
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class d extends Lambda implements Function1<List<? extends l>, Unit> {
        d() {
            super(1);
        }

        public final void a(@NotNull List<l> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            a.this.c(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends l> list) {
            a(list);
            return Unit.f60915a;
        }
    }

    public a(int i10, @NotNull String adElementName, @NotNull m brokenCreativeDetectorParams, @NotNull hq.a brokenCreativeDetectorListener) {
        Intrinsics.checkNotNullParameter(adElementName, "adElementName");
        Intrinsics.checkNotNullParameter(brokenCreativeDetectorParams, "brokenCreativeDetectorParams");
        Intrinsics.checkNotNullParameter(brokenCreativeDetectorListener, "brokenCreativeDetectorListener");
        this.f58289a = i10;
        this.f58290b = adElementName;
        this.f58291c = brokenCreativeDetectorParams;
        this.f58292d = brokenCreativeDetectorListener;
        this.f58293e = kotlin.c.b(c.f58314d);
        this.f58294f = new CopyOnWriteArrayList();
        this.f58295g = new AtomicBoolean(false);
        this.f58296h = new AtomicBoolean(false);
        this.f58297i = new AtomicBoolean(false);
        this.f58298j = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(List<l> list) {
        boolean z10;
        if (!e()) {
            return;
        }
        double d10 = 0.0d;
        double d11 = 0.0d;
        double d12 = 0.0d;
        for (l lVar : list) {
            float c10 = lVar.a().c();
            if (lVar.c()) {
                d12 += c10;
            }
            d11 += c10;
        }
        if (d11 != 0.0d) {
            d10 = d12 / d11;
        }
        if (d10 >= this.f58291c.e()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!this.f58291c.g() || z10) {
            n nVar = new n(hq.b.f53221a.a(z10), this.f58289a, this.f58290b, System.currentTimeMillis() - this.f58299k, list);
            if (this.f58291c.f() || !this.f58294f.contains(nVar)) {
                this.f58294f.add(nVar);
                d(nVar);
            }
        }
        StopDetectorAfter c11 = this.f58291c.c();
        if ((c11 == StopDetectorAfter.ValidCreative && z10) || ((c11 == StopDetectorAfter.BrokenCreative && !z10) || c11 == StopDetectorAfter.Never)) {
            l();
        } else {
            this.f58297i.set(true);
        }
    }

    private final void d(n nVar) {
        if (!e()) {
            return;
        }
        s.g("BrokenCreativeDetector", "Notify detector result: %s", nVar);
        this.f58292d.a(nVar);
    }

    private final boolean e() {
        if (j() && !k() && !i()) {
            return true;
        }
        return false;
    }

    private final void f() {
        synchronized (this.f58298j) {
            b bVar = this.f58300l;
            if (bVar != null) {
                h().cancel(bVar);
            }
        }
    }

    private final er.a h() {
        return (er.a) this.f58293e.getValue();
    }

    private final boolean i() {
        return this.f58296h.get();
    }

    private final boolean j() {
        return this.f58295g.get();
    }

    private final boolean k() {
        return this.f58297i.get();
    }

    private final void l() {
        synchronized (this.f58298j) {
            f();
            if (!e()) {
                return;
            }
            b bVar = this.f58300l;
            if (bVar != null) {
                h().a(bVar, this.f58291c.d());
            }
        }
    }

    public final void a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!k() && !i()) {
            synchronized (this.f58298j) {
                try {
                    if (!this.f58295g.compareAndSet(false, true)) {
                        return;
                    }
                    List<k> a10 = this.f58291c.a();
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(a10, 10));
                    for (k kVar : a10) {
                        arrayList.add(iq.b.f60069a.a(kVar));
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    this.f58299k = System.currentTimeMillis();
                    this.f58300l = new b(view, h().f(), this.f58291c.b(), arrayList, new d());
                    l();
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void g() {
        this.f58296h.set(true);
        m();
    }

    public final void m() {
        synchronized (this.f58298j) {
            this.f58295g.set(false);
            f();
            this.f58300l = null;
            Unit unit = Unit.f60915a;
        }
    }
}
