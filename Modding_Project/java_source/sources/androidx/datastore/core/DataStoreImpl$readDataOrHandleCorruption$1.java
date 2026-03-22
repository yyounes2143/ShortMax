package androidx.datastore.core;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataStoreImpl.kt */
@Metadata
@d(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_ALL_SEI_THRESHOLD, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500}, m = "readDataOrHandleCorruption")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$1(DataStoreImpl<T> dataStoreImpl, c<? super DataStoreImpl$readDataOrHandleCorruption$1> cVar) {
        super(cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.readDataOrHandleCorruption(false, this);
    }
}
