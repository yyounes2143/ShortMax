package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nMraidFullscreenContentControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MraidFullscreenContentControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidFullscreenContentControllerImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,61:1\n56#2:62\n59#2:66\n46#3:63\n51#3:65\n105#4:64\n*S KotlinDebug\n*F\n+ 1 MraidFullscreenContentControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidFullscreenContentControllerImpl\n*L\n45#1:62\n45#1:66\n45#1:63\n45#1:65\n45#1:64\n*E\n"})
/* loaded from: classes6.dex */
public final class k implements s {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f34296a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public Function0<Unit> f34297b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f34298c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final WebView f34299d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.g f34300e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.d<l> f34301f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.f<l> f34302g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.i<x.f> f34303h;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidFullscreenContentControllerImpl$onEvent$1", f = "MraidFullscreenContentControllerImpl.kt", l = {41}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34304h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ l f34306j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34306j = lVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34306j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34304h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = k.this.f34301f;
                l lVar = this.f34306j;
                this.f34304h = 1;
                if (dVar.emit(lVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b implements kt.b<x.f> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f34307a;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 MraidFullscreenContentControllerImpl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidFullscreenContentControllerImpl\n*L\n1#1,49:1\n57#2:50\n58#2:52\n46#3:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f34308a;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidFullscreenContentControllerImpl$special$$inlined$mapNotNull$1$2", f = "MraidFullscreenContentControllerImpl.kt", l = {52}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0514a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f34309h;

                /* renamed from: i  reason: collision with root package name */
                public int f34310i;

                public C0514a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f34309h = obj;
                    this.f34310i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar) {
                this.f34308a = cVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r5, rs.c r6) {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k.b.a.C0514a
                    if (r0 == 0) goto L13
                    r0 = r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k$b$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k.b.a.C0514a) r0
                    int r1 = r0.f34310i
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f34310i = r1
                    goto L18
                L13:
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k$b$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k$b$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f34309h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f34310i
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.f.b(r6)
                    goto L4b
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.f.b(r6)
                    kt.c r6 = r4.f34308a
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x) r5
                    boolean r2 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x.f
                    if (r2 == 0) goto L3f
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x$f r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x.f) r5
                    goto L40
                L3f:
                    r5 = 0
                L40:
                    if (r5 == 0) goto L4b
                    r0.f34310i = r3
                    java.lang.Object r5 = r6.emit(r5, r0)
                    if (r5 != r1) goto L4b
                    return r1
                L4b:
                    kotlin.Unit r5 = kotlin.Unit.f60915a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.k.b.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public b(kt.b bVar) {
            this.f34307a = bVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super x.f> cVar, rs.c cVar2) {
            Object collect = this.f34307a.collect(new a(cVar), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    public /* synthetic */ k(boolean z10, Function0 function0, g0 g0Var, int i10, WebView webView, kt.f fVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, function0, g0Var, i10, webView, fVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public void C(@NotNull a.AbstractC0597a.f position) {
        Intrinsics.checkNotNullParameter(position, "position");
        S(l.f34313b);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s
    public void N() {
        S(l.f34312a);
    }

    public final kotlinx.coroutines.r S(l lVar) {
        kotlinx.coroutines.r d10;
        d10 = gt.g.d(this.f34298c, null, null, new a(lVar, null), 3, null);
        return d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s
    @NotNull
    public WebView c() {
        return this.f34299d;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        this.f34297b.invoke();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s
    @NotNull
    public kt.i<x.f> e() {
        return this.f34303h;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d
    @NotNull
    public kt.i<d.a> m() {
        return this.f34300e.m();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.b
    public boolean p() {
        return this.f34296a;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s
    @NotNull
    /* renamed from: x */
    public kt.f<l> a() {
        return this.f34302g;
    }

    public k(boolean z10, Function0<Unit> closeFullscreenAdRepresentation, g0 scope, int i10, WebView webView, kt.f<? extends x> mraidJsCommands) {
        Intrinsics.checkNotNullParameter(closeFullscreenAdRepresentation, "closeFullscreenAdRepresentation");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(mraidJsCommands, "mraidJsCommands");
        this.f34296a = z10;
        this.f34297b = closeFullscreenAdRepresentation;
        this.f34298c = scope;
        this.f34299d = webView;
        this.f34300e = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.h.a(i10, scope);
        kt.d<l> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34301f = b10;
        this.f34302g = b10;
        this.f34303h = kotlinx.coroutines.flow.c.T(new b(mraidJsCommands), scope, kotlinx.coroutines.flow.m.f61804a.c(), null);
    }
}
