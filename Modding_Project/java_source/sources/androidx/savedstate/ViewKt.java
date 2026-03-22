package androidx.savedstate;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
/* compiled from: View.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewKt {
    @c
    public static final /* synthetic */ SavedStateRegistryOwner findViewTreeSavedStateRegistryOwner(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewTreeSavedStateRegistryOwner.get(view);
    }
}
