package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SuspendAnimation.kt */
@Metadata
@d(c = "androidx.compose.animation.core.SuspendAnimationKt", f = "SuspendAnimation.kt", l = {VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME}, m = "animate")
/* loaded from: classes.dex */
public final class SuspendAnimationKt$animate$4<T, V extends AnimationVector> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SuspendAnimationKt$animate$4(c<? super SuspendAnimationKt$animate$4> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SuspendAnimationKt.animate(null, null, 0L, null, this);
    }
}
