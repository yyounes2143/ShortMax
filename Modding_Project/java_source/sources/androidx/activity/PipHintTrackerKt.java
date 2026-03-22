package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PipHintTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class PipHintTrackerKt {
    @RequiresApi(26)
    @Nullable
    public static final Object trackPipAnimationHintView(@NotNull final Activity activity, @NotNull View view, @NotNull rs.c<? super Unit> cVar) {
        Object collect = kotlinx.coroutines.flow.c.g(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new kt.c() { // from class: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$2
            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar2) {
                return emit((Rect) obj, (rs.c<? super Unit>) cVar2);
            }

            @Nullable
            public final Object emit(@NotNull Rect rect, @NotNull rs.c<? super Unit> cVar2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return Unit.f60915a;
            }
        }, cVar);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect trackPipAnimationHintView$positionInWindow(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
