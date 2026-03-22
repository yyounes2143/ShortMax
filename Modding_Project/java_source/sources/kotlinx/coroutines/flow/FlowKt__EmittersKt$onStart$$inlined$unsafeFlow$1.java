package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,108:1\n73#2:109\n74#2,7:111\n375#3:110\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n73#1:110\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> implements kt.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function2 f61472a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ kt.b f61473b;

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {112, 116}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f61474h;

        /* renamed from: i  reason: collision with root package name */
        int f61475i;

        /* renamed from: k  reason: collision with root package name */
        Object f61477k;

        /* renamed from: l  reason: collision with root package name */
        Object f61478l;

        /* renamed from: m  reason: collision with root package name */
        Object f61479m;

        public AnonymousClass1(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f61474h = obj;
            this.f61475i |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, kt.b bVar) {
        this.f61472a = function2;
        this.f61473b = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082 A[RETURN] */
    @Override // kt.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kt.c<? super T> r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.f61475i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61475i = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f61474h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61475i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L83
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.f61479m
            kotlinx.coroutines.flow.internal.SafeCollector r7 = (kotlinx.coroutines.flow.internal.SafeCollector) r7
            java.lang.Object r2 = r0.f61478l
            kt.c r2 = (kt.c) r2
            java.lang.Object r4 = r0.f61477k
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r4 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) r4
            kotlin.f.b(r8)     // Catch: java.lang.Throwable -> L44
            goto L6e
        L44:
            r8 = move-exception
            goto L8a
        L46:
            kotlin.f.b(r8)
            kotlinx.coroutines.flow.internal.SafeCollector r8 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r8.<init>(r7, r2)
            kotlin.jvm.functions.Function2 r2 = r6.f61472a     // Catch: java.lang.Throwable -> L86
            r0.f61477k = r6     // Catch: java.lang.Throwable -> L86
            r0.f61478l = r7     // Catch: java.lang.Throwable -> L86
            r0.f61479m = r8     // Catch: java.lang.Throwable -> L86
            r0.f61475i = r4     // Catch: java.lang.Throwable -> L86
            r4 = 6
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch: java.lang.Throwable -> L86
            java.lang.Object r2 = r2.invoke(r8, r0)     // Catch: java.lang.Throwable -> L86
            r4 = 7
            kotlin.jvm.internal.InlineMarker.mark(r4)     // Catch: java.lang.Throwable -> L86
            if (r2 != r1) goto L6b
            return r1
        L6b:
            r4 = r6
            r2 = r7
            r7 = r8
        L6e:
            r7.releaseIntercepted()
            kt.b r7 = r4.f61473b
            r8 = 0
            r0.f61477k = r8
            r0.f61478l = r8
            r0.f61479m = r8
            r0.f61475i = r3
            java.lang.Object r7 = r7.collect(r2, r0)
            if (r7 != r1) goto L83
            return r1
        L83:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L86:
            r7 = move-exception
            r5 = r8
            r8 = r7
            r7 = r5
        L8a:
            r7.releaseIntercepted()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.collect(kt.c, rs.c):java.lang.Object");
    }
}
