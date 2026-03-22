package androidx.compose.foundation.gestures;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollableKt", f = "Scrollable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE}, m = "awaitScrollEvent")
/* loaded from: classes.dex */
public final class ScrollableKt$awaitScrollEvent$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScrollableKt$awaitScrollEvent$1(c<? super ScrollableKt$awaitScrollEvent$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object awaitScrollEvent;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitScrollEvent = ScrollableKt.awaitScrollEvent(null, this);
        return awaitScrollEvent;
    }
}
