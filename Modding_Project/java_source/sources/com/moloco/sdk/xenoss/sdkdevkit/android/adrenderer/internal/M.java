package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.M;
import jt.h;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt;
/* loaded from: classes6.dex */
public final class M {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$collectLatestIsAttachedWindow$2", f = "ViewVisibilityTracker.kt", l = {46, 49}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33844h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33845i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ h<Boolean> f33846j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ View f33847k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(h<? super Boolean> hVar, View view, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33846j = hVar;
            this.f33847k = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(this.f33846j, this.f33847k, cVar);
            aVar.f33845i = ((Boolean) obj).booleanValue();
            return aVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((a) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33844h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                if (this.f33845i) {
                    h<Boolean> hVar = this.f33846j;
                    View view = this.f33847k;
                    this.f33844h = 1;
                    if (M.k(hVar, view, this) == f10) {
                        return f10;
                    }
                } else {
                    h<Boolean> hVar2 = this.f33846j;
                    Boolean a10 = kotlin.coroutines.jvm.internal.a.a(false);
                    this.f33844h = 2;
                    if (hVar2.p(a10, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$collectLatestIsEnoughAreaVisible$2", f = "ViewVisibilityTracker.kt", l = {69}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33848h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33849i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ h<Boolean> f33850j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(h<? super Boolean> hVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33850j = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f33850j, cVar);
            bVar.f33849i = ((Boolean) obj).booleanValue();
            return bVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((b) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33848h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                boolean z10 = this.f33849i;
                h<Boolean> hVar = this.f33850j;
                Boolean a10 = kotlin.coroutines.jvm.internal.a.a(z10);
                this.f33848h = 1;
                if (hVar.p(a10, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$collectLatestIsLifecycleResumed$2", f = "ViewVisibilityTracker.kt", l = {59, 62}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33851h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33852i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ h<Boolean> f33853j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ View f33854k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(h<? super Boolean> hVar, View view, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f33853j = hVar;
            this.f33854k = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(this.f33853j, this.f33854k, cVar);
            cVar2.f33852i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return ((c) create(bool, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33851h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                if (!Intrinsics.areEqual((Boolean) this.f33852i, kotlin.coroutines.jvm.internal.a.a(false))) {
                    h<Boolean> hVar = this.f33853j;
                    View view = this.f33854k;
                    this.f33851h = 1;
                    if (M.j(hVar, view, this) == f10) {
                        return f10;
                    }
                } else {
                    h<Boolean> hVar2 = this.f33853j;
                    Boolean a10 = kotlin.coroutines.jvm.internal.a.a(false);
                    this.f33851h = 2;
                    if (hVar2.p(a10, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$isAttachedToWindowFlow$1", f = "ViewVisibilityTracker.kt", l = {75, 91}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<h<? super Boolean>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33855h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33856i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ View f33857j;

        /* loaded from: classes6.dex */
        public static final class a implements View.OnAttachStateChangeListener {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ h<Boolean> f33858a;

            /* JADX WARN: Multi-variable type inference failed */
            public a(h<? super Boolean> hVar) {
                this.f33858a = hVar;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                this.f33858a.h(Boolean.TRUE);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                this.f33858a.h(Boolean.FALSE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f33857j = view;
        }

        public static final Unit j(View view, a aVar) {
            view.removeOnAttachStateChangeListener(aVar);
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(this.f33857j, cVar);
            dVar.f33856i = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(h<? super Boolean> hVar, rs.c<? super Unit> cVar) {
            return ((d) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            h hVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33855h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                hVar = (h) this.f33856i;
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                hVar = (h) this.f33856i;
                Boolean a10 = kotlin.coroutines.jvm.internal.a.a(this.f33857j.isAttachedToWindow());
                this.f33856i = hVar;
                this.f33855h = 1;
                if (hVar.p(a10, this) == f10) {
                    return f10;
                }
            }
            final a aVar = new a(hVar);
            this.f33857j.addOnAttachStateChangeListener(aVar);
            final View view = this.f33857j;
            Function0 function0 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.b0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return M.d.j(view, aVar);
                }
            };
            this.f33856i = null;
            this.f33855h = 2;
            if (ProduceKt.a(hVar, function0, this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$isEnoughAreaVisibleFlow$1", f = "ViewVisibilityTracker.kt", l = {133, 134}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<kt.c<? super Boolean>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f33859h;

        /* renamed from: i  reason: collision with root package name */
        public int f33860i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f33861j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ View f33862k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(View view, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f33862k = view;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            e eVar = new e(this.f33862k, cVar);
            eVar.f33861j = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super Boolean> cVar, rs.c<? super Unit> cVar2) {
            return ((e) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:11:0x003c). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r8.f33860i
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L2f
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                java.lang.Object r1 = r8.f33859h
                android.graphics.Rect r1 = (android.graphics.Rect) r1
                java.lang.Object r5 = r8.f33861j
                kt.c r5 = (kt.c) r5
                kotlin.f.b(r9)
                goto L3c
            L1b:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L23:
                java.lang.Object r1 = r8.f33859h
                android.graphics.Rect r1 = (android.graphics.Rect) r1
                java.lang.Object r5 = r8.f33861j
                kt.c r5 = (kt.c) r5
                kotlin.f.b(r9)
                goto L60
            L2f:
                kotlin.f.b(r9)
                java.lang.Object r9 = r8.f33861j
                r5 = r9
                kt.c r5 = (kt.c) r5
                android.graphics.Rect r1 = new android.graphics.Rect
                r1.<init>(r4, r4, r4, r4)
            L3c:
                android.view.View r9 = r8.f33862k
                boolean r9 = r9.isShown()
                if (r9 == 0) goto L4e
                android.view.View r9 = r8.f33862k
                boolean r9 = r9.getGlobalVisibleRect(r1)
                if (r9 == 0) goto L4e
                r9 = r3
                goto L4f
            L4e:
                r9 = r4
            L4f:
                java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.a.a(r9)
                r8.f33861j = r5
                r8.f33859h = r1
                r8.f33860i = r3
                java.lang.Object r9 = r5.emit(r9, r8)
                if (r9 != r0) goto L60
                return r0
            L60:
                r8.f33861j = r5
                r8.f33859h = r1
                r8.f33860i = r2
                r6 = 500(0x1f4, double:2.47E-321)
                java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r6, r8)
                if (r9 != r0) goto L3c
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.M.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$isLifecycleResumedFlow$1", f = "ViewVisibilityTracker.kt", l = {118}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<h<? super Boolean>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33863h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33864i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Lifecycle f33865j;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f33866a;

            static {
                int[] iArr = new int[Lifecycle.Event.values().length];
                try {
                    iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f33866a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Lifecycle lifecycle, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f33865j = lifecycle;
        }

        public static final Unit j(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
            lifecycle.removeObserver(lifecycleEventObserver);
            return Unit.f60915a;
        }

        public static final void k(h hVar, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            int i10 = a.f33866a[event.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    Unit unit = Unit.f60915a;
                    return;
                } else {
                    kotlinx.coroutines.channels.a.b(hVar.h(Boolean.TRUE));
                    return;
                }
            }
            kotlinx.coroutines.channels.a.b(hVar.h(Boolean.FALSE));
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            f fVar = new f(this.f33865j, cVar);
            fVar.f33864i = obj;
            return fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(h<? super Boolean> hVar, rs.c<? super Unit> cVar) {
            return ((f) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33863h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final h hVar = (h) this.f33864i;
                final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.c0
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        M.f.k(h.this, lifecycleOwner, event);
                    }
                };
                this.f33865j.addObserver(lifecycleEventObserver);
                final Lifecycle lifecycle = this.f33865j;
                Function0 function0 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.d0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return M.f.j(Lifecycle.this, lifecycleEventObserver);
                    }
                };
                this.f33863h = 1;
                if (ProduceKt.a(hVar, function0, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ViewVisibilityTrackerKt$isLifecycleResumedFlow$lifecycle$1", f = "ViewVisibilityTracker.kt", l = {102}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function2<kt.c<? super Boolean>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33867h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33868i;

        public g(rs.c<? super g> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            g gVar = new g(cVar);
            gVar.f33868i = obj;
            return gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super Boolean> cVar, rs.c<? super Unit> cVar2) {
            return ((g) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33867h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                this.f33867h = 1;
                if (((kt.c) this.f33868i).emit(null, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public static final kt.b<Boolean> b(View view) {
        return g(kotlinx.coroutines.flow.c.g(new d(view, null)));
    }

    public static final kt.b<Boolean> c(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            return g(kotlinx.coroutines.flow.c.g(new f(lifecycle, null)));
        }
        return kotlinx.coroutines.flow.c.F(new g(null));
    }

    public static final kt.b<Boolean> f(View view) {
        return g(kotlinx.coroutines.flow.c.F(new e(view, null)));
    }

    public static final <T> kt.b<T> g(kt.b<? extends T> bVar) {
        return kotlinx.coroutines.flow.c.I(kotlinx.coroutines.flow.c.r(kotlinx.coroutines.flow.c.o(bVar)), com.moloco.sdk.internal.scheduling.c.a().getMain());
    }

    public static final Object i(h<? super Boolean> hVar, View view, rs.c<? super Unit> cVar) {
        Object m10 = kotlinx.coroutines.flow.c.m(b(view), new a(hVar, view, null), cVar);
        if (m10 == kotlin.coroutines.intrinsics.a.f()) {
            return m10;
        }
        return Unit.f60915a;
    }

    public static final Object j(h<? super Boolean> hVar, View view, rs.c<? super Unit> cVar) {
        Object m10 = kotlinx.coroutines.flow.c.m(f(view), new b(hVar, null), cVar);
        if (m10 == kotlin.coroutines.intrinsics.a.f()) {
            return m10;
        }
        return Unit.f60915a;
    }

    public static final Object k(h<? super Boolean> hVar, View view, rs.c<? super Unit> cVar) {
        Object m10 = kotlinx.coroutines.flow.c.m(c(ViewTreeLifecycleOwner.get(view)), new c(hVar, view, null), cVar);
        if (m10 == kotlin.coroutines.intrinsics.a.f()) {
            return m10;
        }
        return Unit.f60915a;
    }
}
