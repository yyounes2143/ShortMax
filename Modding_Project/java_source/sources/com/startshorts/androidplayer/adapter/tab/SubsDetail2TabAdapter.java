package com.startshorts.androidplayer.adapter.tab;

import android.graphics.Color;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ItemSubsdetail2TabBinding;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import fk.u;
import jk.y;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SubsDetail2TabAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsDetail2TabAdapter extends SelectableAdapter<SubsSku> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f38090w = new a(null);

    /* compiled from: SubsDetail2TabAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsDetail2TabAdapter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSubsDetail2TabAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsDetail2TabAdapter.kt\ncom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$TabViewHolder\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,80:1\n470#2:81\n470#2:82\n*S KotlinDebug\n*F\n+ 1 SubsDetail2TabAdapter.kt\ncom/startshorts/androidplayer/adapter/tab/SubsDetail2TabAdapter$TabViewHolder\n*L\n40#1:81\n49#1:82\n*E\n"})
    /* loaded from: classes6.dex */
    private final class b extends SelectableAdapter<SubsSku>.SelectableViewHolder {
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final ItemSubsdetail2TabBinding f38091h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsDetail2TabAdapter f38092i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull SubsDetail2TabAdapter subsDetail2TabAdapter, ItemSubsdetail2TabBinding binding) {
            super(subsDetail2TabAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38092i = subsDetail2TabAdapter;
            this.f38091h = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSubsdetail2TabBinding c() {
            return this.f38091h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull SubsSku item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            GradientTextView gradientTextView = c().f40968c;
            gradientTextView.setText(SubsSku.Companion.getCardName(item.getType()));
            if (item.isSelected()) {
                gradientTextView.setTextSize(18.0f);
                Intrinsics.checkNotNull(gradientTextView);
                y.n(gradientTextView, u.f51776a.d(R$string.typeface_bold));
                gradientTextView.setColor(new int[]{Color.parseColor("#F6610F"), Color.parseColor("#FEDAA4"), Color.parseColor("#FFFFFF")}, (float[]) null, 0);
            } else {
                gradientTextView.setTextSize(14.0f);
                Intrinsics.checkNotNull(gradientTextView);
                y.n(gradientTextView, u.f51776a.d(R$string.typeface_semi_bold));
                gradientTextView.setColor(new int[]{Color.parseColor("#828386"), Color.parseColor("#828386"), Color.parseColor("#828386")}, (float[]) null, 0);
            }
            if (item.isSelected()) {
                c().f40969d.setVisibility(0);
                c().f40966a.setVisibility(4);
                return;
            }
            c().f40969d.setVisibility(4);
            int a10 = jk.u.a(item);
            if (a10 > 0) {
                c().f40966a.setVisibility(0);
                c().f40966a.setText(u.f51776a.e(R$string.discount_label_off, String.valueOf(a10)));
                return;
            }
            c().f40966a.setVisibility(4);
        }
    }

    public SubsDetail2TabAdapter() {
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
    public BaseAdapter<SubsSku>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemSubsdetail2TabBinding) s(parent, R$layout.item_subsdetail2_tab));
    }
}
