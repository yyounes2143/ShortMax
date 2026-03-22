package androidx.compose.ui.node;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewInterop.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class MergedViewAdapter implements ViewAdapter {
    @NotNull
    private final List<ViewAdapter> adapters = new ArrayList();

    /* renamed from: id  reason: collision with root package name */
    private final int f1277id;

    @Override // androidx.compose.ui.node.ViewAdapter
    public void didInsert(@NotNull View view, @NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).didInsert(view, parent);
        }
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public void didUpdate(@NotNull View view, @NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).didUpdate(view, parent);
        }
    }

    @NotNull
    public final <T extends ViewAdapter> T get(int i10, @NotNull Function0<? extends T> factory) {
        T t10;
        ViewAdapter viewAdapter;
        Intrinsics.checkNotNullParameter(factory, "factory");
        List<ViewAdapter> adapters = getAdapters();
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
        if (t10 != null) {
            return t10;
        }
        T invoke = factory.invoke();
        getAdapters().add(invoke);
        return invoke;
    }

    @NotNull
    public final List<ViewAdapter> getAdapters() {
        return this.adapters;
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public int getId() {
        return this.f1277id;
    }

    @Override // androidx.compose.ui.node.ViewAdapter
    public void willInsert(@NotNull View view, @NotNull ViewGroup parent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        List<ViewAdapter> list = this.adapters;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).willInsert(view, parent);
        }
    }
}
