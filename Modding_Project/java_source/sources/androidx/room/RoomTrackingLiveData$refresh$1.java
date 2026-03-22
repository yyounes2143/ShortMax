package androidx.room;

import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomTrackingLiveData.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomTrackingLiveData", f = "RoomTrackingLiveData.android.kt", l = {82}, m = ToolBar.REFRESH)
/* loaded from: classes2.dex */
public final class RoomTrackingLiveData$refresh$1 extends ContinuationImpl {
    int I$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RoomTrackingLiveData<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomTrackingLiveData$refresh$1(RoomTrackingLiveData<T> roomTrackingLiveData, rs.c<? super RoomTrackingLiveData$refresh$1> cVar) {
        super(cVar);
        this.this$0 = roomTrackingLiveData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object refresh;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        refresh = this.this$0.refresh(this);
        return refresh;
    }
}
