package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n86#2:109\n87#2,2:111\n89#2:114\n1863#3:110\n1864#3:113\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n86#1:110\n86#1:113\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3<T> implements kt.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Iterable f61424a;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3", f = "Builders.kt", l = {111}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f61425h;

        /* renamed from: i  reason: collision with root package name */
        int f61426i;

        /* renamed from: k  reason: collision with root package name */
        Object f61428k;

        /* renamed from: l  reason: collision with root package name */
        Object f61429l;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61425h = obj;
            this.f61426i |= Integer.MIN_VALUE;
            return FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3.this.collect(null, this);
        }
    }

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3(Iterable iterable) {
        this.f61424a = iterable;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    @Override // kt.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kt.c<? super T> r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1 r0 = (kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3.AnonymousClass1) r0
            int r1 = r0.f61426i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61426i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1 r0 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61425h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61426i
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r6 = r0.f61429l
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r2 = r0.f61428k
            kt.c r2 = (kt.c) r2
            kotlin.f.b(r7)
            r7 = r2
            goto L46
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            java.lang.Iterable r7 = r5.f61424a
            java.util.Iterator r7 = r7.iterator()
            r4 = r7
            r7 = r6
            r6 = r4
        L46:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L5d
            java.lang.Object r2 = r6.next()
            r0.f61428k = r7
            r0.f61429l = r6
            r0.f61426i = r3
            java.lang.Object r2 = r7.emit(r2, r0)
            if (r2 != r1) goto L46
            return r1
        L5d:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3.collect(kt.c, rs.c):java.lang.Object");
    }
}
