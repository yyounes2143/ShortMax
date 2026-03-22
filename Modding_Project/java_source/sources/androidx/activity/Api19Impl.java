package androidx.activity;

import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipHintTracker.kt */
@RequiresApi(19)
@Metadata
/* loaded from: classes.dex */
public final class Api19Impl {
    @NotNull
    public static final Api19Impl INSTANCE = new Api19Impl();

    private Api19Impl() {
    }

    public final boolean isAttachedToWindow(@NotNull View view) {
        return view.isAttachedToWindow();
    }
}
