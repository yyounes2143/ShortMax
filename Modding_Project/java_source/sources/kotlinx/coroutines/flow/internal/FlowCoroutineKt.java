package kotlinx.coroutines.flow.internal;

import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FlowCoroutine.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,59:1\n105#2:60\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n46#1:60\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowCoroutineKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n1#1,108:1\n47#2,2:109\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<R> implements kt.b<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f61775a;

        public a(n nVar) {
            this.f61775a = nVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super R> cVar, rs.c<? super Unit> cVar2) {
            Object a10 = FlowCoroutineKt.a(new FlowCoroutineKt$scopedFlow$1$1(this.f61775a, cVar, null), cVar2);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Unit.f60915a;
        }
    }

    @Nullable
    public static final <R> Object a(@NotNull Function2<? super g0, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        b bVar = new b(cVar.getContext(), cVar);
        Object d10 = nt.b.d(bVar, bVar, function2);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        return d10;
    }

    @NotNull
    public static final <R> kt.b<R> b(@NotNull n<? super g0, ? super kt.c<? super R>, ? super rs.c<? super Unit>, ? extends Object> nVar) {
        return new a(nVar);
    }
}
