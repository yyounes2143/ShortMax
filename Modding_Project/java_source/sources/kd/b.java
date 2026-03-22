package kd;

import androidx.databinding.BindingAdapter;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import jk.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextViewBindingAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f60712a = new b();

    private b() {
    }

    @BindingAdapter({"customTypeface"})
    public static final void a(@Nullable BaseTextView baseTextView, @NotNull String typefaceName) {
        Intrinsics.checkNotNullParameter(typefaceName, "typefaceName");
        if (baseTextView != null) {
            y.n(baseTextView, typefaceName);
        }
    }
}
