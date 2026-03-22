package androidx.core.os;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistableBundle.kt */
@RequiresApi(22)
@Metadata
/* loaded from: classes.dex */
final class PersistableBundleApi22ImplKt {
    @NotNull
    public static final PersistableBundleApi22ImplKt INSTANCE = new PersistableBundleApi22ImplKt();

    private PersistableBundleApi22ImplKt() {
    }

    @DoNotInline
    public static final void putBoolean(@NotNull PersistableBundle persistableBundle, @Nullable String str, boolean z10) {
        persistableBundle.putBoolean(str, z10);
    }

    @DoNotInline
    public static final void putBooleanArray(@NotNull PersistableBundle persistableBundle, @Nullable String str, @NotNull boolean[] zArr) {
        persistableBundle.putBooleanArray(str, zArr);
    }
}
