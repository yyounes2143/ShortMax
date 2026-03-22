package androidx.compose.ui.text.android;

import android.text.StaticLayout;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StaticLayoutFactory.kt */
@RequiresApi(28)
@Metadata
/* loaded from: classes.dex */
final class StaticLayoutFactory28 {
    @NotNull
    public static final StaticLayoutFactory28 INSTANCE = new StaticLayoutFactory28();

    private StaticLayoutFactory28() {
    }

    @DoNotInline
    public final void setUseLineSpacingFromFallbacks(@NotNull StaticLayout.Builder builder, boolean z10) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.setUseLineSpacingFromFallbacks(z10);
    }
}
