package fk;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j0 f51740a = new j0();

    private j0() {
    }

    public final boolean a(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!view.isAttachedToWindow()) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (iArr[0] + (view.getWidth() / 2.0f) >= view.getContext().getResources().getDisplayMetrics().widthPixels / 2.0f) {
            return false;
        }
        return true;
    }
}
