package kd;

import android.widget.ImageView;
import androidx.databinding.BindingAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageViewBindingAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f60711a = new a();

    private a() {
    }

    @BindingAdapter({"android:src"})
    public static final void a(@NotNull ImageView view, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setImageResource(i10);
    }
}
