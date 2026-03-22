package com.startshorts.androidplayer.adapter.immersion;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextCenterBinding;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextIconBinding;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionTextLeftBinding;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlayResolutionAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayResolutionAdapter extends SelectableAdapter<PlayResolution> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f37685w = new a(null);

    /* compiled from: PlayResolutionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PlayResolutionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<PlayResolution>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPlayResolutionTextCenterBinding f37686g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PlayResolutionAdapter f37687h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull PlayResolutionAdapter playResolutionAdapter, ItemPlayResolutionTextCenterBinding binding) {
            super(playResolutionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37687h = playResolutionAdapter;
            this.f37686g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPlayResolutionTextCenterBinding c() {
            return this.f37686g;
        }
    }

    /* compiled from: PlayResolutionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<PlayResolution>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPlayResolutionTextIconBinding f37688g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PlayResolutionAdapter f37689h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull PlayResolutionAdapter playResolutionAdapter, ItemPlayResolutionTextIconBinding binding) {
            super(playResolutionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37689h = playResolutionAdapter;
            this.f37688g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPlayResolutionTextIconBinding c() {
            return this.f37688g;
        }
    }

    /* compiled from: PlayResolutionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<PlayResolution>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPlayResolutionTextLeftBinding f37690g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PlayResolutionAdapter f37691h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull PlayResolutionAdapter playResolutionAdapter, ItemPlayResolutionTextLeftBinding binding) {
            super(playResolutionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37691h = playResolutionAdapter;
            this.f37690g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPlayResolutionTextLeftBinding c() {
            return this.f37690g;
        }
    }

    public PlayResolutionAdapter() {
        super(0, 1, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        Object obj;
        PlayResolution playResolution = (PlayResolution) getItem(i10);
        if (playResolution == null) {
            return 1;
        }
        Iterator it = m().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((PlayResolution) obj).getResolutionValue() == 1080) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj == null) {
            return 1;
        }
        if (playResolution.getResolutionValue() == 1080) {
            return 3;
        }
        return 2;
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<PlayResolution>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 2) {
            if (i10 != 3) {
                return new b(this, (ItemPlayResolutionTextCenterBinding) s(parent, R$layout.item_play_resolution_text_center));
            }
            return new c(this, (ItemPlayResolutionTextIconBinding) s(parent, R$layout.item_play_resolution_text_icon));
        }
        return new d(this, (ItemPlayResolutionTextLeftBinding) s(parent, R$layout.item_play_resolution_text_left));
    }
}
