package kotlinx.coroutines.flow;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Context.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.CancellableFlowImpl$collect$2", f = "Context.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC}, m = "emit")
/* loaded from: classes8.dex */
public final class CancellableFlowImpl$collect$2$emit$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61407h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CancellableFlowImpl$collect$2<T> f61408i;

    /* renamed from: j  reason: collision with root package name */
    int f61409j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CancellableFlowImpl$collect$2$emit$1(CancellableFlowImpl$collect$2<? super T> cancellableFlowImpl$collect$2, rs.c<? super CancellableFlowImpl$collect$2$emit$1> cVar) {
        super(cVar);
        this.f61408i = cancellableFlowImpl$collect$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61407h = obj;
        this.f61409j |= Integer.MIN_VALUE;
        return this.f61408i.emit(null, this);
    }
}
