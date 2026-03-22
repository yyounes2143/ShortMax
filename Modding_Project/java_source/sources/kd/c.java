package kd;

import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.BindingAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewBindingAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f60713a = new c();

    private c() {
    }

    @BindingAdapter({"layoutWidth"})
    public static final void a(@NotNull View view, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i10;
        view.setLayoutParams(layoutParams);
    }
}
