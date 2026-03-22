package com.startshorts.androidplayer.adapter.tab;

import android.view.ViewGroup;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.tab.EpisodeTab;
import com.startshorts.androidplayer.databinding.ItemEpisodeTabBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import fk.u;
import jk.e0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EpisodeTabAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeTabAdapter extends SelectableAdapter<EpisodeTab> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f38087w = new a(null);

    /* compiled from: EpisodeTabAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: EpisodeTabAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends SelectableAdapter<EpisodeTab>.SelectableViewHolder {
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final ItemEpisodeTabBinding f38088h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ EpisodeTabAdapter f38089i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull EpisodeTabAdapter episodeTabAdapter, ItemEpisodeTabBinding binding) {
            super(episodeTabAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38089i = episodeTabAdapter;
            this.f38088h = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemEpisodeTabBinding c() {
            return this.f38088h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull EpisodeTab item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            BaseTextView baseTextView = c().f40403b;
            baseTextView.setText(item.getName());
            u uVar = u.f51776a;
            if (item.isSelected()) {
                i11 = R$color.color_episode_list_dialog_fragment_episode_tab_selected;
            } else {
                i11 = R$color.color_episode_list_dialog_fragment_episode_tab_unselected;
            }
            baseTextView.setTextColor(uVar.a(i11));
            if (item.isSelected()) {
                ViewStubProxy dividerLineViewstub = c().f40402a;
                Intrinsics.checkNotNullExpressionValue(dividerLineViewstub, "dividerLineViewstub");
                e0.g(dividerLineViewstub);
                return;
            }
            ViewStubProxy dividerLineViewstub2 = c().f40402a;
            Intrinsics.checkNotNullExpressionValue(dividerLineViewstub2, "dividerLineViewstub");
            e0.a(dividerLineViewstub2, 4);
        }
    }

    public EpisodeTabAdapter() {
        super(0, 1, null);
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "EpisodeTabAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<EpisodeTab>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemEpisodeTabBinding) s(parent, R$layout.item_episode_tab));
    }
}
