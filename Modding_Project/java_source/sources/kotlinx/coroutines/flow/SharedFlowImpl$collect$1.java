package kotlinx.coroutines.flow;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedFlow.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_MILLISECOND}, m = "collect$suspendImpl")
/* loaded from: classes8.dex */
public final class SharedFlowImpl$collect$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61648h;

    /* renamed from: i  reason: collision with root package name */
    Object f61649i;

    /* renamed from: j  reason: collision with root package name */
    Object f61650j;

    /* renamed from: k  reason: collision with root package name */
    Object f61651k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f61652l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ SharedFlowImpl<T> f61653m;

    /* renamed from: n  reason: collision with root package name */
    int f61654n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedFlowImpl$collect$1(SharedFlowImpl<T> sharedFlowImpl, rs.c<? super SharedFlowImpl$collect$1> cVar) {
        super(cVar);
        this.f61653m = sharedFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61652l = obj;
        this.f61654n |= Integer.MIN_VALUE;
        return SharedFlowImpl.A(this.f61653m, null, this);
    }
}
