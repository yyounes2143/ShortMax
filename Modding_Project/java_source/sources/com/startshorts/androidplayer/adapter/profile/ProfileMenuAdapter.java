package com.startshorts.androidplayer.adapter.profile;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.databinding.ItemProfileMenuNormalBinding;
import com.startshorts.androidplayer.databinding.ItemProfileMenuRewardsBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProfileMenuAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ProfileMenuAdapter extends BaseAdapter<ProfileMenu> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f37765p = new a(null);

    /* renamed from: o  reason: collision with root package name */
    private int f37766o;

    /* compiled from: ProfileMenuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileMenuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<ProfileMenu>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemProfileMenuNormalBinding f37767g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ProfileMenuAdapter f37768h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull ProfileMenuAdapter profileMenuAdapter, ItemProfileMenuNormalBinding binding) {
            super(profileMenuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37768h = profileMenuAdapter;
            this.f37767g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemProfileMenuNormalBinding c() {
            return this.f37767g;
        }
    }

    /* compiled from: ProfileMenuAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<ProfileMenu>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemProfileMenuRewardsBinding f37769g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ProfileMenuAdapter f37770h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ProfileMenuAdapter profileMenuAdapter, ItemProfileMenuRewardsBinding binding) {
            super(profileMenuAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37770h = profileMenuAdapter;
            this.f37769g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemProfileMenuRewardsBinding c() {
            return this.f37769g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ProfileMenu item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (this.f37770h.E() == 0) {
                c().f40606c.setText(R$string.profile_fragment_reward_tip);
                return;
            }
            Context context = c().getRoot().getContext();
            String abTestValue = ABTestFactory.f42224a.k1().abTestValue();
            if (Intrinsics.areEqual(abTestValue, "1")) {
                int applyDimension = (int) TypedValue.applyDimension(1, 18.0f, context.getResources().getDisplayMetrics());
                BaseTextView baseTextView = c().f40606c;
                Drawable drawable = ContextCompat.getDrawable(context, R$drawable.ic_coin_discover_reward);
                if (drawable != null) {
                    drawable.setBounds(0, 2, applyDimension, applyDimension);
                }
                baseTextView.setCompoundDrawablesRelative(drawable, null, null, null);
                c().f40606c.setText(context.getString(R$string.sign_in_success_dialog_bonus, String.valueOf(this.f37770h.E())));
            } else if (Intrinsics.areEqual(abTestValue, "2")) {
                c().f40606c.setCompoundDrawablesRelative(null, null, null, null);
                c().f40606c.setText(context.getString(R$string.profile_fragment_reward_tip2, String.valueOf(this.f37770h.E())));
            }
        }
    }

    public ProfileMenuAdapter() {
        super(0L, 1, null);
    }

    public final int E() {
        return this.f37766o;
    }

    public final void F(int i10) {
        this.f37766o = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        ProfileMenu item = getItem(i10);
        if (item != null) {
            return item.getType();
        }
        return 0;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "ProfileMenuAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<ProfileMenu>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 1) {
            return new c(this, (ItemProfileMenuRewardsBinding) s(parent, R$layout.item_profile_menu_rewards));
        }
        return new b(this, (ItemProfileMenuNormalBinding) s(parent, R$layout.item_profile_menu_normal));
    }
}
