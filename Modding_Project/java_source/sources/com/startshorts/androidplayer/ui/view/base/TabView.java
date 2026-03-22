package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TabView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTabView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabView.kt\ncom/startshorts/androidplayer/ui/view/base/TabView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n360#2,7:88\n*S KotlinDebug\n*F\n+ 1 TabView.kt\ncom/startshorts/androidplayer/ui/view/base/TabView\n*L\n27#1:88,7\n*E\n"})
/* loaded from: classes7.dex */
public final class TabView<T extends SelectableItem> extends RecyclerView {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private SelectableAdapter<T> f47172a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void a(@NotNull List<T> list, @NotNull SelectableAdapter<T> adapter, @Nullable RecyclerView.ItemDecoration itemDecoration, @NotNull RecyclerView.LayoutManager layoutManager) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
        setImportantForAccessibility(2);
        setLayoutManager(layoutManager);
        setItemAnimator(null);
        if (itemDecoration != null && getItemDecorationCount() == 0) {
            addItemDecoration(itemDecoration);
        }
        BaseAdapter.D(adapter, list, false, 2, null);
        this.f47172a = adapter;
        setAdapter(adapter);
    }

    public final int getItemCount() {
        SelectableAdapter<T> selectableAdapter = this.f47172a;
        if (selectableAdapter != null) {
            return selectableAdapter.getItemCount();
        }
        return 0;
    }

    public final void setSelectedIndex(int i10) {
        SelectableAdapter<T> selectableAdapter = this.f47172a;
        if (selectableAdapter != null && i10 >= 0 && i10 < selectableAdapter.getItemCount()) {
            selectableAdapter.L(i10);
            smoothScrollToPosition(i10);
        }
    }
}
