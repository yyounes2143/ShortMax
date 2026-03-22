package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ScrollExtensions.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$stopScroll$2", f = "ScrollExtensions.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ScrollExtensionsKt$stopScroll$2 extends SuspendLambda implements Function2<ScrollScope, c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollExtensionsKt$stopScroll$2(c<? super ScrollExtensionsKt$stopScroll$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ScrollExtensionsKt$stopScroll$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable c<? super Unit> cVar) {
        return ((ScrollExtensionsKt$stopScroll$2) create(scrollScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
