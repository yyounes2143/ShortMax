package kotlinx.coroutines.flow;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSIONS, 401, 406}, m = "collect")
/* loaded from: classes8.dex */
public final class StateFlowImpl$collect$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61673h;

    /* renamed from: i  reason: collision with root package name */
    Object f61674i;

    /* renamed from: j  reason: collision with root package name */
    Object f61675j;

    /* renamed from: k  reason: collision with root package name */
    Object f61676k;

    /* renamed from: l  reason: collision with root package name */
    Object f61677l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f61678m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ StateFlowImpl<T> f61679n;

    /* renamed from: o  reason: collision with root package name */
    int f61680o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowImpl$collect$1(StateFlowImpl<T> stateFlowImpl, rs.c<? super StateFlowImpl$collect$1> cVar) {
        super(cVar);
        this.f61679n = stateFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61678m = obj;
        this.f61680o |= Integer.MIN_VALUE;
        return this.f61679n.collect(null, this);
    }
}
