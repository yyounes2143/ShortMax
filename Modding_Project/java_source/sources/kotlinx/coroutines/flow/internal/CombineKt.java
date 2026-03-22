package kotlinx.coroutines.flow.internal;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Combine.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,140:1\n105#2:141\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n83#1:141\n*E\n"})
/* loaded from: classes8.dex */
public final class CombineKt {
    @Nullable
    public static final <R, T> Object a(@NotNull kt.c<? super R> cVar, @NotNull kt.b<? extends T>[] bVarArr, @NotNull Function0<T[]> function0, @NotNull n<? super kt.c<? super R>, ? super T[], ? super rs.c<? super Unit>, ? extends Object> nVar, @NotNull rs.c<? super Unit> cVar2) {
        Object a10 = FlowCoroutineKt.a(new CombineKt$combineInternal$2(bVarArr, function0, nVar, cVar, null), cVar2);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Unit.f60915a;
    }
}
