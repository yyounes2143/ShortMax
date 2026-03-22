package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.e0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.j0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class l {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.PreparedVastResourceKt", f = "PreparedVastResource.kt", l = {74, 137}, m = "prepareVastResource")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f36236h;

        /* renamed from: i  reason: collision with root package name */
        public Object f36237i;

        /* renamed from: j  reason: collision with root package name */
        public Object f36238j;

        /* renamed from: k  reason: collision with root package name */
        public Object f36239k;

        /* renamed from: l  reason: collision with root package name */
        public Object f36240l;

        /* renamed from: m  reason: collision with root package name */
        public Object f36241m;

        /* renamed from: n  reason: collision with root package name */
        public Object f36242n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f36243o;

        /* renamed from: p  reason: collision with root package name */
        public /* synthetic */ Object f36244p;

        /* renamed from: q  reason: collision with root package name */
        public int f36245q;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36244p = obj;
            this.f36245q |= Integer.MIN_VALUE;
            return l.b(null, null, null, null, 0, 0, null, null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.PreparedVastResourceKt$prepareVastResource$2", f = "PreparedVastResource.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36246h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef<String> f36247i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ a0 f36248j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Ref.ObjectRef<String> objectRef, a0 a0Var, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f36247i = objectRef;
            this.f36248j = a0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f36247i, this.f36248j, cVar);
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36246h == 0) {
                kotlin.f.b(obj);
                this.f36247i.element = l.d(this.f36248j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* loaded from: classes6.dex */
    public static final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Integer f36249a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m> f36250b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef<C3281d> f36251c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef<g0> f36252d;

        public c(Integer num, Ref.ObjectRef<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m> objectRef, Ref.ObjectRef<C3281d> objectRef2, Ref.ObjectRef<g0> objectRef3) {
            this.f36249a = num;
            this.f36250b = objectRef;
            this.f36251c = objectRef2;
            this.f36252d = objectRef3;
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
        public void destroy() {
            Integer num = this.f36249a;
            if (num != null) {
                e0.f33962a.c(num.intValue());
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m mVar = this.f36250b.element;
            if (mVar != null) {
                mVar.destroy();
            }
            this.f36250b.element = null;
            C3281d c3281d = this.f36251c.element;
            if (c3281d != null) {
                c3281d.destroy();
            }
            this.f36251c.element = null;
            g0 g0Var = this.f36252d.element;
            if (g0Var != null) {
                kotlinx.coroutines.i.e(g0Var, null, 1, null);
            }
            this.f36252d.element = null;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.PreparedVastResourceKt$prepareVastResource$webView$1$1", f = "PreparedVastResource.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<Unit, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36253h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f36254i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Function0<Unit> function0, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f36254i = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f36254i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(Unit unit, rs.c<? super Unit> cVar) {
            return ((d) create(unit, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36253h == 0) {
                kotlin.f.b(obj);
                this.f36254i.invoke();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.PreparedVastResourceKt$prepareVastResource$webView$1$2", f = "PreparedVastResource.kt", l = {107}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36255h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f36256i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c, Unit> f36257j;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.PreparedVastResourceKt$prepareVastResource$webView$1$2$1", f = "PreparedVastResource.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36258h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f36259i;

            public a(rs.c<? super a> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                a aVar = new a(cVar);
                aVar.f36259i = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g gVar, rs.c<? super Boolean> cVar) {
                return ((a) create(gVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z10;
                kotlin.coroutines.intrinsics.a.f();
                if (this.f36258h == 0) {
                    kotlin.f.b(obj);
                    if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) this.f36259i) != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    return kotlin.coroutines.jvm.internal.a.a(z10);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar, Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c, Unit> function1, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f36256i = aVar;
            this.f36257j = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new e(this.f36256i, this.f36257j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36255h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g> unrecoverableError = this.f36256i.getUnrecoverableError();
                a aVar = new a(null);
                this.f36255h = 1;
                obj = kotlinx.coroutines.flow.c.x(unrecoverableError, aVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g gVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) obj;
            if (gVar != null) {
                this.f36257j.invoke(gVar);
            }
            return Unit.f60915a;
        }
    }

    @Nullable
    public static final j a(@NotNull a0 a0Var, int i10, int i11) {
        Intrinsics.checkNotNullParameter(a0Var, "<this>");
        if (a0Var instanceof a0.c) {
            a0.c cVar = (a0.c) a0Var;
            if (cVar.a().a() == com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35581a) {
                return new j.b(cVar.a().b(), i10, i11);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v2, types: [com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.m, T] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.d, T, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a] */
    /* JADX WARN: Type inference failed for: r3v5, types: [T, gt.g0] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0 r27, @org.jetbrains.annotations.NotNull android.content.Context r28, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a r29, @org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0 r30, int r31, int r32, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<kotlin.Unit> r33, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c, kotlin.Unit> r34, boolean r35, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.k> r36) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.l.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0, android.content.Context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0, int, int, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, boolean, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object c(a0 a0Var, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, n0 n0Var, int i10, int i11, Function0 function0, Function1 function1, boolean z10, rs.c cVar, int i12, Object obj) {
        boolean z11;
        if ((i12 & 128) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        return b(a0Var, context, aVar, n0Var, i10, i11, function0, function1, z11, cVar);
    }

    @Nullable
    public static final String d(@NotNull a0 a0Var) {
        Intrinsics.checkNotNullParameter(a0Var, "<this>");
        if (a0Var instanceof a0.a) {
            a0.a aVar = (a0.a) a0Var;
            if (j0.f34065a.a(aVar.a().a())) {
                return aVar.a().a();
            }
        } else if (a0Var instanceof a0.b) {
            a0.b bVar = (a0.b) a0Var;
            if (j0.f34065a.a(bVar.a().a())) {
                return bVar.a().a();
            }
        } else if (a0Var instanceof a0.c) {
            a0.c cVar = (a0.c) a0Var;
            if (cVar.a().a() == com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35582b && j0.f34065a.a(cVar.a().b())) {
                return cVar.a().b();
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return null;
    }

    public static final Unit e() {
        return Unit.f60915a;
    }

    public static final Unit f() {
        return Unit.f60915a;
    }
}
