package r0;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import coil.RealImageLoader;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import l0.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: SystemCallbacks.kt */
@Metadata
/* loaded from: classes2.dex */
public final class s implements ComponentCallbacks2, c.a {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f65468f = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f65469a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<RealImageLoader> f65470b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final l0.c f65471c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f65472d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f65473e;

    /* compiled from: SystemCallbacks.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public s(@NotNull RealImageLoader realImageLoader, @NotNull Context context, boolean z10) {
        l0.c bVar;
        this.f65469a = context;
        this.f65470b = new WeakReference<>(realImageLoader);
        if (z10) {
            realImageLoader.h();
            bVar = l0.d.a(context, this, null);
        } else {
            bVar = new l0.b();
        }
        this.f65471c = bVar;
        this.f65472d = bVar.a();
        this.f65473e = new AtomicBoolean(false);
    }

    @Override // l0.c.a
    public void a(boolean z10) {
        Unit unit;
        RealImageLoader realImageLoader = this.f65470b.get();
        if (realImageLoader != null) {
            realImageLoader.h();
            this.f65472d = z10;
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            d();
        }
    }

    public final boolean b() {
        return this.f65472d;
    }

    public final void c() {
        this.f65469a.registerComponentCallbacks(this);
    }

    public final void d() {
        if (this.f65473e.getAndSet(true)) {
            return;
        }
        this.f65469a.unregisterComponentCallbacks(this);
        this.f65471c.shutdown();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration configuration) {
        if (this.f65470b.get() == null) {
            d();
            Unit unit = Unit.f60915a;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        Unit unit;
        RealImageLoader realImageLoader = this.f65470b.get();
        if (realImageLoader != null) {
            realImageLoader.h();
            realImageLoader.l(i10);
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            d();
        }
    }
}
