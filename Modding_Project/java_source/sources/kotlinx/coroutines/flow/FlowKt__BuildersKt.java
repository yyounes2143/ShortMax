package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,350:1\n105#2:351\n105#2:352\n105#2:353\n105#2:354\n105#2:355\n105#2:356\n105#2:357\n105#2:358\n105#2:359\n105#2:360\n105#2:361\n105#2:362\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n64#1:351\n78#1:352\n85#1:353\n94#1:354\n103#1:355\n118#1:356\n127#1:357\n149#1:358\n160#1:359\n171#1:360\n180#1:361\n189#1:362\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__BuildersKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n1#1,108:1\n132#2,2:109\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements kt.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f61430a;

        public a(Object obj) {
            this.f61430a = obj;
        }

        @Override // kt.b
        public Object collect(kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
            Object emit = cVar.emit((Object) this.f61430a, cVar2);
            if (emit == kotlin.coroutines.intrinsics.a.f()) {
                return emit;
            }
            return Unit.f60915a;
        }
    }

    @NotNull
    public static final <T> kt.b<T> a(@NotNull Iterable<? extends T> iterable) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3(iterable);
    }

    @NotNull
    public static final <T> kt.b<T> b(@NotNull Function1<? super rs.c<? super T>, ? extends Object> function1) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$2(function1);
    }

    @NotNull
    public static final <T> kt.b<T> c(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return new CallbackFlowBuilder(function2, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> kt.b<T> d(@NotNull Function2<? super jt.h<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return new b(function2, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> kt.b<T> e(@NotNull Function2<? super kt.c<? super T>, ? super rs.c<? super Unit>, ? extends Object> function2) {
        return new k(function2);
    }

    @NotNull
    public static final <T> kt.b<T> f(T t10) {
        return new a(t10);
    }
}
