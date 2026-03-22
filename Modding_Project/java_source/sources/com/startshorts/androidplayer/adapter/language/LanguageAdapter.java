package com.startshorts.androidplayer.adapter.language;

import android.view.ViewGroup;
import androidx.databinding.ViewStubProxy;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.databinding.ItemAppLanguageBinding;
import fk.u;
import jk.e0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LanguageAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LanguageAdapter extends SelectableAdapter<AppLanguage> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f37697w = new a(null);

    /* compiled from: LanguageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LanguageAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends SelectableAdapter<AppLanguage>.SelectableViewHolder {
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final ItemAppLanguageBinding f37698h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ LanguageAdapter f37699i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull LanguageAdapter languageAdapter, ItemAppLanguageBinding binding) {
            super(languageAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37699i = languageAdapter;
            this.f37698h = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemAppLanguageBinding c() {
            return this.f37698h;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull AppLanguage item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f39709a.setText(item.getLocalName());
            c().f39710b.setText(item.getDescName());
            if (item.isSelected()) {
                c().f39709a.setTextColor(u.f51776a.a(R$color.color_app_language_dialog_fragment_text_selected));
                ViewStubProxy selectedViewstub = c().f39711c;
                Intrinsics.checkNotNullExpressionValue(selectedViewstub, "selectedViewstub");
                e0.g(selectedViewstub);
                return;
            }
            c().f39709a.setTextColor(-1);
            ViewStubProxy selectedViewstub2 = c().f39711c;
            Intrinsics.checkNotNullExpressionValue(selectedViewstub2, "selectedViewstub");
            e0.b(selectedViewstub2, 0, 1, null);
        }
    }

    public LanguageAdapter() {
        super(0, 1, null);
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "LanguageAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter, com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<AppLanguage>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new b(this, (ItemAppLanguageBinding) s(parent, R$layout.item_app_language));
    }
}
