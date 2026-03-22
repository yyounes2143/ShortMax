package androidx.activity;

import android.window.BackEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BackEventCompat.kt */
@RequiresApi(34)
@Metadata
/* loaded from: classes.dex */
public final class Api34Impl {
    @NotNull
    public static final Api34Impl INSTANCE = new Api34Impl();

    private Api34Impl() {
    }

    @DoNotInline
    @NotNull
    public final BackEvent createOnBackEvent(float f10, float f11, float f12, int i10) {
        return new BackEvent(f10, f11, f12, i10);
    }

    @DoNotInline
    public final float progress(@NotNull BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    @DoNotInline
    public final int swipeEdge(@NotNull BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    @DoNotInline
    public final float touchX(@NotNull BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    @DoNotInline
    public final float touchY(@NotNull BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
