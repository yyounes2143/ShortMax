package androidx.work;

import androidx.work.Operation;
import com.google.common.util.concurrent.e;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* compiled from: Operation.kt */
@Metadata
/* loaded from: classes2.dex */
public final class OperationKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Type inference failed for: r5v8 */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object await(@org.jetbrains.annotations.NotNull androidx.work.Operation r4, @org.jetbrains.annotations.NotNull rs.c<? super androidx.work.Operation.State.SUCCESS> r5) {
        /*
            boolean r0 = r5 instanceof androidx.work.OperationKt$await$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.work.OperationKt$await$1 r0 = (androidx.work.OperationKt$await$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.work.OperationKt$await$1 r0 = new androidx.work.OperationKt$await$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            com.google.common.util.concurrent.e r4 = (com.google.common.util.concurrent.e) r4
            kotlin.f.b(r5)
            goto L88
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.f.b(r5)
            com.google.common.util.concurrent.e r4 = r4.getResult()
            java.lang.String r5 = "result"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            boolean r5 = r4.isDone()
            if (r5 == 0) goto L56
            java.lang.Object r4 = r4.get()     // Catch: java.util.concurrent.ExecutionException -> L4c
            goto L89
        L4c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L54
            goto L55
        L54:
            r4 = r5
        L55:
            throw r4
        L56:
            r0.L$0 = r4
            r0.label = r3
            kotlinx.coroutines.e r5 = new kotlinx.coroutines.e
            rs.c r2 = kotlin.coroutines.intrinsics.a.c(r0)
            r5.<init>(r2, r3)
            r5.H()
            androidx.work.ListenableFutureKt$await$2$1 r2 = new androidx.work.ListenableFutureKt$await$2$1
            r2.<init>(r5, r4)
            androidx.work.DirectExecutor r3 = androidx.work.DirectExecutor.INSTANCE
            r4.addListener(r2, r3)
            androidx.work.ListenableFutureKt$await$2$2 r2 = new androidx.work.ListenableFutureKt$await$2$2
            r2.<init>(r4)
            r5.u(r2)
            java.lang.Object r5 = r5.B()
            java.lang.Object r4 = kotlin.coroutines.intrinsics.a.f()
            if (r5 != r4) goto L85
            kotlin.coroutines.jvm.internal.f.c(r0)
        L85:
            if (r5 != r1) goto L88
            return r1
        L88:
            r4 = r5
        L89:
            java.lang.String r5 = "result.await()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.OperationKt.await(androidx.work.Operation, rs.c):java.lang.Object");
    }

    private static final Object await$$forInline(Operation operation, c<? super Operation.State.SUCCESS> cVar) {
        Object obj;
        e<Operation.State.SUCCESS> result = operation.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "result");
        if (result.isDone()) {
            try {
                obj = result.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw e10;
            }
        } else {
            InlineMarker.mark(0);
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
            eVar.H();
            result.addListener(new ListenableFutureKt$await$2$1(eVar, result), DirectExecutor.INSTANCE);
            eVar.u(new ListenableFutureKt$await$2$2(result));
            Unit unit = Unit.f60915a;
            obj = eVar.B();
            if (obj == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            InlineMarker.mark(1);
        }
        Intrinsics.checkNotNullExpressionValue(obj, "result.await()");
        return obj;
    }
}
