package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,141:1\n1#2:142\n105#3:143\n105#3:144\n105#3:145\n105#3:146\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n19#1:143\n30#1:144\n49#1:145\n81#1:146\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__LimitKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,108:1\n31#2,10:109\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements kt.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kt.b f61524a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f61525b;

        public a(kt.b bVar, Function2 function2) {
            this.f61524a = bVar;
            this.f61525b = function2;
        }

        @Override // kt.b
        public Object collect(kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
            Object collect = this.f61524a.collect(new FlowKt__LimitKt$dropWhile$1$1(new Ref.BooleanRef(), cVar, this.f61525b), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    @NotNull
    public static final <T> kt.b<T> b(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2) {
        return new a(bVar, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object c(kt.c<? super T> r4, T r5, java.lang.Object r6, rs.c<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1) r0
            int r1 = r0.f61536j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61536j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$emitAbort$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61535i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61536j
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            java.lang.Object r6 = r0.f61534h
            kotlin.f.b(r7)
            goto L41
        L33:
            kotlin.f.b(r7)
            r0.f61534h = r6
            r0.f61536j = r3
            java.lang.Object r4 = r4.emit(r5, r0)
            if (r4 != r1) goto L41
            return r1
        L41:
            kotlinx.coroutines.flow.internal.AbortFlowException r4 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r4.<init>(r6)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.c(kt.c, java.lang.Object, java.lang.Object, rs.c):java.lang.Object");
    }

    @NotNull
    public static final <T> kt.b<T> d(@NotNull kt.b<? extends T> bVar, int i10) {
        if (i10 > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(bVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " should be positive").toString());
    }

    @NotNull
    public static final <T> kt.b<T> e(@NotNull kt.b<? extends T> bVar, @NotNull Function2<? super T, ? super rs.c<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(bVar, function2);
    }

    @NotNull
    public static final <T, R> kt.b<R> f(@NotNull kt.b<? extends T> bVar, @NotNull at.n<? super kt.c<? super R>, ? super T, ? super rs.c<? super Boolean>, ? extends Object> nVar) {
        return c.F(new FlowKt__LimitKt$transformWhile$1(bVar, nVar, null));
    }
}
