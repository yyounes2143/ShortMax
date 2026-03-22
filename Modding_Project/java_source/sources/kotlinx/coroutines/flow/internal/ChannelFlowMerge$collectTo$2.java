package kotlinx.coroutines.flow.internal;

import gt.g0;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.r;
import lt.m;
import qt.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ChannelFlowMerge$collectTo$2<T> implements kt.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f61715a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e f61716b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ h<T> f61717c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ m<T> f61718d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Merge.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", l = {65}, m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f61719h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ kt.b<T> f61720i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ m<T> f61721j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ e f61722k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kt.b<? extends T> bVar, m<T> mVar, e eVar, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f61720i = bVar;
            this.f61721j = mVar;
            this.f61722k = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new AnonymousClass1(this.f61720i, this.f61721j, this.f61722k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f61719h;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    kt.b<T> bVar = this.f61720i;
                    m<T> mVar = this.f61721j;
                    this.f61719h = 1;
                    if (bVar.collect(mVar, this) == f10) {
                        return f10;
                    }
                }
                this.f61722k.release();
                return Unit.f60915a;
            } catch (Throwable th2) {
                this.f61722k.release();
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge$collectTo$2(r rVar, e eVar, h<? super T> hVar, m<T> mVar) {
        this.f61715a = rVar;
        this.f61716b = eVar;
        this.f61717c = hVar;
        this.f61718d = mVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @Override // kt.c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(kt.b<? extends T> r8, rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$emit$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$emit$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$emit$1) r0
            int r1 = r0.f61727l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61727l = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$emit$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$emit$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f61725j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61727l
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.f61724i
            kt.b r8 = (kt.b) r8
            java.lang.Object r0 = r0.f61723h
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2) r0
            kotlin.f.b(r9)
            goto L53
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r9)
            kotlinx.coroutines.r r9 = r7.f61715a
            if (r9 == 0) goto L43
            kotlinx.coroutines.t.l(r9)
        L43:
            qt.e r9 = r7.f61716b
            r0.f61723h = r7
            r0.f61724i = r8
            r0.f61727l = r3
            java.lang.Object r9 = r9.b(r0)
            if (r9 != r1) goto L52
            return r1
        L52:
            r0 = r7
        L53:
            jt.h<T> r1 = r0.f61717c
            kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1 r4 = new kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1
            lt.m<T> r9 = r0.f61718d
            qt.e r0 = r0.f61716b
            r2 = 0
            r4.<init>(r8, r9, r0, r2)
            r5 = 3
            r6 = 0
            r3 = 0
            gt.e.d(r1, r2, r3, r4, r5, r6)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2.emit(kt.b, rs.c):java.lang.Object");
    }
}
