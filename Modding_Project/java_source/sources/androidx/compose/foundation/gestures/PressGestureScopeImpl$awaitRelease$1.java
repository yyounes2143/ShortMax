package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", l = {320}, m = "awaitRelease")
/* loaded from: classes.dex */
public final class PressGestureScopeImpl$awaitRelease$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PressGestureScopeImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressGestureScopeImpl$awaitRelease$1(PressGestureScopeImpl pressGestureScopeImpl, c<? super PressGestureScopeImpl$awaitRelease$1> cVar) {
        super(cVar);
        this.this$0 = pressGestureScopeImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.awaitRelease(this);
    }
}
