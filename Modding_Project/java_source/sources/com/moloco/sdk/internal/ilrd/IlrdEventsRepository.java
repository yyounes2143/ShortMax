package com.moloco.sdk.internal.ilrd;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.moloco.sdk.IlrdRequest$ImpressionLevelRevenue;
import com.moloco.sdk.IlrdRequest$ImpressionRevenueRequest;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.ilrd.h;
import com.moloco.sdk.internal.services.h0;
import com.moloco.sdk.internal.services.o;
import com.moloco.sdk.internal.services.p;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import gt.g0;
import io.ktor.http.a;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository\n+ 2 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,430:1\n17#2,8:431\n17#2,8:439\n1#3:447\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository\n*L\n193#1:431,8\n243#1:439,8\n*E\n"})
/* loaded from: classes6.dex */
public final class IlrdEventsRepository implements DefaultLifecycleObserver {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final b f32167s = new b(null);

    /* renamed from: t  reason: collision with root package name */
    public static final int f32168t = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f32169a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f32170b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final l f32171c;

    /* renamed from: d  reason: collision with root package name */
    public final long f32172d;

    /* renamed from: e  reason: collision with root package name */
    public final int f32173e;

    /* renamed from: f  reason: collision with root package name */
    public final long f32174f;

    /* renamed from: g  reason: collision with root package name */
    public final long f32175g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f32176h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final p f32177i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final String f32178j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final String f32179k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final h0 f32180l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final com.moloco.sdk.internal.ilrd.d f32181m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final com.moloco.sdk.internal.ilrd.d f32182n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public final com.moloco.sdk.internal.ilrd.d f32183o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public final qt.a f32184p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public com.moloco.sdk.internal.ilrd.a f32185q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public final List<IlrdRequest$ImpressionLevelRevenue> f32186r;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$1", f = "IlrdEventsRepository.kt", l = {436, 113, 115}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$1\n*L\n112#1:431,11\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32187h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32188i;

        /* renamed from: j  reason: collision with root package name */
        public int f32189j;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Lifecycle f32191l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$1$2", f = "IlrdEventsRepository.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.internal.ilrd.IlrdEventsRepository$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0466a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32192h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ Lifecycle f32193i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ IlrdEventsRepository f32194j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0466a(Lifecycle lifecycle, IlrdEventsRepository ilrdEventsRepository, rs.c<? super C0466a> cVar) {
                super(2, cVar);
                this.f32193i = lifecycle;
                this.f32194j = ilrdEventsRepository;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0466a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0466a(this.f32193i, this.f32194j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f32192h == 0) {
                    kotlin.f.b(obj);
                    this.f32193i.addObserver(this.f32194j);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Lifecycle lifecycle, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f32191l = lifecycle;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f32191l, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x007b A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r6.f32189j
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L35
                if (r1 == r4) goto L28
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.f.b(r7)
                goto L7c
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                java.lang.Object r1 = r6.f32187h
                qt.a r1 = (qt.a) r1
                kotlin.f.b(r7)     // Catch: java.lang.Throwable -> L26
                goto L5b
            L26:
                r7 = move-exception
                goto L7f
            L28:
                java.lang.Object r1 = r6.f32188i
                com.moloco.sdk.internal.ilrd.IlrdEventsRepository r1 = (com.moloco.sdk.internal.ilrd.IlrdEventsRepository) r1
                java.lang.Object r4 = r6.f32187h
                qt.a r4 = (qt.a) r4
                kotlin.f.b(r7)
                r7 = r4
                goto L4d
            L35:
                kotlin.f.b(r7)
                com.moloco.sdk.internal.ilrd.IlrdEventsRepository r7 = com.moloco.sdk.internal.ilrd.IlrdEventsRepository.this
                qt.a r7 = com.moloco.sdk.internal.ilrd.IlrdEventsRepository.h(r7)
                com.moloco.sdk.internal.ilrd.IlrdEventsRepository r1 = com.moloco.sdk.internal.ilrd.IlrdEventsRepository.this
                r6.f32187h = r7
                r6.f32188i = r1
                r6.f32189j = r4
                java.lang.Object r4 = r7.lock(r5, r6)
                if (r4 != r0) goto L4d
                return r0
            L4d:
                r6.f32187h = r7     // Catch: java.lang.Throwable -> L82
                r6.f32188i = r5     // Catch: java.lang.Throwable -> L82
                r6.f32189j = r3     // Catch: java.lang.Throwable -> L82
                java.lang.Object r1 = com.moloco.sdk.internal.ilrd.IlrdEventsRepository.d(r1, r6)     // Catch: java.lang.Throwable -> L82
                if (r1 != r0) goto L5a
                return r0
            L5a:
                r1 = r7
            L5b:
                kotlin.Unit r7 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L26
                r1.unlock(r5)
                com.moloco.sdk.internal.scheduling.a r7 = com.moloco.sdk.internal.scheduling.c.a()
                kotlin.coroutines.CoroutineContext r7 = r7.getMain()
                com.moloco.sdk.internal.ilrd.IlrdEventsRepository$a$a r1 = new com.moloco.sdk.internal.ilrd.IlrdEventsRepository$a$a
                androidx.lifecycle.Lifecycle r3 = r6.f32191l
                com.moloco.sdk.internal.ilrd.IlrdEventsRepository r4 = com.moloco.sdk.internal.ilrd.IlrdEventsRepository.this
                r1.<init>(r3, r4, r5)
                r6.f32187h = r5
                r6.f32189j = r2
                java.lang.Object r7 = gt.e.g(r7, r1, r6)
                if (r7 != r0) goto L7c
                return r0
            L7c:
                kotlin.Unit r7 = kotlin.Unit.f60915a
                return r7
            L7f:
                r0 = r7
                r7 = r1
                goto L83
            L82:
                r0 = move-exception
            L83:
                r7.unlock(r5)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.ilrd.IlrdEventsRepository.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final byte[] b(byte[] bArr) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                Unit unit = Unit.f60915a;
                ws.b.a(gZIPOutputStream, null);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                ws.b.a(byteArrayOutputStream, null);
                Intrinsics.checkNotNullExpressionValue(byteArray, "use(...)");
                return byteArray;
            } finally {
            }
        }

        public b() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$onEvent$1", f = "IlrdEventsRepository.kt", l = {436}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onEvent$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onEvent$1\n*L\n194#1:431,11\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32195h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32196i;

        /* renamed from: j  reason: collision with root package name */
        public Object f32197j;

        /* renamed from: k  reason: collision with root package name */
        public int f32198k;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ h.a f32200m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(h.a aVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f32200m = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f32200m, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IlrdEventsRepository ilrdEventsRepository;
            qt.a aVar;
            h.a aVar2;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32198k;
            if (i10 != 0) {
                if (i10 == 1) {
                    aVar2 = (h.a) this.f32197j;
                    ilrdEventsRepository = (IlrdEventsRepository) this.f32196i;
                    aVar = (qt.a) this.f32195h;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                qt.a aVar3 = IlrdEventsRepository.this.f32184p;
                ilrdEventsRepository = IlrdEventsRepository.this;
                h.a aVar4 = this.f32200m;
                this.f32195h = aVar3;
                this.f32196i = ilrdEventsRepository;
                this.f32197j = aVar4;
                this.f32198k = 1;
                if (aVar3.lock(null, this) == f10) {
                    return f10;
                }
                aVar = aVar3;
                aVar2 = aVar4;
            }
            try {
                ilrdEventsRepository.f();
                ilrdEventsRepository.n();
                com.moloco.sdk.internal.ilrd.a j10 = ilrdEventsRepository.j();
                if (j10 != null) {
                    j10.d(aVar2);
                }
                IlrdRequest$ImpressionLevelRevenue b10 = ilrdEventsRepository.b(aVar2);
                List<IlrdRequest$ImpressionLevelRevenue> g10 = ilrdEventsRepository.g();
                Intrinsics.checkNotNull(b10);
                g10.add(b10);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "Event id " + b10.getEventId() + " added. Count: " + ilrdEventsRepository.g().size(), null, false, 12, null);
                if (ilrdEventsRepository.k()) {
                    ilrdEventsRepository.p();
                }
                Unit unit = Unit.f60915a;
                aVar.unlock(null);
                return unit;
            } catch (Throwable th2) {
                aVar.unlock(null);
                throw th2;
            }
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$onPause$1", f = "IlrdEventsRepository.kt", l = {436, 248}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onPause$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onPause$1\n*L\n244#1:431,11\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f32201h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32202i;

        /* renamed from: j  reason: collision with root package name */
        public int f32203j;

        public d(rs.c<? super d> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            qt.a aVar;
            IlrdEventsRepository ilrdEventsRepository;
            IlrdEventsRepository ilrdEventsRepository2;
            qt.a aVar2;
            Throwable th2;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f32203j;
            try {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            ilrdEventsRepository2 = (IlrdEventsRepository) this.f32202i;
                            aVar2 = (qt.a) this.f32201h;
                            try {
                                kotlin.f.b(obj);
                                aVar = aVar2;
                                ilrdEventsRepository = ilrdEventsRepository2;
                                ilrdEventsRepository.p();
                                Unit unit = Unit.f60915a;
                                aVar.unlock(null);
                                return unit;
                            } catch (Throwable th3) {
                                th2 = th3;
                                aVar2.unlock(null);
                                throw th2;
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ilrdEventsRepository = (IlrdEventsRepository) this.f32202i;
                    kotlin.f.b(obj);
                    aVar = (qt.a) this.f32201h;
                } else {
                    kotlin.f.b(obj);
                    aVar = IlrdEventsRepository.this.f32184p;
                    ilrdEventsRepository = IlrdEventsRepository.this;
                    this.f32201h = aVar;
                    this.f32202i = ilrdEventsRepository;
                    this.f32203j = 1;
                    if (aVar.lock(null, this) == f10) {
                        return f10;
                    }
                }
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "IlrdEventsRepository", "onPause called, storing session and sending events", null, false, 12, null);
                com.moloco.sdk.internal.ilrd.a j10 = ilrdEventsRepository.j();
                if (j10 != null) {
                    String l10 = j10.l();
                    h0 h0Var = ilrdEventsRepository.f32180l;
                    this.f32201h = aVar;
                    this.f32202i = ilrdEventsRepository;
                    this.f32203j = 2;
                    if (h0Var.c("ilrd_session_store", l10, this) == f10) {
                        return f10;
                    }
                    ilrdEventsRepository2 = ilrdEventsRepository;
                    aVar2 = aVar;
                    aVar = aVar2;
                    ilrdEventsRepository = ilrdEventsRepository2;
                }
                ilrdEventsRepository.p();
                Unit unit2 = Unit.f60915a;
                aVar.unlock(null);
                return unit2;
            } catch (Throwable th4) {
                aVar2 = aVar;
                th2 = th4;
                aVar2.unlock(null);
                throw th2;
            }
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository", f = "IlrdEventsRepository.kt", l = {135, 136}, m = "restoreSavedSession")
    /* loaded from: classes6.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32205h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32206i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f32207j;

        /* renamed from: l  reason: collision with root package name */
        public int f32209l;

        public e(rs.c<? super e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32207j = obj;
            this.f32209l |= Integer.MIN_VALUE;
            return IlrdEventsRepository.this.e(this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$scheduleMaxSessionLength$1", f = "IlrdEventsRepository.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32210h;

        public f(rs.c<? super f> cVar) {
            super(1, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(rs.c<?> cVar) {
            return new f(cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: i */
        public final Object invoke(rs.c<? super Unit> cVar) {
            return ((f) create(cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32210h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.internal.ilrd.a j10 = IlrdEventsRepository.this.j();
                if (j10 != null) {
                    j10.c();
                }
                IlrdEventsRepository.this.p();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$scheduleSessionExpiry$1", f = "IlrdEventsRepository.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class g extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32212h;

        public g(rs.c<? super g> cVar) {
            super(1, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(rs.c<?> cVar) {
            return new g(cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: i */
        public final Object invoke(rs.c<? super Unit> cVar) {
            return ((g) create(cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32212h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.internal.ilrd.a j10 = IlrdEventsRepository.this.j();
                if (j10 != null) {
                    j10.c();
                }
                IlrdEventsRepository.this.p();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$scheduleUploadIntervalScheduler$1", f = "IlrdEventsRepository.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class h extends SuspendLambda implements Function1<rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32214h;

        public h(rs.c<? super h> cVar) {
            super(1, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(rs.c<?> cVar) {
            return new h(cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: i */
        public final Object invoke(rs.c<? super Unit> cVar) {
            return ((h) create(cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32214h == 0) {
                kotlin.f.b(obj);
                IlrdEventsRepository.this.p();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public /* synthetic */ IlrdEventsRepository(g0 g0Var, String str, l lVar, long j10, int i10, long j11, long j12, com.moloco.sdk.internal.services.j jVar, Lifecycle lifecycle, p pVar, String str2, String str3, h0 h0Var, com.moloco.sdk.internal.ilrd.d dVar, com.moloco.sdk.internal.ilrd.d dVar2, com.moloco.sdk.internal.ilrd.d dVar3, DefaultConstructorMarker defaultConstructorMarker) {
        this(g0Var, str, lVar, j10, i10, j11, j12, jVar, lifecycle, pVar, str2, str3, h0Var, dVar, dVar2, dVar3);
    }

    public final IlrdRequest$ImpressionLevelRevenue b(h.a aVar) {
        IlrdRequest$ImpressionLevelRevenue.a a10 = IlrdRequest$ImpressionLevelRevenue.newBuilder().a(UUID.randomUUID().toString());
        com.moloco.sdk.internal.ilrd.a aVar2 = this.f32185q;
        if (aVar2 != null) {
            a10.e(aVar2.i());
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "Event created: sessionId=" + aVar2.i() + ", sessionAge=" + (this.f32176h.a() - aVar2.j()) + "ms", null, false, 12, null);
        }
        if (aVar instanceof h.a.b) {
            a10.c(((h.a.b) aVar).a());
        } else if (aVar instanceof h.a.C0471a) {
            a10.b(((h.a.C0471a) aVar).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return a10.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(rs.c<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.ilrd.IlrdEventsRepository.e(rs.c):java.lang.Object");
    }

    @VisibleForTesting
    public final void f() {
        com.moloco.sdk.internal.ilrd.a aVar = this.f32185q;
        if (aVar != null && !aVar.k()) {
            com.moloco.sdk.internal.ilrd.a aVar2 = this.f32185q;
            if (aVar2 != null) {
                long a10 = this.f32176h.a() - aVar2.j();
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "Session validation - age: " + a10 + "ms, limit: " + kotlin.time.b.q(this.f32175g) + "ms", null, false, 12, null);
                if (a10 > kotlin.time.b.q(this.f32175g) || a10 < 0) {
                    MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "Session has invalid duration (" + a10 + "ms), expiring", null, false, 12, null);
                    aVar2.c();
                    q();
                    return;
                }
                return;
            }
            return;
        }
        q();
    }

    @NotNull
    public final List<IlrdRequest$ImpressionLevelRevenue> g() {
        return this.f32186r;
    }

    public final void i(@NotNull h.a ilrdData) {
        Intrinsics.checkNotNullParameter(ilrdData, "ilrdData");
        gt.e.c(this.f32169a, EmptyCoroutineContext.f61040a, CoroutineStart.DEFAULT, new c(ilrdData, null));
    }

    @Nullable
    public final com.moloco.sdk.internal.ilrd.a j() {
        return this.f32185q;
    }

    @VisibleForTesting
    public final boolean k() {
        boolean z10;
        if (this.f32186r.size() >= this.f32173e) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "IlrdEventsRepository", "batch size reached", null, false, 12, null);
        }
        return z10;
    }

    public final synchronized void l() {
        f();
        n();
    }

    public final void m() {
        this.f32182n.b(this.f32175g, new f(null));
    }

    @VisibleForTesting
    public final void n() {
        this.f32181m.b(this.f32172d, new g(null));
    }

    public final void o() {
        this.f32183o.b(this.f32174f, new h(null));
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        gt.e.c(this.f32169a, EmptyCoroutineContext.f61040a, CoroutineStart.DEFAULT, new d(null));
    }

    @VisibleForTesting
    public final void p() {
        o.a aVar;
        o();
        if (this.f32186r.isEmpty()) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "IlrdEventsRepository", "Request for sendEvent came, but event list is empty. Returning", null, false, 12, null);
            return;
        }
        IlrdRequest$ImpressionRevenueRequest.a newBuilder = IlrdRequest$ImpressionRevenueRequest.newBuilder();
        newBuilder.c("Android");
        newBuilder.f(this.f32178j);
        newBuilder.e(this.f32179k);
        o a10 = this.f32177i.a();
        if (a10 instanceof o.a) {
            aVar = (o.a) a10;
        } else {
            aVar = null;
        }
        if (aVar != null) {
            newBuilder.b(aVar.a());
        }
        newBuilder.a(this.f32186r);
        IlrdRequest$ImpressionRevenueRequest build = newBuilder.build();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "Ilrd request created now sending it with " + build.getEventsList().size() + " events", null, false, 12, null);
        b bVar = f32167s;
        byte[] byteArray = build.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.f32171c.a(this.f32170b, bVar.b(byteArray), a.C0827a.f59224a.b(), "gzip");
        this.f32186r.clear();
    }

    @VisibleForTesting
    public final void q() {
        String str = null;
        this.f32185q = new com.moloco.sdk.internal.ilrd.a(this.f32176h, null, 2, null);
        m();
        o();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("New session started: ");
        com.moloco.sdk.internal.ilrd.a aVar = this.f32185q;
        if (aVar != null) {
            str = aVar.i();
        }
        sb2.append(str);
        MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", sb2.toString(), null, false, 12, null);
    }

    public IlrdEventsRepository(g0 scope, String url, l persistentHttpRequest, long j10, int i10, long j11, long j12, com.moloco.sdk.internal.services.j timeProvider, Lifecycle processLifeycle, p advertisingIdService, String pubId, String appId, h0 dataStoreService, com.moloco.sdk.internal.ilrd.d sessionExpiryScheduler, com.moloco.sdk.internal.ilrd.d sessionMaxLengthScheduler, com.moloco.sdk.internal.ilrd.d scheduledUploadScheduler) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(processLifeycle, "processLifeycle");
        Intrinsics.checkNotNullParameter(advertisingIdService, "advertisingIdService");
        Intrinsics.checkNotNullParameter(pubId, "pubId");
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(dataStoreService, "dataStoreService");
        Intrinsics.checkNotNullParameter(sessionExpiryScheduler, "sessionExpiryScheduler");
        Intrinsics.checkNotNullParameter(sessionMaxLengthScheduler, "sessionMaxLengthScheduler");
        Intrinsics.checkNotNullParameter(scheduledUploadScheduler, "scheduledUploadScheduler");
        this.f32169a = scope;
        this.f32170b = url;
        this.f32171c = persistentHttpRequest;
        this.f32172d = j10;
        this.f32173e = i10;
        this.f32174f = j11;
        this.f32175g = j12;
        this.f32176h = timeProvider;
        this.f32177i = advertisingIdService;
        this.f32178j = pubId;
        this.f32179k = appId;
        this.f32180l = dataStoreService;
        this.f32181m = sessionExpiryScheduler;
        this.f32182n = sessionMaxLengthScheduler;
        this.f32183o = scheduledUploadScheduler;
        this.f32184p = qt.d.b(false, 1, null);
        this.f32186r = new ArrayList();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "IlrdEventsRepository", "ILRD repository initialized - url=" + url + ", uploadInterval=" + ((Object) kotlin.time.b.K(j11)) + ", maxBatchSize=" + i10 + ", sessionExpiry=" + ((Object) kotlin.time.b.K(j10)) + ", maxSessionLength=" + ((Object) kotlin.time.b.K(j12)), null, false, 12, null);
        gt.g.d(scope, null, null, new a(processLifeycle, null), 3, null);
    }

    public /* synthetic */ IlrdEventsRepository(g0 g0Var, String str, l lVar, long j10, int i10, long j11, long j12, com.moloco.sdk.internal.services.j jVar, Lifecycle lifecycle, p pVar, String str2, String str3, h0 h0Var, com.moloco.sdk.internal.ilrd.d dVar, com.moloco.sdk.internal.ilrd.d dVar2, com.moloco.sdk.internal.ilrd.d dVar3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(g0Var, str, lVar, j10, i10, j11, j12, jVar, lifecycle, pVar, str2, str3, h0Var, (i11 & 8192) != 0 ? new com.moloco.sdk.internal.ilrd.d(g0Var, jVar, "SessionExpiryScheduler") : dVar, (i11 & 16384) != 0 ? new com.moloco.sdk.internal.ilrd.d(g0Var, jVar, "SessionMaxLengthScheduler") : dVar2, (i11 & 32768) != 0 ? new com.moloco.sdk.internal.ilrd.d(g0Var, jVar, "UploadIntervalScheduler") : dVar3, null);
    }
}
