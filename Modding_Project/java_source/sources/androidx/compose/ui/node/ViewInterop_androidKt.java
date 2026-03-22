package androidx.compose.ui.node;

import android.view.View;
import androidx.annotation.RestrictTo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewInterop.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ViewInterop_androidKt {
    private static final int viewAdaptersKey = tagKey("ViewAdapter");

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final <T extends ViewAdapter> T getOrAddAdapter(@NotNull View view, int i10, @NotNull Function0<? extends T> factory) {
        T t10;
        ViewAdapter viewAdapter;
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(factory, "factory");
        MergedViewAdapter viewAdapter2 = getViewAdapter(view);
        List<ViewAdapter> adapters = viewAdapter2.getAdapters();
        int size = adapters.size();
        int i11 = 0;
        while (true) {
            t10 = null;
            if (i11 < size) {
                viewAdapter = adapters.get(i11);
                if (viewAdapter.getId() == i10) {
                    break;
                }
                i11++;
            } else {
                viewAdapter = null;
                break;
            }
        }
        if (viewAdapter instanceof ViewAdapter) {
            t10 = (T) viewAdapter;
        }
        if (t10 == null) {
            T invoke = factory.invoke();
            viewAdapter2.getAdapters().add(invoke);
            return invoke;
        }
        return t10;
    }

    @NotNull
    public static final MergedViewAdapter getViewAdapter(@NotNull View view) {
        MergedViewAdapter mergedViewAdapter;
        Intrinsics.checkNotNullParameter(view, "<this>");
        int i10 = viewAdaptersKey;
        Object tag = view.getTag(i10);
        if (tag instanceof MergedViewAdapter) {
            mergedViewAdapter = (MergedViewAdapter) tag;
        } else {
            mergedViewAdapter = null;
        }
        if (mergedViewAdapter == null) {
            MergedViewAdapter mergedViewAdapter2 = new MergedViewAdapter();
            view.setTag(i10, mergedViewAdapter2);
            return mergedViewAdapter2;
        }
        return mergedViewAdapter;
    }

    @Nullable
    public static final MergedViewAdapter getViewAdapterIfExists(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(viewAdaptersKey);
        if (tag instanceof MergedViewAdapter) {
            return (MergedViewAdapter) tag;
        }
        return null;
    }

    public static final int tagKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return key.hashCode() | 50331648;
    }
}
