package androidx.work;

import com.google.common.util.concurrent.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListenableFuture.kt */
@Metadata
/* loaded from: classes2.dex */
final class ListenableFutureKt$await$2$2 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ e<R> $this_await;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListenableFutureKt$await$2$2(e<R> eVar) {
        super(1);
        this.$this_await = eVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
        invoke2(th2);
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th2) {
        this.$this_await.cancel(false);
    }
}
