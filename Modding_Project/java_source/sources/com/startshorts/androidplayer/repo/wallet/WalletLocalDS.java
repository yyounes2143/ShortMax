package com.startshorts.androidplayer.repo.wallet;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.tab.WalletTab;
import com.startshorts.androidplayer.ui.fragment.wallet.BlackFridayCoinSkuFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.BonusRecordFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.CoinsRecordFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WalletLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWalletLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletLocalDS.kt\ncom/startshorts/androidplayer/repo/wallet/WalletLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1863#2,2:69\n*S KotlinDebug\n*F\n+ 1 WalletLocalDS.kt\ncom/startshorts/androidplayer/repo/wallet/WalletLocalDS\n*L\n41#1:69,2\n*E\n"})
/* loaded from: classes7.dex */
public final class WalletLocalDS {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private List<WeakReference<Fragment>> f44769a;

    @NotNull
    public final FragmentStateAdapter c(@NotNull final Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        List<WeakReference<Fragment>> list = this.f44769a;
        if (list != null) {
            list.clear();
        }
        final ArrayList<Class> arrayList = new ArrayList();
        arrayList.add(BlackFridayCoinSkuFragment.class);
        arrayList.add(CoinsRecordFragment.class);
        arrayList.add(BonusRecordFragment.class);
        final ArrayList arrayList2 = new ArrayList();
        for (Class cls : arrayList) {
            arrayList2.add(Long.valueOf(cls.hashCode()));
        }
        return new FragmentStateAdapter(fragment) { // from class: com.startshorts.androidplayer.repo.wallet.WalletLocalDS$loadFragmentAdapter$adapter$1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList2.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i10) {
                List list2;
                List list3;
                Object newInstance = arrayList.get(i10).newInstance();
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
                Fragment fragment2 = (Fragment) newInstance;
                list2 = this.f44769a;
                if (list2 == null) {
                    this.f44769a = new ArrayList();
                }
                list3 = this.f44769a;
                if (list3 != null) {
                    list3.add(new WeakReference(fragment2));
                }
                return fragment2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return arrayList.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i10) {
                return arrayList2.get(i10).longValue();
            }
        };
    }

    @NotNull
    public final List<WalletTab> d(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R$string.my_wallet_fragment_discount);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        WalletTab walletTab = new WalletTab(string);
        String string2 = context.getString(R$string.my_wallet_fragment_coins_record);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        WalletTab walletTab2 = new WalletTab(string2);
        String string3 = context.getString(R$string.my_wallet_fragment_bonus_record);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        List<WalletTab> t10 = CollectionsKt.t(walletTab, walletTab2, new WalletTab(string3));
        if (i10 >= 0 && i10 < t10.size()) {
            t10.get(i10).setSelected(true);
        }
        return t10;
    }
}
