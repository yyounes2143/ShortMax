package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseUnlockEpisodeDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseUnlockEpisodeDialog<VDB extends ViewDataBinding> extends BottomSheetListFragment<UnlockEpisodeMethod, VDB> {

    /* compiled from: BaseUnlockEpisodeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {

        /* compiled from: BaseUnlockEpisodeDialog.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0642a {
            public static /* synthetic */ void a(a aVar, boolean z10, boolean z11, UnlockEpisodeAdMethod unlockEpisodeAdMethod, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 4) != 0) {
                        unlockEpisodeAdMethod = null;
                    }
                    aVar.c(z10, z11, unlockEpisodeAdMethod);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onShowAdRetention");
            }
        }

        void a(boolean z10);

        void b(@Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod);

        void c(boolean z10, boolean z11, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod);

        void d();

        void e(@NotNull SubsSku subsSku, boolean z10);

        void f(@NotNull CoinSku coinSku, boolean z10);
    }
}
