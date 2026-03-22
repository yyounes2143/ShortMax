package androidx.datastore.core;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.RunOnce", f = "DataStoreImpl.kt", l = {544, TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND}, m = "runIfNeeded")
/* loaded from: classes2.dex */
public final class RunOnce$runIfNeeded$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RunOnce this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RunOnce$runIfNeeded$1(RunOnce runOnce, c<? super RunOnce$runIfNeeded$1> cVar) {
        super(cVar);
        this.this$0 = runOnce;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.runIfNeeded(this);
    }
}
