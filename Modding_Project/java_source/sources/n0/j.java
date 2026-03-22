package n0;

import android.view.View;
import coil.size.ViewSizeResolver;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewSizeResolver.kt */
@Metadata
/* loaded from: classes2.dex */
public final class j {
    @NotNull
    public static final <T extends View> ViewSizeResolver<T> a(@NotNull T t10, boolean z10) {
        return new f(t10, z10);
    }

    public static /* synthetic */ ViewSizeResolver b(View view, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return a(view, z10);
    }
}
