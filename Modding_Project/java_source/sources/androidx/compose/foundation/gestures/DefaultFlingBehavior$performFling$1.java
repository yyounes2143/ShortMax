package androidx.compose.foundation.gestures;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DefaultFlingBehavior", f = "Scrollable.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT}, m = "performFling")
/* loaded from: classes.dex */
public final class DefaultFlingBehavior$performFling$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DefaultFlingBehavior this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$1(DefaultFlingBehavior defaultFlingBehavior, c<? super DefaultFlingBehavior$performFling$1> cVar) {
        super(cVar);
        this.this$0 = defaultFlingBehavior;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.performFling(null, 0.0f, this);
    }
}
