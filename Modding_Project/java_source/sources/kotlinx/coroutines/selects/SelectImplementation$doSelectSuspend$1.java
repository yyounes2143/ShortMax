package kotlinx.coroutines.selects;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Select.kt */
@Metadata
@d(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_HTTP_RES_FINISH_TIME}, m = "doSelectSuspend")
/* loaded from: classes8.dex */
public final class SelectImplementation$doSelectSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61873h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61874i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SelectImplementation<R> f61875j;

    /* renamed from: k  reason: collision with root package name */
    int f61876k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImplementation$doSelectSuspend$1(SelectImplementation<R> selectImplementation, c<? super SelectImplementation$doSelectSuspend$1> cVar) {
        super(cVar);
        this.f61875j = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object q10;
        this.f61874i = obj;
        this.f61876k |= Integer.MIN_VALUE;
        q10 = this.f61875j.q(this);
        return q10;
    }
}
