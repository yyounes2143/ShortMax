package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,108:1\n55#2,3:109\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1<T> implements kt.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kt.b f61483a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ at.n f61484b;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {109, 110}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f61485h;

        /* renamed from: i  reason: collision with root package name */
        int f61486i;

        /* renamed from: k  reason: collision with root package name */
        Object f61488k;

        /* renamed from: l  reason: collision with root package name */
        Object f61489l;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61485h = obj;
            this.f61486i |= Integer.MIN_VALUE;
            return FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(kt.b bVar, at.n nVar) {
        this.f61483a = bVar;
        this.f61484b = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    @Override // kt.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kt.c<? super T> r6, rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f61486i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61486i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61485h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61486i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L6f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.f61489l
            kt.c r6 = (kt.c) r6
            java.lang.Object r2 = r0.f61488k
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 r2 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1) r2
            kotlin.f.b(r7)
            goto L53
        L40:
            kotlin.f.b(r7)
            kt.b r7 = r5.f61483a
            r0.f61488k = r5
            r0.f61489l = r6
            r0.f61486i = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.c.j(r7, r6, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            r2 = r5
        L53:
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 == 0) goto L6f
            at.n r2 = r2.f61484b
            r4 = 0
            r0.f61488k = r4
            r0.f61489l = r4
            r0.f61486i = r3
            r3 = 6
            kotlin.jvm.internal.InlineMarker.mark(r3)
            java.lang.Object r6 = r2.invoke(r6, r7, r0)
            r7 = 7
            kotlin.jvm.internal.InlineMarker.mark(r7)
            if (r6 != r1) goto L6f
            return r1
        L6f:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.collect(kt.c, rs.c):java.lang.Object");
    }
}
