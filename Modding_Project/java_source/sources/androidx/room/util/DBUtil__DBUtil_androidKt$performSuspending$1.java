package androidx.room.util;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DBUtil.android.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt", f = "DBUtil.android.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME}, m = "performSuspending")
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    boolean Z$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DBUtil__DBUtil_androidKt$performSuspending$1(c<? super DBUtil__DBUtil_androidKt$performSuspending$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DBUtil.performSuspending(null, false, false, null, this);
    }
}
