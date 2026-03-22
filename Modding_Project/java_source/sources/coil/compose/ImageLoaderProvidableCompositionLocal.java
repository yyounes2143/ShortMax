package coil.compose;

import a0.a;
import android.content.Context;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import coil.ImageLoader;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LocalImageLoader.kt */
@c
@Metadata
/* loaded from: classes2.dex */
public final class ImageLoaderProvidableCompositionLocal {
    public static /* synthetic */ ProvidableCompositionLocal b(ProvidableCompositionLocal providableCompositionLocal, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            providableCompositionLocal = CompositionLocalKt.staticCompositionLocalOf(new Function0<ImageLoader>() { // from class: coil.compose.ImageLoaderProvidableCompositionLocal.1
                @Override // kotlin.jvm.functions.Function0
                @Nullable
                /* renamed from: b */
                public final ImageLoader invoke() {
                    return null;
                }
            });
        }
        return a(providableCompositionLocal);
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final ImageLoader c(ProvidableCompositionLocal<ImageLoader> providableCompositionLocal, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-617597678, i10, -1, "coil.compose.ImageLoaderProvidableCompositionLocal.<get-current> (LocalImageLoader.kt:49)");
        }
        ImageLoader imageLoader = (ImageLoader) composer.consume(providableCompositionLocal);
        if (imageLoader == null) {
            imageLoader = a.a((Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext()));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return imageLoader;
    }

    @NotNull
    public static ProvidableCompositionLocal<ImageLoader> a(@NotNull ProvidableCompositionLocal<ImageLoader> providableCompositionLocal) {
        return providableCompositionLocal;
    }
}
