package coil.compose;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import coil.size.Precision;
import com.google.accompanist.drawablepainter.DrawablePainter;
import gt.g0;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.b;
import kt.e;
import m0.d;
import m0.f;
import m0.g;
import m0.m;
import n0.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AsyncImagePainter.kt */
@Stable
@Metadata
/* loaded from: classes2.dex */
public final class AsyncImagePainter extends Painter implements RememberObserver {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f3805p = new a(null);
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final Function1<b, b> f3806q = new Function1<b, b>() { // from class: coil.compose.AsyncImagePainter$Companion$DefaultTransform$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        /* renamed from: b */
        public final AsyncImagePainter.b invoke(@NotNull AsyncImagePainter.b bVar) {
            return bVar;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private g0 f3807a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final e<Size> f3808b = o.a(Size.m1663boximpl(Size.Companion.m1684getZeroNHjbRc()));
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final MutableState f3809c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final MutableState f3810d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableState f3811e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private b f3812f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Painter f3813g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private Function1<? super b, ? extends b> f3814h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Function1<? super b, Unit> f3815i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private ContentScale f3816j;

    /* renamed from: k  reason: collision with root package name */
    private int f3817k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f3818l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final MutableState f3819m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final MutableState f3820n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final MutableState f3821o;

    /* compiled from: AsyncImagePainter.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Function1<b, b> a() {
            return AsyncImagePainter.f3806q;
        }

        private a() {
        }
    }

    /* compiled from: AsyncImagePainter.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* compiled from: AsyncImagePainter.kt */
        @StabilityInferred(parameters = 0)
        @Metadata
        /* loaded from: classes2.dex */
        public static final class a extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            public static final a f3828a = new a();

            private a() {
                super(null);
            }

            @Override // coil.compose.AsyncImagePainter.b
            @Nullable
            public Painter a() {
                return null;
            }
        }

        /* compiled from: AsyncImagePainter.kt */
        @StabilityInferred(parameters = 0)
        @Metadata
        /* renamed from: coil.compose.AsyncImagePainter$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0094b extends b {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private final Painter f3829a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final m0.d f3830b;

            public C0094b(@Nullable Painter painter, @NotNull m0.d dVar) {
                super(null);
                this.f3829a = painter;
                this.f3830b = dVar;
            }

            @Override // coil.compose.AsyncImagePainter.b
            @Nullable
            public Painter a() {
                return this.f3829a;
            }

            @NotNull
            public final m0.d b() {
                return this.f3830b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0094b)) {
                    return false;
                }
                C0094b c0094b = (C0094b) obj;
                if (Intrinsics.areEqual(a(), c0094b.a()) && Intrinsics.areEqual(this.f3830b, c0094b.f3830b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                int hashCode;
                if (a() == null) {
                    hashCode = 0;
                } else {
                    hashCode = a().hashCode();
                }
                return (hashCode * 31) + this.f3830b.hashCode();
            }

            @NotNull
            public String toString() {
                return "Error(painter=" + a() + ", result=" + this.f3830b + ')';
            }
        }

        /* compiled from: AsyncImagePainter.kt */
        @StabilityInferred(parameters = 0)
        @Metadata
        /* loaded from: classes2.dex */
        public static final class c extends b {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private final Painter f3831a;

            public c(@Nullable Painter painter) {
                super(null);
                this.f3831a = painter;
            }

            @Override // coil.compose.AsyncImagePainter.b
            @Nullable
            public Painter a() {
                return this.f3831a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof c) && Intrinsics.areEqual(a(), ((c) obj).a())) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                if (a() == null) {
                    return 0;
                }
                return a().hashCode();
            }

            @NotNull
            public String toString() {
                return "Loading(painter=" + a() + ')';
            }
        }

        /* compiled from: AsyncImagePainter.kt */
        @StabilityInferred(parameters = 0)
        @Metadata
        /* loaded from: classes2.dex */
        public static final class d extends b {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final Painter f3832a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final m f3833b;

            public d(@NotNull Painter painter, @NotNull m mVar) {
                super(null);
                this.f3832a = painter;
                this.f3833b = mVar;
            }

            @Override // coil.compose.AsyncImagePainter.b
            @NotNull
            public Painter a() {
                return this.f3832a;
            }

            @NotNull
            public final m b() {
                return this.f3833b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                if (Intrinsics.areEqual(a(), dVar.a()) && Intrinsics.areEqual(this.f3833b, dVar.f3833b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (a().hashCode() * 31) + this.f3833b.hashCode();
            }

            @NotNull
            public String toString() {
                return "Success(painter=" + a() + ", result=" + this.f3833b + ')';
            }
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public abstract Painter a();

        private b() {
        }
    }

    public AsyncImagePainter(@NotNull f fVar, @NotNull ImageLoader imageLoader) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        MutableState mutableStateOf$default6;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.f3809c = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        this.f3810d = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.f3811e = mutableStateOf$default3;
        b.a aVar = b.a.f3828a;
        this.f3812f = aVar;
        this.f3814h = f3806q;
        this.f3816j = ContentScale.Companion.getFit();
        this.f3817k = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(aVar, null, 2, null);
        this.f3819m = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(fVar, null, 2, null);
        this.f3820n = mutableStateOf$default5;
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(imageLoader, null, 2, null);
        this.f3821o = mutableStateOf$default6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Painter A(Drawable drawable) {
        Painter drawablePainter;
        if (drawable instanceof BitmapDrawable) {
            return BitmapPainterKt.m2408BitmapPainterQZhYCtY$default(AndroidImageBitmap_androidKt.asImageBitmap(((BitmapDrawable) drawable).getBitmap()), 0L, 0L, this.f3817k, 6, null);
        }
        if (drawable instanceof ColorDrawable) {
            drawablePainter = new ColorPainter(ColorKt.Color(((ColorDrawable) drawable).getColor()), null);
        } else {
            drawablePainter = new DrawablePainter(drawable.mutate());
        }
        return drawablePainter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b B(g gVar) {
        Painter painter;
        if (gVar instanceof m) {
            m mVar = (m) gVar;
            return new b.d(A(mVar.a()), mVar);
        } else if (gVar instanceof d) {
            Drawable a10 = gVar.a();
            if (a10 != null) {
                painter = A(a10);
            } else {
                painter = null;
            }
            return new b.C0094b(painter, (d) gVar);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f C(f fVar) {
        f.a l10 = f.R(fVar, null, 1, null).l(new c());
        if (fVar.q().m() == null) {
            l10.k(new h() { // from class: coil.compose.AsyncImagePainter$updateRequest$2$1
                @Override // n0.h
                @Nullable
                public final Object b(@NotNull c<? super n0.g> cVar) {
                    final e eVar;
                    eVar = AsyncImagePainter.this.f3808b;
                    return kotlinx.coroutines.flow.c.y(new b<n0.g>() { // from class: coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1

                        /* compiled from: Emitters.kt */
                        @Metadata
                        /* renamed from: coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2  reason: invalid class name */
                        /* loaded from: classes2.dex */
                        public static final class AnonymousClass2<T> implements kt.c {

                            /* renamed from: a  reason: collision with root package name */
                            final /* synthetic */ kt.c f3823a;

                            /* compiled from: Emitters.kt */
                            @Metadata
                            @kotlin.coroutines.jvm.internal.d(c = "coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2", f = "AsyncImagePainter.kt", l = {225}, m = "emit")
                            /* renamed from: coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                            /* loaded from: classes2.dex */
                            public static final class AnonymousClass1 extends ContinuationImpl {

                                /* renamed from: h  reason: collision with root package name */
                                /* synthetic */ Object f3824h;

                                /* renamed from: i  reason: collision with root package name */
                                int f3825i;

                                public AnonymousClass1(c cVar) {
                                    super(cVar);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                @Nullable
                                public final Object invokeSuspend(@NotNull Object obj) {
                                    this.f3824h = obj;
                                    this.f3825i |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(kt.c cVar) {
                                this.f3823a = cVar;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                            @Override // kt.c
                            @org.jetbrains.annotations.Nullable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final java.lang.Object emit(java.lang.Object r7, @org.jetbrains.annotations.NotNull rs.c r8) {
                                /*
                                    r6 = this;
                                    boolean r0 = r8 instanceof coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                                    if (r0 == 0) goto L13
                                    r0 = r8
                                    coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2$1 r0 = (coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                                    int r1 = r0.f3825i
                                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                    r3 = r1 & r2
                                    if (r3 == 0) goto L13
                                    int r1 = r1 - r2
                                    r0.f3825i = r1
                                    goto L18
                                L13:
                                    coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2$1 r0 = new coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2$1
                                    r0.<init>(r8)
                                L18:
                                    java.lang.Object r8 = r0.f3824h
                                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                                    int r2 = r0.f3825i
                                    r3 = 1
                                    if (r2 == 0) goto L31
                                    if (r2 != r3) goto L29
                                    kotlin.f.b(r8)
                                    goto L4b
                                L29:
                                    java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                                    r7.<init>(r8)
                                    throw r7
                                L31:
                                    kotlin.f.b(r8)
                                    kt.c r8 = r6.f3823a
                                    androidx.compose.ui.geometry.Size r7 = (androidx.compose.ui.geometry.Size) r7
                                    long r4 = r7.m1680unboximpl()
                                    n0.g r7 = c0.a.b(r4)
                                    if (r7 == 0) goto L4b
                                    r0.f3825i = r3
                                    java.lang.Object r7 = r8.emit(r7, r0)
                                    if (r7 != r1) goto L4b
                                    return r1
                                L4b:
                                    kotlin.Unit r7 = kotlin.Unit.f60915a
                                    return r7
                                */
                                throw new UnsupportedOperationException("Method not decompiled: coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                            }
                        }

                        @Override // kt.b
                        @Nullable
                        public Object collect(@NotNull kt.c<? super n0.g> cVar2, @NotNull c cVar3) {
                            Object collect = b.this.collect(new AnonymousClass2(cVar2), cVar3);
                            if (collect == a.f()) {
                                return collect;
                            }
                            return Unit.f60915a;
                        }
                    }, cVar);
                }
            });
        }
        if (fVar.q().l() == null) {
            l10.j(c0.c.f(this.f3816j));
        }
        if (fVar.q().k() != Precision.EXACT) {
            l10.d(Precision.INEXACT);
        }
        return l10.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(b bVar) {
        RememberObserver rememberObserver;
        b bVar2 = this.f3812f;
        b invoke = this.f3814h.invoke(bVar);
        z(invoke);
        Painter m10 = m(bVar2, invoke);
        if (m10 == null) {
            m10 = invoke.a();
        }
        y(m10);
        if (this.f3807a != null && bVar2.a() != invoke.a()) {
            Painter a10 = bVar2.a();
            RememberObserver rememberObserver2 = null;
            if (a10 instanceof RememberObserver) {
                rememberObserver = (RememberObserver) a10;
            } else {
                rememberObserver = null;
            }
            if (rememberObserver != null) {
                rememberObserver.onForgotten();
            }
            Painter a11 = invoke.a();
            if (a11 instanceof RememberObserver) {
                rememberObserver2 = (RememberObserver) a11;
            }
            if (rememberObserver2 != null) {
                rememberObserver2.onRemembered();
            }
        }
        Function1<? super b, Unit> function1 = this.f3815i;
        if (function1 != null) {
            function1.invoke(invoke);
        }
    }

    private final void g() {
        g0 g0Var = this.f3807a;
        if (g0Var != null) {
            i.e(g0Var, null, 1, null);
        }
        this.f3807a = null;
    }

    private final float h() {
        return ((Number) this.f3810d.getValue()).floatValue();
    }

    private final ColorFilter i() {
        return (ColorFilter) this.f3811e.getValue();
    }

    private final Painter k() {
        return (Painter) this.f3809c.getValue();
    }

    private final CrossfadePainter m(b bVar, b bVar2) {
        g b10;
        Painter painter;
        boolean z10;
        if (bVar2 instanceof b.d) {
            b10 = ((b.d) bVar2).b();
        } else {
            if (bVar2 instanceof b.C0094b) {
                b10 = ((b.C0094b) bVar2).b();
            }
            return null;
        }
        q0.c a10 = b10.b().P().a(c0.a.a(), b10);
        if (a10 instanceof q0.a) {
            Painter a11 = bVar.a();
            if (bVar instanceof b.c) {
                painter = a11;
            } else {
                painter = null;
            }
            Painter a12 = bVar2.a();
            ContentScale contentScale = this.f3816j;
            q0.a aVar = (q0.a) a10;
            int b11 = aVar.b();
            if ((b10 instanceof m) && ((m) b10).d()) {
                z10 = false;
            } else {
                z10 = true;
            }
            return new CrossfadePainter(painter, a12, contentScale, b11, z10, aVar.c());
        }
        return null;
    }

    private final void n(float f10) {
        this.f3810d.setValue(Float.valueOf(f10));
    }

    private final void o(ColorFilter colorFilter) {
        this.f3811e.setValue(colorFilter);
    }

    private final void t(Painter painter) {
        this.f3809c.setValue(painter);
    }

    private final void w(b bVar) {
        this.f3819m.setValue(bVar);
    }

    private final void y(Painter painter) {
        this.f3813g = painter;
        t(painter);
    }

    private final void z(b bVar) {
        this.f3812f = bVar;
        w(bVar);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        n(f10);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        o(colorFilter);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        Painter k10 = k();
        if (k10 != null) {
            return k10.mo2405getIntrinsicSizeNHjbRc();
        }
        return Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    @NotNull
    public final ImageLoader j() {
        return (ImageLoader) this.f3821o.getValue();
    }

    @NotNull
    public final f l() {
        return (f) this.f3820n.getValue();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        RememberObserver rememberObserver;
        g();
        Painter painter = this.f3813g;
        if (painter instanceof RememberObserver) {
            rememberObserver = (RememberObserver) painter;
        } else {
            rememberObserver = null;
        }
        if (rememberObserver != null) {
            rememberObserver.onAbandoned();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        this.f3808b.setValue(Size.m1663boximpl(drawScope.mo2336getSizeNHjbRc()));
        Painter k10 = k();
        if (k10 != null) {
            k10.m2411drawx_KDEd0(drawScope, drawScope.mo2336getSizeNHjbRc(), h(), i());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        RememberObserver rememberObserver;
        g();
        Painter painter = this.f3813g;
        if (painter instanceof RememberObserver) {
            rememberObserver = (RememberObserver) painter;
        } else {
            rememberObserver = null;
        }
        if (rememberObserver != null) {
            rememberObserver.onForgotten();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        RememberObserver rememberObserver;
        if (this.f3807a != null) {
            return;
        }
        Painter painter = null;
        g0 a10 = i.a(r1.b(null, 1, null).plus(q0.c().m()));
        this.f3807a = a10;
        Painter painter2 = this.f3813g;
        if (painter2 instanceof RememberObserver) {
            rememberObserver = (RememberObserver) painter2;
        } else {
            rememberObserver = null;
        }
        if (rememberObserver != null) {
            rememberObserver.onRemembered();
        }
        if (!this.f3818l) {
            gt.g.d(a10, null, null, new AsyncImagePainter$onRemembered$1(this, null), 3, null);
            return;
        }
        Drawable F = f.R(l(), null, 1, null).c(j().c()).a().F();
        if (F != null) {
            painter = A(F);
        }
        D(new b.c(painter));
    }

    public final void p(@NotNull ContentScale contentScale) {
        this.f3816j = contentScale;
    }

    public final void q(int i10) {
        this.f3817k = i10;
    }

    public final void r(@NotNull ImageLoader imageLoader) {
        this.f3821o.setValue(imageLoader);
    }

    public final void s(@Nullable Function1<? super b, Unit> function1) {
        this.f3815i = function1;
    }

    public final void u(boolean z10) {
        this.f3818l = z10;
    }

    public final void v(@NotNull f fVar) {
        this.f3820n.setValue(fVar);
    }

    public final void x(@NotNull Function1<? super b, ? extends b> function1) {
        this.f3814h = function1;
    }

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class c implements o0.a {
        public c() {
        }

        @Override // o0.a
        public void c(@Nullable Drawable drawable) {
            Painter painter;
            AsyncImagePainter asyncImagePainter = AsyncImagePainter.this;
            if (drawable != null) {
                painter = AsyncImagePainter.this.A(drawable);
            } else {
                painter = null;
            }
            asyncImagePainter.D(new b.c(painter));
        }

        @Override // o0.a
        public void b(@NotNull Drawable drawable) {
        }

        @Override // o0.a
        public void d(@Nullable Drawable drawable) {
        }
    }
}
