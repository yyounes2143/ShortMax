package androidx.compose.ui.unit;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidDensity.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidDensity_androidKt {
    @NotNull
    public static final Density Density(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DensityKt.Density(context.getResources().getDisplayMetrics().density, context.getResources().getConfiguration().fontScale);
    }
}
