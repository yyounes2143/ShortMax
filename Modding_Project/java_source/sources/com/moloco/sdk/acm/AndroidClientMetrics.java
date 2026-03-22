package com.moloco.sdk.acm;

import androidx.lifecycle.ProcessLifecycleOwner;
import com.moloco.sdk.acm.db.MetricsDb;
import com.moloco.sdk.acm.eventprocessing.m;
import com.moloco.sdk.acm.services.ApplicationLifecycleObserver;
import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nAndroidClientMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,252:1\n120#2,10:253\n1#3:263\n*S KotlinDebug\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics\n*L\n156#1:253,10\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidClientMetrics {

    /* renamed from: b  reason: collision with root package name */
    private static com.moloco.sdk.acm.eventprocessing.f f31801b;

    /* renamed from: c  reason: collision with root package name */
    private static com.moloco.sdk.acm.services.c f31802c;

    /* renamed from: d  reason: collision with root package name */
    public static h f31803d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static g f31804e;

    /* renamed from: k  reason: collision with root package name */
    private static com.moloco.sdk.acm.eventprocessing.g f31810k;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AndroidClientMetrics f31800a = new AndroidClientMetrics();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final qt.a f31805f = qt.d.b(false, 1, null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final g0 f31806g = kotlinx.coroutines.i.a(q0.b().plus(r1.b(null, 1, null)));
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicReference<f> f31807h = new AtomicReference<>(f.f31934c);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final CopyOnWriteArrayList<com.moloco.sdk.acm.e> f31808i = new CopyOnWriteArrayList<>();
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final CopyOnWriteArrayList<com.moloco.sdk.acm.b> f31809j = new CopyOnWriteArrayList<>();

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.AndroidClientMetrics$initialize$1", f = "AndroidClientMetrics.kt", l = {258, 124}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAndroidClientMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$initialize$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,252:1\n120#2,10:253\n*S KotlinDebug\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$initialize$1\n*L\n120#1:253,10\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f31811h;

        /* renamed from: i  reason: collision with root package name */
        public int f31812i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.d f31813j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.moloco.sdk.acm.d dVar, com.moloco.sdk.acm.a aVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f31813j = dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f31813j, null, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            qt.a aVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31812i;
            try {
            } catch (IllegalStateException e10) {
                com.moloco.sdk.acm.services.e.e(com.moloco.sdk.acm.services.e.f31983a, "MetricsDb", "Unable to create metrics db", e10, false, 8, null);
                AndroidClientMetrics.f31807h.set(f.f31934c);
            } catch (Exception e11) {
                com.moloco.sdk.acm.services.e.e(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "Initialization error", e11, false, 8, null);
                AndroidClientMetrics.f31807h.set(f.f31934c);
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        aVar = (qt.a) this.f31811h;
                        kotlin.f.b(obj);
                        Unit unit = Unit.f60915a;
                        aVar.unlock(null);
                        AndroidClientMetrics.f31800a.s();
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (qt.a) this.f31811h;
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.db.d g10 = MetricsDb.f31835a.b(this.f31813j.c()).g();
                com.moloco.sdk.acm.services.g gVar = new com.moloco.sdk.acm.services.g();
                AndroidClientMetrics androidClientMetrics = AndroidClientMetrics.f31800a;
                com.moloco.sdk.acm.eventprocessing.c cVar = new com.moloco.sdk.acm.eventprocessing.c(androidClientMetrics.p(), this.f31813j.c());
                AndroidClientMetrics.f31810k = new m(cVar, androidClientMetrics.p(), null, AndroidClientMetrics.f31806g, 4, null);
                AndroidClientMetrics.f31802c = new com.moloco.sdk.acm.services.c(ProcessLifecycleOwner.Companion.get().getLifecycle(), new ApplicationLifecycleObserver(cVar, AndroidClientMetrics.f31806g));
                com.moloco.sdk.acm.eventprocessing.g gVar2 = AndroidClientMetrics.f31810k;
                if (gVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("requestScheduler");
                    gVar2 = null;
                }
                com.moloco.sdk.acm.services.c cVar2 = AndroidClientMetrics.f31802c;
                if (cVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("applicationLifecycleTracker");
                    cVar2 = null;
                }
                AndroidClientMetrics.f31801b = new com.moloco.sdk.acm.eventprocessing.i(g10, gVar, gVar2, cVar2);
                AndroidClientMetrics.f31807h.set(f.f31932a);
                aVar = AndroidClientMetrics.f31805f;
                this.f31811h = aVar;
                this.f31812i = 1;
                if (aVar.lock(null, this) == f10) {
                    return f10;
                }
            }
            g gVar3 = AndroidClientMetrics.f31804e;
            if (gVar3 != null) {
                AndroidClientMetrics androidClientMetrics2 = AndroidClientMetrics.f31800a;
                AndroidClientMetrics.f31804e = null;
                com.moloco.sdk.acm.services.e.f(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "Updating config with pending config", false, 4, null);
                this.f31811h = aVar;
                this.f31812i = 2;
                if (androidClientMetrics2.y(gVar3, this) == f10) {
                    return f10;
                }
                Unit unit2 = Unit.f60915a;
            }
            aVar.unlock(null);
            AndroidClientMetrics.f31800a.s();
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.AndroidClientMetrics$processQueuedEvents$1", f = "AndroidClientMetrics.kt", l = {VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST, VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAndroidClientMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$processQueuedEvents$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1863#2,2:253\n1863#2,2:255\n*S KotlinDebug\n*F\n+ 1 AndroidClientMetrics.kt\ncom/moloco/sdk/acm/AndroidClientMetrics$processQueuedEvents$1\n*L\n234#1:253,2\n235#1:255,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f31814h;

        /* renamed from: i  reason: collision with root package name */
        public int f31815i;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r7.f31815i
                r2 = 0
                java.lang.String r3 = "eventProcessor"
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L29
                if (r1 == r5) goto L21
                if (r1 != r4) goto L19
                java.lang.Object r1 = r7.f31814h
                java.util.Iterator r1 = (java.util.Iterator) r1
                kotlin.f.b(r8)
                goto L60
            L19:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L21:
                java.lang.Object r1 = r7.f31814h
                java.util.Iterator r1 = (java.util.Iterator) r1
                kotlin.f.b(r8)
                goto L34
            L29:
                kotlin.f.b(r8)
                java.util.concurrent.CopyOnWriteArrayList r8 = com.moloco.sdk.acm.AndroidClientMetrics.g()
                java.util.Iterator r1 = r8.iterator()
            L34:
                boolean r8 = r1.hasNext()
                if (r8 == 0) goto L58
                java.lang.Object r8 = r1.next()
                com.moloco.sdk.acm.e r8 = (com.moloco.sdk.acm.e) r8
                com.moloco.sdk.acm.eventprocessing.f r6 = com.moloco.sdk.acm.AndroidClientMetrics.c()
                if (r6 != 0) goto L4a
                kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
                r6 = r2
            L4a:
                kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
                r7.f31814h = r1
                r7.f31815i = r5
                java.lang.Object r8 = r6.b(r8, r7)
                if (r8 != r0) goto L34
                return r0
            L58:
                java.util.concurrent.CopyOnWriteArrayList r8 = com.moloco.sdk.acm.AndroidClientMetrics.f()
                java.util.Iterator r1 = r8.iterator()
            L60:
                boolean r8 = r1.hasNext()
                if (r8 == 0) goto L84
                java.lang.Object r8 = r1.next()
                com.moloco.sdk.acm.b r8 = (com.moloco.sdk.acm.b) r8
                com.moloco.sdk.acm.eventprocessing.f r5 = com.moloco.sdk.acm.AndroidClientMetrics.c()
                if (r5 != 0) goto L76
                kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
                r5 = r2
            L76:
                kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
                r7.f31814h = r1
                r7.f31815i = r4
                java.lang.Object r8 = r5.a(r8, r7)
                if (r8 != r0) goto L60
                return r0
            L84:
                java.util.concurrent.CopyOnWriteArrayList r8 = com.moloco.sdk.acm.AndroidClientMetrics.g()
                r8.clear()
                java.util.concurrent.CopyOnWriteArrayList r8 = com.moloco.sdk.acm.AndroidClientMetrics.f()
                r8.clear()
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.AndroidClientMetrics.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.AndroidClientMetrics$recordCountEvent$1", f = "AndroidClientMetrics.kt", l = {190}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31816h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.b f31817i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.moloco.sdk.acm.b bVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f31817i = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f31817i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31816h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.eventprocessing.f fVar = AndroidClientMetrics.f31801b;
                if (fVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("eventProcessor");
                    fVar = null;
                }
                com.moloco.sdk.acm.b bVar = this.f31817i;
                this.f31816h = 1;
                if (fVar.a(bVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.AndroidClientMetrics$recordTimerEvent$1", f = "AndroidClientMetrics.kt", l = {225}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31818h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.e f31819i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.moloco.sdk.acm.e eVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f31819i = eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f31819i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31818h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.eventprocessing.f fVar = AndroidClientMetrics.f31801b;
                if (fVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("eventProcessor");
                    fVar = null;
                }
                com.moloco.sdk.acm.e eVar = this.f31819i;
                this.f31818h = 1;
                if (fVar.b(eVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.AndroidClientMetrics", f = "AndroidClientMetrics.kt", l = {258, 164}, m = "updateConfig")
    /* loaded from: classes6.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31820h;

        /* renamed from: i  reason: collision with root package name */
        public Object f31821i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f31822j;

        /* renamed from: l  reason: collision with root package name */
        public int f31824l;

        public e(rs.c<? super e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31822j = obj;
            this.f31824l |= Integer.MIN_VALUE;
            return AndroidClientMetrics.this.x(null, this);
        }
    }

    private AndroidClientMetrics() {
    }

    public static /* synthetic */ void r(AndroidClientMetrics androidClientMetrics, com.moloco.sdk.acm.d dVar, com.moloco.sdk.acm.a aVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            aVar = null;
        }
        androidClientMetrics.q(dVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        gt.e.d(f31806g, null, null, new b(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object y(g gVar, rs.c<? super Unit> cVar) {
        String a10 = gVar.a();
        if (a10 != null) {
            f31800a.p().b(a10);
        }
        Long b10 = gVar.b();
        if (b10 != null) {
            f31800a.p().a(b10.longValue());
        }
        com.moloco.sdk.acm.eventprocessing.g gVar2 = f31810k;
        if (gVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestScheduler");
            gVar2 = null;
        }
        Object a11 = gVar2.a(cVar);
        if (a11 == kotlin.coroutines.intrinsics.a.f()) {
            return a11;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final h p() {
        h hVar = f31803d;
        if (hVar != null) {
            return hVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("opsConfig");
        return null;
    }

    public final void q(@NotNull com.moloco.sdk.acm.d config, @Nullable com.moloco.sdk.acm.a aVar) {
        Intrinsics.checkNotNullParameter(config, "config");
        com.moloco.sdk.acm.services.e.m(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "ACM initialize", false, 4, null);
        if (androidx.compose.animation.core.a.a(f31807h, f.f31934c, f.f31933b)) {
            v(j.a(config));
            gt.e.d(f31806g, null, null, new a(config, aVar, null), 3, null);
        }
    }

    public final void t(@NotNull com.moloco.sdk.acm.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (f31807h.get() != f.f31932a) {
            f31809j.add(event);
            com.moloco.sdk.acm.services.e.f(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "Moloco Client Metrics not initialized", false, 4, null);
            return;
        }
        gt.e.d(f31806g, null, null, new c(event, null), 3, null);
    }

    public final void u(@NotNull com.moloco.sdk.acm.e event) {
        Intrinsics.checkNotNullParameter(event, "event");
        event.e();
        if (f31807h.get() != f.f31932a) {
            f31808i.add(event);
            com.moloco.sdk.acm.services.e.f(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "Moloco Client Metrics not initialized", false, 4, null);
            return;
        }
        gt.e.d(f31806g, null, null, new d(event, null), 3, null);
    }

    public final void v(@NotNull h hVar) {
        Intrinsics.checkNotNullParameter(hVar, "<set-?>");
        f31803d = hVar;
    }

    @NotNull
    public final com.moloco.sdk.acm.e w(@NotNull String eventName) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        if (f31807h.get() != f.f31932a) {
            com.moloco.sdk.acm.services.e.f(com.moloco.sdk.acm.services.e.f31983a, "AndroidClientMetrics", "Moloco Client Metrics not initialized", false, 4, null);
        }
        com.moloco.sdk.acm.e a10 = com.moloco.sdk.acm.e.Companion.a(eventName);
        a10.d();
        return a10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.g r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.moloco.sdk.acm.AndroidClientMetrics.e
            if (r0 == 0) goto L13
            r0 = r15
            com.moloco.sdk.acm.AndroidClientMetrics$e r0 = (com.moloco.sdk.acm.AndroidClientMetrics.e) r0
            int r1 = r0.f31824l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31824l = r1
            goto L18
        L13:
            com.moloco.sdk.acm.AndroidClientMetrics$e r0 = new com.moloco.sdk.acm.AndroidClientMetrics$e
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f31822j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f31824l
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L43
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.f.b(r15)
            goto L8f
        L2d:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L35:
            java.lang.Object r14 = r0.f31821i
            qt.a r14 = (qt.a) r14
            java.lang.Object r0 = r0.f31820h
            com.moloco.sdk.acm.g r0 = (com.moloco.sdk.acm.g) r0
            kotlin.f.b(r15)
            r15 = r14
            r14 = r0
            goto L6d
        L43:
            kotlin.f.b(r15)
            java.util.concurrent.atomic.AtomicReference<com.moloco.sdk.acm.f> r15 = com.moloco.sdk.acm.AndroidClientMetrics.f31807h
            java.lang.Object r15 = r15.get()
            com.moloco.sdk.acm.f r2 = com.moloco.sdk.acm.f.f31932a
            if (r15 == r2) goto L7a
            com.moloco.sdk.acm.services.e r6 = com.moloco.sdk.acm.services.e.f31983a
            r11 = 12
            r12 = 0
            java.lang.String r7 = "AndroidClientMetrics"
            java.lang.String r8 = "ACM updateConfig called when the SDK was not initialized. Initialize the SDK first."
            r9 = 0
            r10 = 0
            com.moloco.sdk.acm.services.e.l(r6, r7, r8, r9, r10, r11, r12)
            qt.a r15 = com.moloco.sdk.acm.AndroidClientMetrics.f31805f
            r0.f31820h = r14
            r0.f31821i = r15
            r0.f31824l = r4
            java.lang.Object r0 = r15.lock(r5, r0)
            if (r0 != r1) goto L6d
            return r1
        L6d:
            com.moloco.sdk.acm.AndroidClientMetrics.f31804e = r14     // Catch: java.lang.Throwable -> L75
            kotlin.Unit r14 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L75
            r15.unlock(r5)
            return r14
        L75:
            r14 = move-exception
            r15.unlock(r5)
            throw r14
        L7a:
            com.moloco.sdk.acm.services.e r6 = com.moloco.sdk.acm.services.e.f31983a
            r10 = 4
            r11 = 0
            java.lang.String r7 = "AndroidClientMetrics"
            java.lang.String r8 = "ACM update called. ACM initialized already, proceeding with update"
            r9 = 0
            com.moloco.sdk.acm.services.e.m(r6, r7, r8, r9, r10, r11)
            r0.f31824l = r3
            java.lang.Object r14 = r13.y(r14, r0)
            if (r14 != r1) goto L8f
            return r1
        L8f:
            kotlin.Unit r14 = kotlin.Unit.f60915a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.AndroidClientMetrics.x(com.moloco.sdk.acm.g, rs.c):java.lang.Object");
    }
}
