package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import gt.d0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 Effects.kt\nandroidx/compose/runtime/RememberedCoroutineScope\n*L\n1#1,106:1\n482#2,7:107\n*E\n"})
/* loaded from: classes.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends kotlin.coroutines.a implements gt.d0 {
    final /* synthetic */ CompositionErrorContextImpl $traceContext$inlined;
    final /* synthetic */ RememberedCoroutineScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(d0.b bVar, CompositionErrorContextImpl compositionErrorContextImpl, RememberedCoroutineScope rememberedCoroutineScope) {
        super(bVar);
        this.$traceContext$inlined = compositionErrorContextImpl;
        this.this$0 = rememberedCoroutineScope;
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        CoroutineContext coroutineContext2;
        CoroutineContext coroutineContext3;
        this.$traceContext$inlined.attachComposeStackTrace(th2, this.this$0);
        coroutineContext2 = this.this$0.overlayContext;
        d0.b bVar = gt.d0.D8;
        gt.d0 d0Var = (gt.d0) coroutineContext2.get(bVar);
        if (d0Var == null) {
            coroutineContext3 = this.this$0.parentContext;
            gt.d0 d0Var2 = (gt.d0) coroutineContext3.get(bVar);
            if (d0Var2 != null) {
                d0Var2.handleException(coroutineContext, th2);
                return;
            }
            throw th2;
        }
        d0Var.handleException(coroutineContext, th2);
    }
}
