package androidx.room;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {445, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME}, m = "checkInvalidatedTables")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$checkInvalidatedTables$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$checkInvalidatedTables$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, rs.c<? super TriggerBasedInvalidationTracker$checkInvalidatedTables$1> cVar) {
        super(cVar);
        this.this$0 = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object checkInvalidatedTables;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        checkInvalidatedTables = this.this$0.checkInvalidatedTables(null, this);
        return checkInvalidatedTables;
    }
}
