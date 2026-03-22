package com.startshorts.androidplayer.adapter.immersion;

import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionExperimentTextBinding;
import com.startshorts.androidplayer.databinding.ItemPlayResolutionExperimentTextIconBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlayResolutionExperimentAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayResolutionExperimentAdapter extends SelectableAdapter<PlayResolution> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f37692w = new a(null);

    /* compiled from: PlayResolutionExperimentAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PlayResolutionExperimentAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<PlayResolution>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPlayResolutionExperimentTextBinding f37693g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PlayResolutionExperimentAdapter f37694h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull PlayResolutionExperimentAdapter playResolutionExperimentAdapter, ItemPlayResolutionExperimentTextBinding binding) {
            super(playResolutionExperimentAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37694h = playResolutionExperimentAdapter;
            this.f37693g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPlayResolutionExperimentTextBinding c() {
            return this.f37693g;
        }
    }

    /* compiled from: PlayResolutionExperimentAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<PlayResolution>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemPlayResolutionExperimentTextIconBinding f37695g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ PlayResolutionExperimentAdapter f37696h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull PlayResolutionExperimentAdapter playResolutionExperimentAdapter, ItemPlayResolutionExperimentTextIconBinding binding) {
            super(playResolutionExperimentAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37696h = playResolutionExperimentAdapter;
            this.f37695g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemPlayResolutionExperimentTextIconBinding c() {
            return this.f37695g;
        }
    }

    public PlayResolutionExperimentAdapter() {
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
        if (obj == null || ABTestFactory.f42224a.e1().isEnable().invoke().booleanValue() || playResolution.getResolutionValue() != 1080) {
            return 1;
        }
        return 2;
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<PlayResolution>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 2) {
            return new c(this, (ItemPlayResolutionExperimentTextIconBinding) s(parent, R$layout.item_play_resolution_experiment_text_icon));
        }
        return new b(this, (ItemPlayResolutionExperimentTextBinding) s(parent, R$layout.item_play_resolution_experiment_text));
    }
}
