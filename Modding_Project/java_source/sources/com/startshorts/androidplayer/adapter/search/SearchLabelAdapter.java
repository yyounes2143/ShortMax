package com.startshorts.androidplayer.adapter.search;

import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.search.SearchKey;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SearchLabelAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchLabelAdapter extends BaseBannerAdapter<SearchKey> {
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        return R$layout.item_search_label;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: n */
    public void b(@NotNull BaseViewHolder<SearchKey> holder, @NotNull SearchKey data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        holder.d(R$id.search_label_tv, data.getKey());
    }
}
