package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class A implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33717a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f33718b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final i f33719c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final gt.g0 f33720d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f33721e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final y f33722f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.e<Boolean> f33723g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final ms.i f33724h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final kt.e<Boolean> f33725i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final kt.i<Boolean> f33726j;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$isAdDisplaying$2$1", f = "StaticFullscreenAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements at.n<Boolean, Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33727h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f33728i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f33729j;

        public a(rs.c<? super a> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, rs.c<? super Boolean> cVar) {
            a aVar = new a(cVar);
            aVar.f33728i = z10;
            aVar.f33729j = z11;
            return aVar.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, rs.c<? super Boolean> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33727h == 0) {
                f.b(obj);
                boolean z11 = this.f33728i;
                boolean z12 = this.f33729j;
                if (z11 && z12) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$show$1", f = "StaticFullscreenAd.kt", l = {100}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nStaticFullscreenAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticFullscreenAdImpl$show$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n2642#2:118\n1#3:119\n*S KotlinDebug\n*F\n+ 1 StaticFullscreenAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticFullscreenAdImpl$show$1\n*L\n102#1:118\n102#1:119\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33730h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33731i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p f33733k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o f33734l;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a extends FunctionReferenceImpl implements Function0<Unit> {
            public a(Object obj) {
                super(0, obj, A.class, "onClose", "onClose()V", 0);
            }

            public final void b() {
                ((A) this.receiver).r();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$show$1$eventHandlers$1", f = "StaticFullscreenAd.kt", l = {86}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0495b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33735h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ A f33736i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o f33737j;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$show$1$eventHandlers$1$error$1", f = "StaticFullscreenAd.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$b$a */
            /* loaded from: classes6.dex */
            public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g, rs.c<? super Boolean>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f33738h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f33739i;

                public a(rs.c<? super a> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    a aVar = new a(cVar);
                    aVar.f33739i = obj;
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
                    if (this.f33738h == 0) {
                        f.b(obj);
                        if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) this.f33739i) != null) {
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
            public C0495b(A a10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar, rs.c<? super C0495b> cVar) {
                super(2, cVar);
                this.f33736i = a10;
                this.f33737j = oVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0495b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0495b(this.f33736i, this.f33737j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar;
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33735h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g> unrecoverableError = this.f33736i.f33721e.getUnrecoverableError();
                    a aVar = new a(null);
                    this.f33735h = 1;
                    obj = kotlinx.coroutines.flow.c.x(unrecoverableError, aVar, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g gVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) obj;
                if (gVar != null && (oVar = this.f33737j) != null) {
                    oVar.a(h.b(gVar));
                }
                return Unit.f60915a;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticFullscreenAdImpl$show$1$eventHandlers$2", f = "StaticFullscreenAd.kt", l = {92}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f33740h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ A f33741i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o f33742j;

            /* loaded from: classes6.dex */
            public static final class a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o f33743a;

                public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar) {
                    this.f33743a = oVar;
                }

                @Override // kt.c
                /* renamed from: a */
                public final Object emit(Unit unit, rs.c<? super Unit> cVar) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar = this.f33743a;
                    if (oVar != null) {
                        oVar.a();
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(A a10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar, rs.c<? super c> cVar) {
                super(2, cVar);
                this.f33741i = a10;
                this.f33742j = oVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new c(this.f33741i, this.f33742j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f33740h;
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f.b(obj);
                } else {
                    f.b(obj);
                    kt.f<Unit> clickthroughEvent = this.f33741i.f33721e.getClickthroughEvent();
                    a aVar = new a(this.f33742j);
                    this.f33740h = 1;
                    if (clickthroughEvent.collect(aVar, this) == f10) {
                        return f10;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p pVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f33733k = pVar;
            this.f33734l = oVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(this.f33733k, this.f33734l, cVar);
            bVar.f33731i = obj;
            return bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00bd A[LOOP:1: B:26:0x00b7->B:28:0x00bd, LOOP_END] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                r14 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r14.f33730h
                r2 = 0
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L21
                if (r1 != r3) goto L19
                java.lang.Object r0 = r14.f33731i
                java.util.List r0 = (java.util.List) r0
                kotlin.f.b(r15)     // Catch: java.lang.Throwable -> L16
                goto L8b
            L16:
                r15 = move-exception
                goto Lb3
            L19:
                java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r15.<init>(r0)
                throw r15
            L21:
                kotlin.f.b(r15)
                java.lang.Object r15 = r14.f33731i
                gt.g0 r15 = (gt.g0) r15
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$b r8 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$b
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o r5 = r14.f33734l
                r8.<init>(r1, r5, r4)
                r9 = 3
                r10 = 0
                r6 = 0
                r7 = 0
                r5 = r15
                kotlinx.coroutines.r r1 = gt.e.d(r5, r6, r7, r8, r9, r10)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$c r8 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$c
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r5 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o r6 = r14.f33734l
                r8.<init>(r5, r6, r4)
                r6 = 0
                r5 = r15
                kotlinx.coroutines.r r15 = gt.e.d(r5, r6, r7, r8, r9, r10)
                r5 = 2
                kotlinx.coroutines.r[] r5 = new kotlinx.coroutines.r[r5]
                r5[r2] = r1
                r5[r3] = r15
                java.util.List r15 = kotlin.collections.CollectionsKt.q(r5)
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this     // Catch: java.lang.Throwable -> Laf
                kt.e r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.o(r1)     // Catch: java.lang.Throwable -> Laf
                java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)     // Catch: java.lang.Throwable -> Laf
                r1.setValue(r5)     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity$a r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticAdActivity.f34426a     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this     // Catch: java.lang.Throwable -> Laf
                android.content.Context r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.i(r1)     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.l(r1)     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$a r9 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A$b$a     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this     // Catch: java.lang.Throwable -> Laf
                r9.<init>(r1)     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p r10 = r14.f33733k     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this     // Catch: java.lang.Throwable -> Laf
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 r11 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.m(r1)     // Catch: java.lang.Throwable -> Laf
                r14.f33731i = r15     // Catch: java.lang.Throwable -> Laf
                r14.f33730h = r3     // Catch: java.lang.Throwable -> Laf
                r12 = r14
                java.lang.Object r1 = r6.a(r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> Laf
                if (r1 != r0) goto L8a
                return r0
            L8a:
                r0 = r15
            L8b:
                java.util.Iterator r15 = r0.iterator()
            L8f:
                boolean r0 = r15.hasNext()
                if (r0 == 0) goto L9f
                java.lang.Object r0 = r15.next()
                kotlinx.coroutines.r r0 = (kotlinx.coroutines.r) r0
                kotlinx.coroutines.r.a.b(r0, r4, r3, r4)
                goto L8f
            L9f:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r15 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this
                kt.e r15 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.o(r15)
                java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.a.a(r2)
                r15.setValue(r0)
                kotlin.Unit r15 = kotlin.Unit.f60915a
                return r15
            Laf:
                r0 = move-exception
                r13 = r0
                r0 = r15
                r15 = r13
            Lb3:
                java.util.Iterator r0 = r0.iterator()
            Lb7:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto Lc7
                java.lang.Object r1 = r0.next()
                kotlinx.coroutines.r r1 = (kotlinx.coroutines.r) r1
                kotlinx.coroutines.r.a.b(r1, r4, r3, r4)
                goto Lb7
            Lc7:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A r0 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.this
                kt.e r0 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.o(r0)
                java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.a.a(r2)
                r0.setValue(r1)
                throw r15
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.A.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public A(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull String adm, @NotNull n0 externalLinkHandler, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.f33717a = context;
        this.f33718b = watermark;
        this.f33719c = i.f33714c;
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f33720d = a10;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a(context, null, new com.moloco.sdk.internal.services.t(externalLinkHandler, customUserEventBuilderService), com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w.a(), false, null, 50, null);
        this.f33721e = aVar;
        this.f33722f = new y(adm, a10, aVar);
        Boolean bool = Boolean.FALSE;
        this.f33723g = kotlinx.coroutines.flow.o.a(bool);
        this.f33724h = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return A.q(A.this);
            }
        });
        kt.e<Boolean> a11 = kotlinx.coroutines.flow.o.a(bool);
        this.f33725i = a11;
        this.f33726j = a11;
    }

    public static final kt.i q(A a10) {
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.G(a10.f33723g, a10.f33721e.c(), new a(null)), a10.f33720d, m.f61804a.c(), Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f33720d, null, 1, null);
        this.f33721e.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f33719c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        this.f33722f.h(j10, aVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public kt.i<Boolean> isLoaded() {
        return this.f33722f.isLoaded();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u
    /* renamed from: j */
    public void c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p options, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o oVar) {
        Intrinsics.checkNotNullParameter(options, "options");
        gt.g.d(this.f33720d, null, null, new b(options, oVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.v
    @NotNull
    public kt.i<Boolean> k() {
        return this.f33726j;
    }

    public final void r() {
        this.f33723g.setValue(Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return (kt.i) this.f33724h.getValue();
    }
}
