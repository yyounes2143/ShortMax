package androidx.compose.material;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnackbarHost.kt */
@Metadata
@d(c = "androidx.compose.material.SnackbarHostState", f = "SnackbarHost.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUEUE_MAX_FULL, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300}, m = "showSnackbar")
/* loaded from: classes.dex */
public final class SnackbarHostState$showSnackbar$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SnackbarHostState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostState$showSnackbar$1(SnackbarHostState snackbarHostState, c<? super SnackbarHostState$showSnackbar$1> cVar) {
        super(cVar);
        this.this$0 = snackbarHostState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.showSnackbar(null, null, null, this);
    }
}
