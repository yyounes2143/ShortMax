package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Delay.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> kt.b<T> b(@NotNull kt.b<? extends T> bVar, final long j10) {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (i10 == 0) {
                return bVar;
            }
            return d(bVar, new Function1() { // from class: kotlinx.coroutines.flow.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    long c10;
                    c10 = FlowKt__DelayKt.c(j10, obj);
                    return Long.valueOf(c10);
                }
            });
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative");
    }

    private static final <T> kt.b<T> d(kt.b<? extends T> bVar, Function1<? super T, Long> function1) {
        return FlowCoroutineKt.b(new FlowKt__DelayKt$debounceInternal$1(function1, bVar, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(long j10, Object obj) {
        return j10;
    }
}
