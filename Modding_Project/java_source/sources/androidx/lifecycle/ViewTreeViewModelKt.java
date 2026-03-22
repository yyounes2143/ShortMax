package androidx.lifecycle;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewTreeViewModel.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewTreeViewModelKt {
    @ms.c
    public static final /* synthetic */ ViewModelStoreOwner findViewTreeViewModelStoreOwner(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewTreeViewModelStoreOwner.get(view);
    }
}
