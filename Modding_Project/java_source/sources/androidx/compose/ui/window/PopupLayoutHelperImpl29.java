package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidPopup.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
public final class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl, androidx.compose.ui.window.PopupLayoutHelper
    public void setGestureExclusionRects(@NotNull View composeView, int i10, int i11) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        composeView.setSystemGestureExclusionRects(CollectionsKt.t(new Rect(0, 0, i10, i11)));
    }
}
