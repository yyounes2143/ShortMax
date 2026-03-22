package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nVastPrivacyIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastPrivacyIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/VastPrivacyIconImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,108:1\n49#2:109\n51#2:113\n46#3:110\n51#3:112\n105#4:111\n*S KotlinDebug\n*F\n+ 1 VastPrivacyIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/VastPrivacyIconImpl\n*L\n93#1:109\n93#1:113\n93#1:110\n93#1:112\n93#1:111\n*E\n"})
/* loaded from: classes6.dex */
public final class o implements q {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final a0 f36339a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f36340b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f36341c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final n0 f36342d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Function0<Unit> f36343e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Function0<Unit> f36344f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.e<k> f36345g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.i<j> f36346h;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.VastPrivacyIconImpl$1", f = "VastPrivacyIcon.kt", l = {67}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36347h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Context f36349j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Integer f36350k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Integer f36351l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, Integer num, Integer num2, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36349j = context;
            this.f36350k = num;
            this.f36351l = num2;
        }

        public static final Unit i() {
            return Unit.f60915a;
        }

        public static final Unit j(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c cVar) {
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f36349j, this.f36350k, this.f36351l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i10;
            Object c10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i11 = this.f36347h;
            k kVar = null;
            try {
            } catch (Exception unused) {
                if (kVar != null) {
                    kVar.destroy();
                }
                o.this.destroy();
            }
            if (i11 != 0) {
                if (i11 == 1) {
                    kotlin.f.b(obj);
                    c10 = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                a0 a0Var = o.this.f36339a;
                if (a0Var != null) {
                    Context context = this.f36349j;
                    com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = o.this.f36341c;
                    n0 n0Var = o.this.f36342d;
                    Integer num = this.f36350k;
                    int i12 = 0;
                    if (num != null) {
                        i10 = num.intValue();
                    } else {
                        i10 = 0;
                    }
                    Integer num2 = this.f36351l;
                    if (num2 != null) {
                        i12 = num2.intValue();
                    }
                    Function0 function0 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.r
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return o.a.i();
                        }
                    };
                    Function1 function1 = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.s
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return o.a.j((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) obj2);
                        }
                    };
                    this.f36347h = 1;
                    c10 = l.c(a0Var, context, aVar, n0Var, i10, i12, function0, function1, false, this, 128, null);
                    if (c10 == f10) {
                        return f10;
                    }
                }
                o.this.f36345g.setValue(kVar);
                return Unit.f60915a;
            }
            kVar = (k) c10;
            o.this.f36345g.setValue(kVar);
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b implements kt.b<j> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f36352a;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 VastPrivacyIcon.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/VastPrivacyIconImpl\n*L\n1#1,49:1\n50#2:50\n94#3:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f36353a;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.VastPrivacyIconImpl$special$$inlined$map$1$2", f = "VastPrivacyIcon.kt", l = {50}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0586a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f36354h;

                /* renamed from: i  reason: collision with root package name */
                public int f36355i;

                public C0586a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f36354h = obj;
                    this.f36355i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar) {
                this.f36353a = cVar;
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
                    boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o.b.a.C0586a
                    if (r0 == 0) goto L13
                    r0 = r6
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o$b$a$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o.b.a.C0586a) r0
                    int r1 = r0.f36355i
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f36355i = r1
                    goto L18
                L13:
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o$b$a$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o$b$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f36354h
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                    int r2 = r0.f36355i
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.f.b(r6)
                    goto L49
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.f.b(r6)
                    kt.c r6 = r4.f36353a
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.k r5 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.k) r5
                    if (r5 == 0) goto L3f
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j r5 = r5.k()
                    goto L40
                L3f:
                    r5 = 0
                L40:
                    r0.f36355i = r3
                    java.lang.Object r5 = r6.emit(r5, r0)
                    if (r5 != r1) goto L49
                    return r1
                L49:
                    kotlin.Unit r5 = kotlin.Unit.f60915a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.o.b.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public b(kt.b bVar) {
            this.f36352a = bVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super j> cVar, rs.c cVar2) {
            Object collect = this.f36352a.collect(new a(cVar), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    public o(@Nullable a0 a0Var, @Nullable Integer num, @Nullable Integer num2, @Nullable String str, @NotNull g0 scope, @NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull n0 externalLinkHandler, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        this.f36339a = a0Var;
        this.f36340b = str;
        this.f36341c = customUserEventBuilderService;
        this.f36342d = externalLinkHandler;
        this.f36343e = function0;
        this.f36344f = function02;
        kt.e<k> a10 = kotlinx.coroutines.flow.o.a(null);
        this.f36345g = a10;
        gt.g.d(scope, null, null, new a(context, num, num2, null), 3, null);
        this.f36346h = kotlinx.coroutines.flow.c.T(new b(a10), scope, m.a.b(kotlinx.coroutines.flow.m.f61804a, 0L, 0L, 3, null), null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kt.e<k> eVar = this.f36345g;
        k value = eVar.getValue();
        if (value != null) {
            value.destroy();
        }
        eVar.setValue(null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void v() {
        String str = this.f36340b;
        if (str != null) {
            Function0<Unit> function0 = this.f36343e;
            if (function0 != null) {
                function0.invoke();
            }
            this.f36342d.a(str);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    @NotNull
    public kt.i<j> y() {
        return this.f36346h;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.q
    public void i() {
        Function0<Unit> function0 = this.f36344f;
        if (function0 != null) {
            function0.invoke();
        }
    }
}
