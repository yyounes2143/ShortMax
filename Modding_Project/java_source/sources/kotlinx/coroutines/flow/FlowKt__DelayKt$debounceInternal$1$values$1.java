package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", l = {204}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class FlowKt__DelayKt$debounceInternal$1$values$1 extends SuspendLambda implements Function2<jt.h<? super Object>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61458h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61459i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61460j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Delay.kt */
    @Metadata
    /* renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1<T> implements kt.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ jt.h<Object> f61461a;

        AnonymousClass1(jt.h<Object> hVar) {
            this.f61461a = hVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        @Override // kt.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r5, rs.c<? super kotlin.Unit> r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1) r0
                int r1 = r0.f61464j
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f61464j = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.f61462h
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f61464j
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.f.b(r6)
                goto L43
            L29:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L31:
                kotlin.f.b(r6)
                jt.h<java.lang.Object> r6 = r4.f61461a
                if (r5 != 0) goto L3a
                mt.a0 r5 = lt.i.f62309a
            L3a:
                r0.f61464j = r3
                java.lang.Object r5 = r6.p(r5, r0)
                if (r5 != r1) goto L43
                return r1
            L43:
                kotlin.Unit r5 = kotlin.Unit.f60915a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1.AnonymousClass1.emit(java.lang.Object, rs.c):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$values$1(kt.b<? extends T> bVar, rs.c<? super FlowKt__DelayKt$debounceInternal$1$values$1> cVar) {
        super(2, cVar);
        this.f61460j = bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowKt__DelayKt$debounceInternal$1$values$1 flowKt__DelayKt$debounceInternal$1$values$1 = new FlowKt__DelayKt$debounceInternal$1$values$1(this.f61460j, cVar);
        flowKt__DelayKt$debounceInternal$1$values$1.f61459i = obj;
        return flowKt__DelayKt$debounceInternal$1$values$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(jt.h<? super Object> hVar, rs.c<? super Unit> cVar) {
        return invoke2((jt.h<Object>) hVar, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61458h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            kt.b<T> bVar = this.f61460j;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((jt.h) this.f61459i);
            this.f61458h = 1;
            if (bVar.collect(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(jt.h<Object> hVar, rs.c<? super Unit> cVar) {
        return ((FlowKt__DelayKt$debounceInternal$1$values$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
