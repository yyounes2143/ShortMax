package kotlinx.coroutines.flow.internal;

import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Merge.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {23}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61733h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61734i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ChannelFlowTransformLatest<T, R> f61735j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ kt.c<R> f61736k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Merge.kt */
    @Metadata
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1<T> implements kt.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<r> f61737a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ g0 f61738b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ChannelFlowTransformLatest<T, R> f61739c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kt.c<R> f61740d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Merge.kt */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {30}, m = "invokeSuspend")
        /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2  reason: invalid class name */
        /* loaded from: classes8.dex */
        public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f61741h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ ChannelFlowTransformLatest<T, R> f61742i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ kt.c<R> f61743j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ T f61744k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(ChannelFlowTransformLatest<T, R> channelFlowTransformLatest, kt.c<? super R> cVar, T t10, rs.c<? super AnonymousClass2> cVar2) {
                super(2, cVar2);
                this.f61742i = channelFlowTransformLatest;
                this.f61743j = cVar;
                this.f61744k = t10;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new AnonymousClass2(this.f61742i, this.f61743j, this.f61744k, cVar);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                n nVar;
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f61741h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    nVar = ((ChannelFlowTransformLatest) this.f61742i).f61732e;
                    Object obj2 = this.f61743j;
                    T t10 = this.f61744k;
                    this.f61741h = 1;
                    if (nVar.invoke(obj2, t10, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return invoke2(g0Var, cVar);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Ref.ObjectRef<r> objectRef, g0 g0Var, ChannelFlowTransformLatest<T, R> channelFlowTransformLatest, kt.c<? super R> cVar) {
            this.f61737a = objectRef;
            this.f61738b = g0Var;
            this.f61739c = channelFlowTransformLatest;
            this.f61740d = cVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
        @Override // kt.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r8, rs.c<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1) r0
                int r1 = r0.f61750m
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f61750m = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f61748k
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f61750m
                r3 = 1
                if (r2 == 0) goto L3b
                if (r2 != r3) goto L33
                java.lang.Object r8 = r0.f61747j
                kotlinx.coroutines.r r8 = (kotlinx.coroutines.r) r8
                java.lang.Object r8 = r0.f61746i
                java.lang.Object r0 = r0.f61745h
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1) r0
                kotlin.f.b(r9)
                goto L5e
            L33:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L3b:
                kotlin.f.b(r9)
                kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.r> r9 = r7.f61737a
                T r9 = r9.element
                kotlinx.coroutines.r r9 = (kotlinx.coroutines.r) r9
                if (r9 == 0) goto L5d
                kotlinx.coroutines.flow.internal.ChildCancelledException r2 = new kotlinx.coroutines.flow.internal.ChildCancelledException
                r2.<init>()
                r9.cancel(r2)
                r0.f61745h = r7
                r0.f61746i = r8
                r0.f61747j = r9
                r0.f61750m = r3
                java.lang.Object r9 = r9.join(r0)
                if (r9 != r1) goto L5d
                return r1
            L5d:
                r0 = r7
            L5e:
                kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.r> r9 = r0.f61737a
                gt.g0 r1 = r0.f61738b
                kotlinx.coroutines.CoroutineStart r3 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2 r4 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2
                kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest<T, R> r2 = r0.f61739c
                kt.c<R> r0 = r0.f61740d
                r5 = 0
                r4.<init>(r2, r0, r8, r5)
                r5 = 1
                r6 = 0
                r2 = 0
                kotlinx.coroutines.r r8 = gt.e.d(r1, r2, r3, r4, r5, r6)
                r9.element = r8
                kotlin.Unit r8 = kotlin.Unit.f60915a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1.emit(java.lang.Object, rs.c):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest<T, R> channelFlowTransformLatest, kt.c<? super R> cVar, rs.c<? super ChannelFlowTransformLatest$flowCollect$3> cVar2) {
        super(2, cVar2);
        this.f61735j = channelFlowTransformLatest;
        this.f61736k = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.f61735j, this.f61736k, cVar);
        channelFlowTransformLatest$flowCollect$3.f61734i = obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61733h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ChannelFlowTransformLatest<T, R> channelFlowTransformLatest = this.f61735j;
            kt.b<S> bVar = channelFlowTransformLatest.f61728d;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(objectRef, (g0) this.f61734i, channelFlowTransformLatest, this.f61736k);
            this.f61733h = 1;
            if (bVar.collect(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return invoke2(g0Var, cVar);
    }
}
