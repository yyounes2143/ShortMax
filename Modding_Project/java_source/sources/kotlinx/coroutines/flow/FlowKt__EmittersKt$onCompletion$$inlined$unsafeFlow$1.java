package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,108:1\n143#2,13:109\n156#2,6:123\n375#3:122\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n155#1:122\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements kt.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kt.b f61465a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ at.n f61466b;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {110, 117, 124}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f61467h;

        /* renamed from: i  reason: collision with root package name */
        int f61468i;

        /* renamed from: k  reason: collision with root package name */
        Object f61470k;

        /* renamed from: l  reason: collision with root package name */
        Object f61471l;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61467h = obj;
            this.f61468i |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(kt.b bVar, at.n nVar) {
        this.f61465a = bVar;
        this.f61466b = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @Override // kt.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kt.c<? super T> r9, rs.c<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f61468i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61468i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f61467h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61468i
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L54
            if (r2 == r5) goto L46
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            java.lang.Object r9 = r0.f61470k
            kotlinx.coroutines.flow.internal.SafeCollector r9 = (kotlinx.coroutines.flow.internal.SafeCollector) r9
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L34
            goto L88
        L34:
            r10 = move-exception
            goto L92
        L36:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3e:
            java.lang.Object r9 = r0.f61470k
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            kotlin.f.b(r10)
            goto Lac
        L46:
            java.lang.Object r9 = r0.f61471l
            kt.c r9 = (kt.c) r9
            java.lang.Object r2 = r0.f61470k
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r2 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) r2
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L52
            goto L67
        L52:
            r9 = move-exception
            goto L98
        L54:
            kotlin.f.b(r10)
            kt.b r10 = r8.f61465a     // Catch: java.lang.Throwable -> L96
            r0.f61470k = r8     // Catch: java.lang.Throwable -> L96
            r0.f61471l = r9     // Catch: java.lang.Throwable -> L96
            r0.f61468i = r5     // Catch: java.lang.Throwable -> L96
            java.lang.Object r10 = r10.collect(r9, r0)     // Catch: java.lang.Throwable -> L96
            if (r10 != r1) goto L66
            return r1
        L66:
            r2 = r8
        L67:
            kotlinx.coroutines.flow.internal.SafeCollector r10 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r4 = r0.getContext()
            r10.<init>(r9, r4)
            at.n r9 = r2.f61466b     // Catch: java.lang.Throwable -> L8e
            r0.f61470k = r10     // Catch: java.lang.Throwable -> L8e
            r0.f61471l = r6     // Catch: java.lang.Throwable -> L8e
            r0.f61468i = r3     // Catch: java.lang.Throwable -> L8e
            r2 = 6
            kotlin.jvm.internal.InlineMarker.mark(r2)     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r9 = r9.invoke(r10, r6, r0)     // Catch: java.lang.Throwable -> L8e
            r0 = 7
            kotlin.jvm.internal.InlineMarker.mark(r0)     // Catch: java.lang.Throwable -> L8e
            if (r9 != r1) goto L87
            return r1
        L87:
            r9 = r10
        L88:
            r9.releaseIntercepted()
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L8e:
            r9 = move-exception
            r7 = r10
            r10 = r9
            r9 = r7
        L92:
            r9.releaseIntercepted()
            throw r10
        L96:
            r9 = move-exception
            r2 = r8
        L98:
            kt.j r10 = new kt.j
            r10.<init>(r9)
            at.n r2 = r2.f61466b
            r0.f61470k = r9
            r0.f61471l = r6
            r0.f61468i = r4
            java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt__EmittersKt.a(r10, r2, r9, r0)
            if (r10 != r1) goto Lac
            return r1
        Lac:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.collect(kt.c, rs.c):java.lang.Object");
    }
}
