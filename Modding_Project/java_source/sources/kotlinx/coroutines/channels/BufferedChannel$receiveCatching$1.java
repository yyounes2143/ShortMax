package kotlinx.coroutines.channels;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BufferedChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAYER_READ_STATE}, m = "receiveCatching-JP2dKIU$suspendImpl")
/* loaded from: classes8.dex */
public final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61340h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BufferedChannel<E> f61341i;

    /* renamed from: j  reason: collision with root package name */
    int f61342j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatching$1(BufferedChannel<E> bufferedChannel, rs.c<? super BufferedChannel$receiveCatching$1> cVar) {
        super(cVar);
        this.f61341i = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61340h = obj;
        this.f61342j |= Integer.MIN_VALUE;
        Object V0 = BufferedChannel.V0(this.f61341i, this);
        if (V0 == kotlin.coroutines.intrinsics.a.f()) {
            return V0;
        }
        return a.b(V0);
    }
}
