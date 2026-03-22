package com.startshorts.androidplayer.viewmodel.wallet;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.wallet.WalletRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.wallet.WalletViewModel;
import com.startshorts.androidplayer.viewmodel.wallet.a;
import com.startshorts.androidplayer.viewmodel.wallet.b;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: WalletViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WalletViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f49468f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f49469e = c.b(new Function0() { // from class: kl.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData E;
            E = WalletViewModel.E();
            return E;
        }
    });

    /* compiled from: WalletViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void C(Fragment fragment) {
        o.b(B(), new b.a(WalletRepo.f44780a.e(fragment)));
    }

    private final void D(Context context, int i10) {
        o.b(B(), new b.C0697b(WalletRepo.f44780a.f(context, i10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData E() {
        return new MutableLiveData();
    }

    private final r G(int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryWalletRecords", false, new WalletViewModel$queryWalletRecords$1(i10, i11, i12, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<b> B() {
        return (MutableLiveData) this.f49469e.getValue();
    }

    public final void F(@NotNull com.startshorts.androidplayer.viewmodel.wallet.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            D(bVar.a(), bVar.b());
        } else if (intent instanceof a.C0696a) {
            C(((a.C0696a) intent).a());
        } else if (intent instanceof a.c) {
            a.c cVar = (a.c) intent;
            G(cVar.b(), cVar.c(), cVar.a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "WalletViewModel";
    }
}
