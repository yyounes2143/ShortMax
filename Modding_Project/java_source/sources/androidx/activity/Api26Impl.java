package androidx.activity;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipHintTracker.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
public final class Api26Impl {
    @NotNull
    public static final Api26Impl INSTANCE = new Api26Impl();

    private Api26Impl() {
    }

    public final void setPipParamsSourceRectHint(@NotNull Activity activity, @NotNull Rect rect) {
        activity.setPictureInPictureParams(new PictureInPictureParams.Builder().setSourceRectHint(rect).build());
    }
}
