package com.startshorts.androidplayer.adapter.settings;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import com.startshorts.androidplayer.databinding.ItemSettingsAutoUnlockEpisodeBinding;
import com.startshorts.androidplayer.databinding.ItemSettingsDividerLineBinding;
import com.startshorts.androidplayer.databinding.ItemSettingsNormalItemBinding;
import com.startshorts.androidplayer.databinding.ItemSettingsTitleBinding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SettingsAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SettingsAdapter extends BaseAdapter<AppSettings> {

    /* compiled from: SettingsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<AppSettings>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSettingsAutoUnlockEpisodeBinding f37999g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SettingsAdapter f38000h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull SettingsAdapter settingsAdapter, ItemSettingsAutoUnlockEpisodeBinding binding) {
            super(settingsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38000h = settingsAdapter;
            this.f37999g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSettingsAutoUnlockEpisodeBinding c() {
            return this.f37999g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull AppSettings item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            if (AccountRepo.f43052a.P()) {
                i11 = R$drawable.ic_switch_on;
            } else {
                i11 = R$drawable.ic_switch_off;
            }
            c().f40848a.setImageResource(i11);
        }
    }

    /* compiled from: SettingsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<AppSettings>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSettingsDividerLineBinding f38001g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SettingsAdapter f38002h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull SettingsAdapter settingsAdapter, ItemSettingsDividerLineBinding binding) {
            super(settingsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38002h = settingsAdapter;
            this.f38001g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSettingsDividerLineBinding c() {
            return this.f38001g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull AppSettings item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40855a.setContentDescription(this.itemView.getContext().getString(R$string.dividing_line, String.valueOf(i10)));
        }
    }

    /* compiled from: SettingsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<AppSettings>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSettingsNormalItemBinding f38003g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SettingsAdapter f38004h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull SettingsAdapter settingsAdapter, ItemSettingsNormalItemBinding binding) {
            super(settingsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38004h = settingsAdapter;
            this.f38003g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSettingsNormalItemBinding c() {
            return this.f38003g;
        }
    }

    /* compiled from: SettingsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<AppSettings>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSettingsAutoUnlockEpisodeBinding f38005g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SettingsAdapter f38006h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull SettingsAdapter settingsAdapter, ItemSettingsAutoUnlockEpisodeBinding binding) {
            super(settingsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38006h = settingsAdapter;
            this.f38005g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSettingsAutoUnlockEpisodeBinding c() {
            return this.f38005g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull AppSettings item) {
            Activity activity;
            boolean z10;
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            Context context = c().f40848a.getContext();
            if (context instanceof Activity) {
                activity = (Activity) context;
            } else {
                activity = null;
            }
            if (activity != null) {
                z10 = Settings.canDrawOverlays(activity);
            } else {
                z10 = false;
            }
            if (ud.b.f68412a.i1(z10)) {
                i11 = R$drawable.ic_switch_on;
            } else {
                i11 = R$drawable.ic_switch_off;
            }
            c().f40848a.setImageResource(i11);
        }
    }

    /* compiled from: SettingsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<AppSettings>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemSettingsTitleBinding f38007g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SettingsAdapter f38008h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull SettingsAdapter settingsAdapter, ItemSettingsTitleBinding binding) {
            super(settingsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38008h = settingsAdapter;
            this.f38007g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemSettingsTitleBinding c() {
            return this.f38007g;
        }
    }

    public SettingsAdapter() {
        super(0L, 1, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        AppSettings item = getItem(i10);
        if (item != null) {
            return item.getType();
        }
        throw new NullPointerException("item is null");
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<AppSettings>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != -2) {
            if (i10 != -1) {
                if (i10 != 2) {
                    if (i10 != 7) {
                        return new c(this, (ItemSettingsNormalItemBinding) s(parent, R$layout.item_settings_normal_item));
                    }
                    return new d(this, (ItemSettingsAutoUnlockEpisodeBinding) s(parent, R$layout.item_settings_auto_unlock_episode));
                }
                return new a(this, (ItemSettingsAutoUnlockEpisodeBinding) s(parent, R$layout.item_settings_auto_unlock_episode));
            }
            return new b(this, (ItemSettingsDividerLineBinding) s(parent, R$layout.item_settings_divider_line));
        }
        return new e(this, (ItemSettingsTitleBinding) s(parent, R$layout.item_settings_title));
    }
}
