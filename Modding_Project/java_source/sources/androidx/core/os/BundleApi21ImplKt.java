package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Bundle.kt */
@RequiresApi(21)
@Metadata
/* loaded from: classes.dex */
final class BundleApi21ImplKt {
    @NotNull
    public static final BundleApi21ImplKt INSTANCE = new BundleApi21ImplKt();

    private BundleApi21ImplKt() {
    }

    @DoNotInline
    public static final void putSize(@NotNull Bundle bundle, @NotNull String str, @Nullable Size size) {
        bundle.putSize(str, size);
    }

    @DoNotInline
    public static final void putSizeF(@NotNull Bundle bundle, @NotNull String str, @Nullable SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
