package k0;

import android.graphics.Bitmap;
import coil.memory.MemoryCache;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WeakMemoryCache.kt */
@Metadata
/* loaded from: classes2.dex */
public interface g {
    void a(int i10);

    @Nullable
    MemoryCache.b b(@NotNull MemoryCache.Key key);

    void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10);
}
