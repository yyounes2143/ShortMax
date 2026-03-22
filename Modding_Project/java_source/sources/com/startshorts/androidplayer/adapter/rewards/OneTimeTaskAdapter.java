package com.startshorts.androidplayer.adapter.rewards;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.task.Task;
import com.startshorts.androidplayer.databinding.ItemNoviceTaskBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OneTimeTaskAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class OneTimeTaskAdapter extends BaseAdapter<Task> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f37877q = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private final int f37878o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f37879p;

    /* compiled from: OneTimeTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: OneTimeTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a(@NotNull Task task);
    }

    /* compiled from: OneTimeTaskAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<Task>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemNoviceTaskBinding f37880g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ OneTimeTaskAdapter f37881h;

        /* compiled from: OneTimeTaskAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ OneTimeTaskAdapter f37882e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Task f37883f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(OneTimeTaskAdapter oneTimeTaskAdapter, Task task) {
                super(0L, 1, null);
                this.f37882e = oneTimeTaskAdapter;
                this.f37883f = task;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                b F = this.f37882e.F();
                if (F != null) {
                    F.a(this.f37883f);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull OneTimeTaskAdapter oneTimeTaskAdapter, ItemNoviceTaskBinding binding) {
            super(oneTimeTaskAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37881h = oneTimeTaskAdapter;
            this.f37880g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemNoviceTaskBinding c() {
            return this.f37880g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @SuppressLint({"SetTextI18n"})
        /* renamed from: k */
        public void f(int i10, @NotNull Task item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ImageView imageView = c().f40528e;
            if (item.isHotVisible()) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            imageView.setVisibility(i11);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = c().f40527d;
            FrescoConfig frescoConfig = new FrescoConfig();
            OneTimeTaskAdapter oneTimeTaskAdapter = this.f37881h;
            frescoConfig.setUrl(item.getIcon());
            frescoConfig.setOssWidth(oneTimeTaskAdapter.f37878o);
            frescoConfig.setOssHeight(oneTimeTaskAdapter.f37878o);
            frescoConfig.setResizeWidth(oneTimeTaskAdapter.f37878o);
            frescoConfig.setResizeHeight(oneTimeTaskAdapter.f37878o);
            frescoConfig.setCircleCrop(true);
            frescoConfig.setPlaceholderResId(item.getTaskDefaultResIcon());
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            c().f40529f.setText(item.getTaskName());
            if (item.acceptable()) {
                c().f40526c.setBackgroundResource(R$drawable.bg_unity_task_button);
                c().f40525b.setTextColor(c().f40525b.getContext().getColor(R$color.color_rewards_fragment_unity_task_btn));
            } else {
                c().f40526c.setBackgroundResource(R$drawable.bg_task_button);
                c().f40525b.setTextColor(c().f40525b.getContext().getColor(R$color.v_light));
            }
            BaseTextView baseTextView = c().f40525b;
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            sb2.append(item.getTaskBonus());
            baseTextView.setText(sb2.toString());
            c().f40526c.setOnClickListener(new a(this.f37881h, item));
        }
    }

    public OneTimeTaskAdapter() {
        super(0L, 1, null);
        this.f37878o = jk.g.a(40.0f);
    }

    @Nullable
    public final b F() {
        return this.f37879p;
    }

    public final void G(@Nullable b bVar) {
        this.f37879p = bVar;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "OneTimeTaskAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<Task>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new c(this, (ItemNoviceTaskBinding) s(parent, R$layout.item_novice_task));
    }
}
