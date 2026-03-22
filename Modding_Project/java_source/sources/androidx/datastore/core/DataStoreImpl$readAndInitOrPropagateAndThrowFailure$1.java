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
@d(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME}, m = "readAndInitOrPropagateAndThrowFailure")
/* loaded from: classes2.dex */
public final class DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1(DataStoreImpl<T> dataStoreImpl, c<? super DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1> cVar) {
        super(cVar);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object readAndInitOrPropagateAndThrowFailure;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readAndInitOrPropagateAndThrowFailure = this.this$0.readAndInitOrPropagateAndThrowFailure(this);
        return readAndInitOrPropagateAndThrowFailure;
    }
}
