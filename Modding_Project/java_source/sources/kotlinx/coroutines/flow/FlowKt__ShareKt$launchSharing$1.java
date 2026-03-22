package kotlinx.coroutines.flow;

import gt.g0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {210, 214, 215, 221}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61602h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ m f61603i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61604j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ kt.d<T> f61605k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ T f61606l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f61607h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ int f61608i;

        AnonymousClass1(rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(cVar);
            anonymousClass1.f61608i = ((Number) obj).intValue();
            return anonymousClass1;
        }

        public final Object invoke(int i10, rs.c<? super Boolean> cVar) {
            return ((AnonymousClass1) create(Integer.valueOf(i10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f61607h == 0) {
                kotlin.f.b(obj);
                if (this.f61608i > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Integer num, rs.c<? super Boolean> cVar) {
            return invoke(num.intValue(), cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Share.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {223}, m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f61609h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f61610i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ kt.b<T> f61611j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ kt.d<T> f61612k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ T f61613l;

        /* compiled from: Share.kt */
        @Metadata
        /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2$a */
        /* loaded from: classes8.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(kt.b<? extends T> bVar, kt.d<T> dVar, T t10, rs.c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f61611j = bVar;
            this.f61612k = dVar;
            this.f61613l = t10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f61611j, this.f61612k, this.f61613l, cVar);
            anonymousClass2.f61610i = obj;
            return anonymousClass2;
        }

        public final Object i(SharingCommand sharingCommand, rs.c<? super Unit> cVar) {
            return ((AnonymousClass2) create(sharingCommand, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SharingCommand sharingCommand, rs.c<? super Unit> cVar) {
            return i(sharingCommand, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f61609h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                int i11 = a.$EnumSwitchMapping$0[((SharingCommand) this.f61610i).ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            T t10 = this.f61613l;
                            if (t10 == kt.g.f62038a) {
                                this.f61612k.d();
                            } else {
                                kotlin.coroutines.jvm.internal.a.a(this.f61612k.g(t10));
                            }
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    }
                } else {
                    kt.b<T> bVar = this.f61611j;
                    kt.f fVar = this.f61612k;
                    this.f61609h = 1;
                    if (bVar.collect(fVar, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ShareKt$launchSharing$1(m mVar, kt.b<? extends T> bVar, kt.d<T> dVar, T t10, rs.c<? super FlowKt__ShareKt$launchSharing$1> cVar) {
        super(2, cVar);
        this.f61603i = mVar;
        this.f61604j = bVar;
        this.f61605k = dVar;
        this.f61606l = t10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new FlowKt__ShareKt$launchSharing$1(this.f61603i, this.f61604j, this.f61605k, this.f61606l, cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((FlowKt__ShareKt$launchSharing$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0068 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f61602h
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L25
            if (r1 == r5) goto L21
            if (r1 == r4) goto L1d
            if (r1 == r3) goto L21
            if (r1 != r2) goto L15
            goto L21
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1d:
            kotlin.f.b(r8)
            goto L5c
        L21:
            kotlin.f.b(r8)
            goto L8d
        L25:
            kotlin.f.b(r8)
            kotlinx.coroutines.flow.m r8 = r7.f61603i
            kotlinx.coroutines.flow.m$a r1 = kotlinx.coroutines.flow.m.f61804a
            kotlinx.coroutines.flow.m r6 = r1.c()
            if (r8 != r6) goto L3f
            kt.b<T> r8 = r7.f61604j
            kt.d<T> r1 = r7.f61605k
            r7.f61602h = r5
            java.lang.Object r8 = r8.collect(r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L3f:
            kotlinx.coroutines.flow.m r8 = r7.f61603i
            kotlinx.coroutines.flow.m r1 = r1.d()
            r5 = 0
            if (r8 != r1) goto L69
            kt.d<T> r8 = r7.f61605k
            kt.i r8 = r8.h()
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1
            r1.<init>(r5)
            r7.f61602h = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.c.x(r8, r1, r7)
            if (r8 != r0) goto L5c
            return r0
        L5c:
            kt.b<T> r8 = r7.f61604j
            kt.d<T> r1 = r7.f61605k
            r7.f61602h = r3
            java.lang.Object r8 = r8.collect(r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L69:
            kotlinx.coroutines.flow.m r8 = r7.f61603i
            kt.d<T> r1 = r7.f61605k
            kt.i r1 = r1.h()
            kt.b r8 = r8.a(r1)
            kt.b r8 = kotlinx.coroutines.flow.c.r(r8)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r1 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            kt.b<T> r3 = r7.f61604j
            kt.d<T> r4 = r7.f61605k
            T r6 = r7.f61606l
            r1.<init>(r3, r4, r6, r5)
            r7.f61602h = r2
            java.lang.Object r8 = kotlinx.coroutines.flow.c.m(r8, r1, r7)
            if (r8 != r0) goto L8d
            return r0
        L8d:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return invoke2(g0Var, cVar);
    }
}
