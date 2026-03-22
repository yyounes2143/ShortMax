package c0;

import androidx.compose.runtime.ProvidableCompositionLocal;
import coil.ImageLoader;
import coil.compose.ImageLoaderProvidableCompositionLocal;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocalImageLoader.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final ProvidableCompositionLocal<ImageLoader> f2845a = ImageLoaderProvidableCompositionLocal.b(null, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<ImageLoader> a() {
        return f2845a;
    }
}
