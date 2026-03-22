package com.startshorts.androidplayer.ui.fragment.reward;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: RewardsFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardsFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RewardsFragment f46722a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardsFragment$mPropertyObserver$1(RewardsFragment rewardsFragment) {
        this.f46722a = rewardsFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(RewardsFragment rewardsFragment) {
        rewardsFragment.l2();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        RewardsFragment rewardsFragment = this.f46722a;
        rewardsFragment.f("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 7) {
                Ad2PayPresent.f42733a.v();
                return;
            }
            return;
        }
        h0 h0Var = h0.f51735a;
        final RewardsFragment rewardsFragment2 = this.f46722a;
        h0Var.e(new Runnable() { // from class: vi.x
            @Override // java.lang.Runnable
            public final void run() {
                RewardsFragment$mPropertyObserver$1.b(RewardsFragment.this);
            }
        });
    }
}
