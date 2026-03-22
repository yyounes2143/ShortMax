package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayoutItemProvider.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface LazyLayoutItemProvider {
    @Composable
    void Item(int i10, @Nullable Composer composer, int i11);

    @Nullable
    default Object getContentType(int i10) {
        return null;
    }

    int getItemCount();

    @NotNull
    default Object getKey(int i10) {
        return Lazy_androidKt.getDefaultLazyLayoutKey(i10);
    }

    @NotNull
    default Map<Object, Integer> getKeyToIndexMap() {
        return p0.i();
    }
}
