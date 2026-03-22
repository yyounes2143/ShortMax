package androidx.compose.ui.res;

import android.content.Context;
import androidx.annotation.ColorRes;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: ColorResources.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ColorResources_androidKt {
    @Composable
    @ReadOnlyComposable
    public static final long colorResource(@ColorRes int i10, @Nullable Composer composer, int i11) {
        return ColorResourceHelper.INSTANCE.m3578getColorWaAFU9c((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext()), i10);
    }
}
