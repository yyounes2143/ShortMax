package com.startshorts.androidplayer.viewmodel.routing;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.viewmodel.routing.a;
import com.startshorts.androidplayer.viewmodel.routing.b;
import gt.g0;
import gt.p;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.r;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoutingViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1", f = "RoutingViewModel.kt", l = {101, 192}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RoutingViewModel$process$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f49223h;

    /* renamed from: i  reason: collision with root package name */
    int f49224i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f49225j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RoutingViewModel f49226k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<r> f49227l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ b f49228m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<r> f49229n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ boolean f49230o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<r> f49231p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ long f49232q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ long f49233r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoutingViewModel.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$1", f = "RoutingViewModel.kt", l = {113}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f49234h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RoutingViewModel f49235i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ b f49236j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f49237k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f49238l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f49239m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RoutingViewModel routingViewModel, b bVar, Ref.LongRef longRef, Ref.ObjectRef<r> objectRef, Ref.ObjectRef<r> objectRef2, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f49235i = routingViewModel;
            this.f49236j = bVar;
            this.f49237k = longRef;
            this.f49238l = objectRef;
            this.f49239m = objectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f49235i, this.f49236j, this.f49237k, this.f49238l, this.f49239m, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            long P;
            MutableLiveData mutableLiveData;
            String str;
            MutableLiveData mutableLiveData2;
            MutableLiveData mutableLiveData3;
            MutableLiveData mutableLiveData4;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f49234h;
            String str2 = null;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                P = this.f49235i.P((b.a) this.f49236j);
                long j10 = P + 400;
                Ref.LongRef longRef = this.f49237k;
                long currentTimeMillis = System.currentTimeMillis();
                Ref.LongRef longRef2 = this.f49237k;
                longRef.element = currentTimeMillis - longRef2.element;
                long max = Math.max(j10 - longRef2.element, 0L);
                RoutingViewModel routingViewModel = this.f49235i;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("timeOutJobStart -> outMaxStayTime(");
                sb2.append(j10);
                sb2.append(") start,stayTimeLeft=");
                sb2.append(max);
                sb2.append(",spendTime=");
                sb2.append(this.f49237k.element);
                sb2.append("-> state=");
                mutableLiveData = this.f49235i.f49221f;
                a aVar = (a) mutableLiveData.getValue();
                if (aVar != null) {
                    str = aVar.getClass().getSimpleName();
                } else {
                    str = null;
                }
                sb2.append(str);
                routingViewModel.f(sb2.toString());
                if (max > 0) {
                    this.f49234h = 1;
                    if (DelayKt.b(max, this) == f10) {
                        return f10;
                    }
                }
            }
            mutableLiveData2 = this.f49235i.f49221f;
            if (mutableLiveData2.getValue() instanceof a.d) {
                this.f49235i.M("AdJob", "timeOutEnd", this.f49238l.element);
                this.f49235i.M("ActJob", "timeOutEnd", this.f49239m.element);
                mutableLiveData4 = this.f49235i.f49221f;
                o.b(mutableLiveData4, new a.b("timeout"));
            }
            RoutingViewModel routingViewModel2 = this.f49235i;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("timeOutJobEnd -> state=");
            mutableLiveData3 = this.f49235i.f49221f;
            a aVar2 = (a) mutableLiveData3.getValue();
            if (aVar2 != null) {
                str2 = aVar2.getClass().getSimpleName();
            }
            sb3.append(str2);
            routingViewModel2.f(sb3.toString());
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoutingViewModel.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2", f = "RoutingViewModel.kt", l = {133, 137, 142}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f49240h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RoutingViewModel f49241i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f49242j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f49243k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ b f49244l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RoutingViewModel.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2$1", f = "RoutingViewModel.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2$1  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f49245h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ RoutingViewModel f49246i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ b f49247j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ ActResource f49248k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(RoutingViewModel routingViewModel, b bVar, ActResource actResource, c<? super AnonymousClass1> cVar) {
                super(2, cVar);
                this.f49246i = routingViewModel;
                this.f49247j = bVar;
                this.f49248k = actResource;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new AnonymousClass1(this.f49246i, this.f49247j, this.f49248k, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f49245h == 0) {
                    f.b(obj);
                    this.f49246i.W(((b.a) this.f49247j).b(), this.f49248k);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(RoutingViewModel routingViewModel, Ref.BooleanRef booleanRef, Ref.ObjectRef<r> objectRef, b bVar, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f49241i = routingViewModel;
            this.f49242j = booleanRef;
            this.f49243k = objectRef;
            this.f49244l = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass2(this.f49241i, this.f49242j, this.f49243k, this.f49244l, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0092 -> B:13:0x002f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r7.f49240h
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L25
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.f.b(r8)
                goto L2f
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.f.b(r8)
                goto L7a
            L21:
                kotlin.f.b(r8)
                goto L48
            L25:
                kotlin.f.b(r8)
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49241i
                java.lang.String r1 = "loadContentStart -> scene=act"
                r8.v(r1)
            L2f:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49241i
                androidx.lifecycle.MutableLiveData r8 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r8)
                java.lang.Object r8 = r8.getValue()
                boolean r8 = r8 instanceof com.startshorts.androidplayer.viewmodel.routing.a.d
                if (r8 == 0) goto L95
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion r8 = com.startshorts.androidplayer.ui.view.act.ActAppOpenView.f46961j
                r7.f49240h = r4
                java.lang.Object r8 = r8.c(r7)
                if (r8 != r0) goto L48
                return r0
            L48:
                com.startshorts.androidplayer.bean.act.ActResource r8 = (com.startshorts.androidplayer.bean.act.ActResource) r8
                kotlin.jvm.internal.Ref$BooleanRef r1 = r7.f49242j
                if (r8 == 0) goto L50
                r5 = r4
                goto L51
            L50:
                r5 = 0
            L51:
                r1.element = r5
                if (r8 == 0) goto L8a
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r1 = r7.f49241i
                androidx.lifecycle.MutableLiveData r1 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r1)
                java.lang.Object r1 = r1.getValue()
                boolean r1 = r1 instanceof com.startshorts.androidplayer.viewmodel.routing.a.d
                if (r1 == 0) goto L7a
                gt.j1 r1 = gt.q0.c()
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2$1 r2 = new com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2$1
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r4 = r7.f49241i
                com.startshorts.androidplayer.viewmodel.routing.b r5 = r7.f49244l
                r6 = 0
                r2.<init>(r4, r5, r8, r6)
                r7.f49240h = r3
                java.lang.Object r8 = gt.e.g(r1, r2, r7)
                if (r8 != r0) goto L7a
                return r0
            L7a:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49241i
                kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.r> r0 = r7.f49243k
                T r0 = r0.element
                kotlinx.coroutines.r r0 = (kotlinx.coroutines.r) r0
                java.lang.String r1 = "TimeOutJob"
                java.lang.String r2 = "act end p0"
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.H(r8, r1, r2, r0)
                goto L95
            L8a:
                r7.f49240h = r2
                r5 = 200(0xc8, double:9.9E-322)
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r5, r7)
                if (r8 != r0) goto L2f
                return r0
            L95:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49241i
                java.lang.String r0 = "loadContentEnd -> scene=act p0"
                r8.v(r0)
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoutingViewModel.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$3", f = "RoutingViewModel.kt", l = {169, 174}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$3  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f49249h;

        /* renamed from: i  reason: collision with root package name */
        boolean f49250i;

        /* renamed from: j  reason: collision with root package name */
        int f49251j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ RoutingViewModel f49252k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f49253l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ b f49254m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ long f49255n;

        /* renamed from: o  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f49256o;

        /* renamed from: p  reason: collision with root package name */
        final /* synthetic */ long f49257p;

        /* renamed from: q  reason: collision with root package name */
        final /* synthetic */ p<Unit> f49258q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(RoutingViewModel routingViewModel, Ref.BooleanRef booleanRef, b bVar, long j10, Ref.ObjectRef<r> objectRef, long j11, p<Unit> pVar, c<? super AnonymousClass3> cVar) {
            super(2, cVar);
            this.f49252k = routingViewModel;
            this.f49253l = booleanRef;
            this.f49254m = bVar;
            this.f49255n = j10;
            this.f49256o = objectRef;
            this.f49257p = j11;
            this.f49258q = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass3(this.f49252k, this.f49253l, this.f49254m, this.f49255n, this.f49256o, this.f49257p, this.f49258q, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0042 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[Catch: Exception -> 0x0017, TryCatch #0 {Exception -> 0x0017, blocks: (B:7:0x0012, B:18:0x0034, B:21:0x0044, B:24:0x004d, B:27:0x0070, B:29:0x0078, B:30:0x0089, B:34:0x009a, B:36:0x00a8, B:37:0x00bc, B:14:0x0024, B:17:0x002b), top: B:42:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0078 A[Catch: Exception -> 0x0017, TryCatch #0 {Exception -> 0x0017, blocks: (B:7:0x0012, B:18:0x0034, B:21:0x0044, B:24:0x004d, B:27:0x0070, B:29:0x0078, B:30:0x0089, B:34:0x009a, B:36:0x00a8, B:37:0x00bc, B:14:0x0024, B:17:0x002b), top: B:42:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0089 A[Catch: Exception -> 0x0017, TryCatch #0 {Exception -> 0x0017, blocks: (B:7:0x0012, B:18:0x0034, B:21:0x0044, B:24:0x004d, B:27:0x0070, B:29:0x0078, B:30:0x0089, B:34:0x009a, B:36:0x00a8, B:37:0x00bc, B:14:0x0024, B:17:0x002b), top: B:42:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009a A[Catch: Exception -> 0x0017, TryCatch #0 {Exception -> 0x0017, blocks: (B:7:0x0012, B:18:0x0034, B:21:0x0044, B:24:0x004d, B:27:0x0070, B:29:0x0078, B:30:0x0089, B:34:0x009a, B:36:0x00a8, B:37:0x00bc, B:14:0x0024, B:17:0x002b), top: B:42:0x0008 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0095 -> B:8:0x0015). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r12.f49251j
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L22
                if (r1 != r2) goto L1a
                int r1 = r12.f49249h
                boolean r4 = r12.f49250i
                kotlin.f.b(r13)     // Catch: java.lang.Exception -> L17
            L15:
                r13 = r4
                goto L34
            L17:
                r13 = move-exception
                goto Lcb
            L1a:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L22:
                int r1 = r12.f49249h
                kotlin.f.b(r13)     // Catch: java.lang.Exception -> L17
                goto L70
            L28:
                kotlin.f.b(r13)
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r13 = r12.f49252k     // Catch: java.lang.Exception -> L17
                java.lang.String r1 = "loadContentStart -> scene=appOpenAd"
                r13.v(r1)     // Catch: java.lang.Exception -> L17
                r13 = 0
                r1 = r3
            L34:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r4 = r12.f49252k     // Catch: java.lang.Exception -> L17
                androidx.lifecycle.MutableLiveData r4 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r4)     // Catch: java.lang.Exception -> L17
                java.lang.Object r4 = r4.getValue()     // Catch: java.lang.Exception -> L17
                boolean r4 = r4 instanceof com.startshorts.androidplayer.viewmodel.routing.a.d     // Catch: java.lang.Exception -> L17
                if (r4 == 0) goto L98
                if (r1 <= 0) goto L98
                int r1 = r1 + (-1)
                kotlin.jvm.internal.Ref$BooleanRef r4 = r12.f49253l     // Catch: java.lang.Exception -> L17
                boolean r4 = r4.element     // Catch: java.lang.Exception -> L17
                if (r4 == 0) goto L4d
                goto L98
            L4d:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r5 = r12.f49252k     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.b r13 = r12.f49254m     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.b$a r13 = (com.startshorts.androidplayer.viewmodel.routing.b.a) r13     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.ui.activity.RoutingActivity r6 = r13.b()     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.b r13 = r12.f49254m     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.b$a r13 = (com.startshorts.androidplayer.viewmodel.routing.b.a) r13     // Catch: java.lang.Exception -> L17
                android.view.ViewGroup r7 = r13.d()     // Catch: java.lang.Exception -> L17
                long r8 = r12.f49255n     // Catch: java.lang.Exception -> L17
                r10 = 2000(0x7d0, double:9.88E-321)
                long r8 = r8 - r10
                r12.f49249h = r1     // Catch: java.lang.Exception -> L17
                r12.f49251j = r3     // Catch: java.lang.Exception -> L17
                r10 = r12
                java.lang.Object r13 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.L(r5, r6, r7, r8, r10)     // Catch: java.lang.Exception -> L17
                if (r13 != r0) goto L70
                return r0
            L70:
                java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Exception -> L17
                boolean r4 = r13.booleanValue()     // Catch: java.lang.Exception -> L17
                if (r4 == 0) goto L89
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r13 = r12.f49252k     // Catch: java.lang.Exception -> L17
                java.lang.String r0 = "TimeOutJob"
                java.lang.String r1 = "ad end"
                kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.r> r2 = r12.f49256o     // Catch: java.lang.Exception -> L17
                T r2 = r2.element     // Catch: java.lang.Exception -> L17
                kotlinx.coroutines.r r2 = (kotlinx.coroutines.r) r2     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.H(r13, r0, r1, r2)     // Catch: java.lang.Exception -> L17
                r13 = r4
                goto L98
            L89:
                r12.f49250i = r4     // Catch: java.lang.Exception -> L17
                r12.f49249h = r1     // Catch: java.lang.Exception -> L17
                r12.f49251j = r2     // Catch: java.lang.Exception -> L17
                r5 = 200(0xc8, double:9.9E-322)
                java.lang.Object r13 = kotlinx.coroutines.DelayKt.b(r5, r12)     // Catch: java.lang.Exception -> L17
                if (r13 != r0) goto L15
                return r0
            L98:
                if (r13 != 0) goto Lbc
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r13 = r12.f49252k     // Catch: java.lang.Exception -> L17
                androidx.lifecycle.MutableLiveData r13 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r13)     // Catch: java.lang.Exception -> L17
                java.lang.Object r13 = r13.getValue()     // Catch: java.lang.Exception -> L17
                boolean r13 = r13 instanceof com.startshorts.androidplayer.viewmodel.routing.a.e     // Catch: java.lang.Exception -> L17
                if (r13 == 0) goto Lbc
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r13 = r12.f49252k     // Catch: java.lang.Exception -> L17
                androidx.lifecycle.MutableLiveData r13 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r13)     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.a$d r0 = new com.startshorts.androidplayer.viewmodel.routing.a$d     // Catch: java.lang.Exception -> L17
                long r1 = r12.f49257p     // Catch: java.lang.Exception -> L17
                long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L17
                r0.<init>(r1, r3)     // Catch: java.lang.Exception -> L17
                jk.o.b(r13, r0)     // Catch: java.lang.Exception -> L17
            Lbc:
                gt.p<kotlin.Unit> r13 = r12.f49258q     // Catch: java.lang.Exception -> L17
                kotlin.Unit r0 = kotlin.Unit.f60915a     // Catch: java.lang.Exception -> L17
                r13.i(r0)     // Catch: java.lang.Exception -> L17
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r13 = r12.f49252k     // Catch: java.lang.Exception -> L17
                java.lang.String r0 = "loadContentEnd -> scene=appOpenAd"
                r13.v(r0)     // Catch: java.lang.Exception -> L17
                goto Ld0
            Lcb:
                gt.p<kotlin.Unit> r0 = r12.f49258q
                r0.d(r13)
            Ld0:
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoutingViewModel.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4", f = "RoutingViewModel.kt", l = {200, 203, 208}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f49259h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RoutingViewModel f49260i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f49261j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ b f49262k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RoutingViewModel.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4$1", f = "RoutingViewModel.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4$1  reason: invalid class name */
        /* loaded from: classes7.dex */
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f49263h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ RoutingViewModel f49264i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ b f49265j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ ActResource f49266k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(RoutingViewModel routingViewModel, b bVar, ActResource actResource, c<? super AnonymousClass1> cVar) {
                super(2, cVar);
                this.f49264i = routingViewModel;
                this.f49265j = bVar;
                this.f49266k = actResource;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new AnonymousClass1(this.f49264i, this.f49265j, this.f49266k, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f49263h == 0) {
                    f.b(obj);
                    this.f49264i.W(((b.a) this.f49265j).b(), this.f49266k);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(RoutingViewModel routingViewModel, Ref.ObjectRef<r> objectRef, b bVar, c<? super AnonymousClass4> cVar) {
            super(2, cVar);
            this.f49260i = routingViewModel;
            this.f49261j = objectRef;
            this.f49262k = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass4(this.f49260i, this.f49261j, this.f49262k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:13:0x002f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r7.f49259h
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L25
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.f.b(r8)
                goto L2f
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.f.b(r8)
                goto L71
            L21:
                kotlin.f.b(r8)
                goto L48
            L25:
                kotlin.f.b(r8)
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49260i
                java.lang.String r1 = "loadContentStart -> scene=act p1"
                r8.v(r1)
            L2f:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49260i
                androidx.lifecycle.MutableLiveData r8 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r8)
                java.lang.Object r8 = r8.getValue()
                boolean r8 = r8 instanceof com.startshorts.androidplayer.viewmodel.routing.a.d
                if (r8 == 0) goto L8c
                com.startshorts.androidplayer.ui.view.act.ActAppOpenView$Companion r8 = com.startshorts.androidplayer.ui.view.act.ActAppOpenView.f46961j
                r7.f49259h = r4
                java.lang.Object r8 = r8.d(r7)
                if (r8 != r0) goto L48
                return r0
            L48:
                com.startshorts.androidplayer.bean.act.ActResource r8 = (com.startshorts.androidplayer.bean.act.ActResource) r8
                if (r8 == 0) goto L81
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r1 = r7.f49260i
                androidx.lifecycle.MutableLiveData r1 = com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.I(r1)
                java.lang.Object r1 = r1.getValue()
                boolean r1 = r1 instanceof com.startshorts.androidplayer.viewmodel.routing.a.d
                if (r1 == 0) goto L71
                gt.j1 r1 = gt.q0.c()
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4$1 r2 = new com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4$1
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r4 = r7.f49260i
                com.startshorts.androidplayer.viewmodel.routing.b r5 = r7.f49262k
                r6 = 0
                r2.<init>(r4, r5, r8, r6)
                r7.f49259h = r3
                java.lang.Object r8 = gt.e.g(r1, r2, r7)
                if (r8 != r0) goto L71
                return r0
            L71:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49260i
                kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.r> r0 = r7.f49261j
                T r0 = r0.element
                kotlinx.coroutines.r r0 = (kotlinx.coroutines.r) r0
                java.lang.String r1 = "TimeOutJob"
                java.lang.String r2 = "act end p1"
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel.H(r8, r1, r2, r0)
                goto L8c
            L81:
                r7.f49259h = r2
                r5 = 200(0xc8, double:9.9E-322)
                java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r5, r7)
                if (r8 != r0) goto L2f
                return r0
            L8c:
                com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel r8 = r7.f49260i
                java.lang.String r0 = "loadContentEnd -> scene=act p1"
                r8.v(r0)
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoutingViewModel$process$1(RoutingViewModel routingViewModel, Ref.ObjectRef<r> objectRef, b bVar, Ref.ObjectRef<r> objectRef2, boolean z10, Ref.ObjectRef<r> objectRef3, long j10, long j11, c<? super RoutingViewModel$process$1> cVar) {
        super(2, cVar);
        this.f49226k = routingViewModel;
        this.f49227l = objectRef;
        this.f49228m = bVar;
        this.f49229n = objectRef2;
        this.f49230o = z10;
        this.f49231p = objectRef3;
        this.f49232q = j10;
        this.f49233r = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        RoutingViewModel$process$1 routingViewModel$process$1 = new RoutingViewModel$process$1(this.f49226k, this.f49227l, this.f49228m, this.f49229n, this.f49230o, this.f49231p, this.f49232q, this.f49233r, cVar);
        routingViewModel$process$1.f49225j = obj;
        return routingViewModel$process$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RoutingViewModel$process$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0191  */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, kotlinx.coroutines.r] */
    /* JADX WARN: Type inference failed for: r3v7, types: [T, kotlinx.coroutines.r] */
    /* JADX WARN: Type inference failed for: r6v13, types: [T, kotlinx.coroutines.r] */
    /* JADX WARN: Type inference failed for: r8v14, types: [T, kotlinx.coroutines.r] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
