package com.startshorts.androidplayer.adapter.immersion;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.shorts.EpisodeDetail;
import com.startshorts.androidplayer.databinding.ItemEpisodeLockedBinding;
import com.startshorts.androidplayer.databinding.ItemEpisodeNormalBinding;
import com.startshorts.androidplayer.databinding.ItemEpisodePlayingBinding;
import com.startshorts.androidplayer.databinding.ItemEpisodeVirtualBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EpisodeListAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeListAdapter extends BaseAdapter<EpisodeDetail> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f37667o = new a(null);

    /* compiled from: EpisodeListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: EpisodeListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<EpisodeDetail>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemEpisodeLockedBinding f37668g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ EpisodeListAdapter f37669h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull EpisodeListAdapter episodeListAdapter, ItemEpisodeLockedBinding binding) {
            super(episodeListAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37669h = episodeListAdapter;
            this.f37668g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemEpisodeLockedBinding c() {
            return this.f37668g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull EpisodeDetail item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item.isTrailer()) {
                c().f40387a.setText(c().getRoot().getContext().getString(R$string.shorts_fragment_trailer));
            } else {
                c().f40387a.setText(String.valueOf(item.getEpisodeNum()));
            }
        }
    }

    /* compiled from: EpisodeListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<EpisodeDetail>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemEpisodeNormalBinding f37670g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ EpisodeListAdapter f37671h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull EpisodeListAdapter episodeListAdapter, ItemEpisodeNormalBinding binding) {
            super(episodeListAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37671h = episodeListAdapter;
            this.f37670g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemEpisodeNormalBinding c() {
            return this.f37670g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull EpisodeDetail item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (item.isTrailer()) {
                c().f40393a.setText(c().getRoot().getContext().getString(R$string.shorts_fragment_trailer));
            } else {
                c().f40393a.setText(String.valueOf(item.getEpisodeNum()));
            }
        }
    }

    /* compiled from: EpisodeListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<EpisodeDetail>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemEpisodePlayingBinding f37672g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ EpisodeListAdapter f37673h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull EpisodeListAdapter episodeListAdapter, ItemEpisodePlayingBinding binding) {
            super(episodeListAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37673h = episodeListAdapter;
            this.f37672g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemEpisodePlayingBinding c() {
            return this.f37672g;
        }
    }

    /* compiled from: EpisodeListAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<EpisodeDetail>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemEpisodeVirtualBinding f37674g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ EpisodeListAdapter f37675h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull EpisodeListAdapter episodeListAdapter, ItemEpisodeVirtualBinding binding) {
            super(episodeListAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37675h = episodeListAdapter;
            this.f37674g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemEpisodeVirtualBinding c() {
            return this.f37674g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull EpisodeDetail item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40408a.setText(String.valueOf(item.getEpisodeNum()));
        }
    }

    public EpisodeListAdapter() {
        super(1000L);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        EpisodeDetail item = getItem(i10);
        if (item == null) {
            return 2;
        }
        if (item.getPlaying()) {
            return 1;
        }
        if (item.isVirtual()) {
            return 4;
        }
        if (!item.isLocked()) {
            return 2;
        }
        return 3;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "EpisodeListAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<EpisodeDetail>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 1) {
            if (i10 != 3) {
                if (i10 != 4) {
                    return new c(this, (ItemEpisodeNormalBinding) s(parent, R$layout.item_episode_normal));
                }
                return new e(this, (ItemEpisodeVirtualBinding) s(parent, R$layout.item_episode_virtual));
            }
            return new b(this, (ItemEpisodeLockedBinding) s(parent, R$layout.item_episode_locked));
        }
        return new d(this, (ItemEpisodePlayingBinding) s(parent, R$layout.item_episode_playing));
    }
}
