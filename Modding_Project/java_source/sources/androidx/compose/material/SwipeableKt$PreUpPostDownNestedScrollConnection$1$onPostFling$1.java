package androidx.compose.material;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Swipeable.kt */
@Metadata
@d(c = "androidx.compose.material.SwipeableKt$PreUpPostDownNestedScrollConnection$1", f = "Swipeable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RTC_ENABLE_RTC_UNINIT_LOCK_FREE}, m = "onPostFling-RZ2iAVY")
/* loaded from: classes.dex */
public final class SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1 extends ContinuationImpl {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SwipeableKt$PreUpPostDownNestedScrollConnection$1 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1(SwipeableKt$PreUpPostDownNestedScrollConnection$1 swipeableKt$PreUpPostDownNestedScrollConnection$1, c<? super SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPostFling$1> cVar) {
        super(cVar);
        this.this$0 = swipeableKt$PreUpPostDownNestedScrollConnection$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo347onPostFlingRZ2iAVY(0L, 0L, this);
    }
}
