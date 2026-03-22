package androidx.lifecycle;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: View.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewKt {
    @ms.c
    public static final /* synthetic */ LifecycleOwner findViewTreeLifecycleOwner(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return ViewTreeLifecycleOwner.get(view);
    }
}
