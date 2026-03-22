package com.startshorts.androidplayer.ui.fragment.wallet;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.fragment.wallet.BonusRecordFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.BonusRecordFragment$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: BonusRecordFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BonusRecordFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BonusRecordFragment f46949a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BonusRecordFragment$mPropertyObserver$1(BonusRecordFragment bonusRecordFragment) {
        this.f46949a = bonusRecordFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(BonusRecordFragment bonusRecordFragment) {
        bonusRecordFragment.R();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        BonusRecordFragment bonusRecordFragment = this.f46949a;
        bonusRecordFragment.f("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 == 1) {
            h0 h0Var = h0.f51735a;
            final BonusRecordFragment bonusRecordFragment2 = this.f46949a;
            h0Var.e(new Runnable() { // from class: aj.j
                @Override // java.lang.Runnable
                public final void run() {
                    BonusRecordFragment$mPropertyObserver$1.b(BonusRecordFragment.this);
                }
            });
        }
    }
}
