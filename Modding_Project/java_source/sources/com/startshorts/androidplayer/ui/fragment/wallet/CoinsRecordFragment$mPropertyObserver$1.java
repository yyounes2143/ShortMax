package com.startshorts.androidplayer.ui.fragment.wallet;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.fragment.wallet.CoinsRecordFragment;
import com.startshorts.androidplayer.ui.fragment.wallet.CoinsRecordFragment$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: CoinsRecordFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CoinsRecordFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ CoinsRecordFragment f46951a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoinsRecordFragment$mPropertyObserver$1(CoinsRecordFragment coinsRecordFragment) {
        this.f46951a = coinsRecordFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(CoinsRecordFragment coinsRecordFragment) {
        coinsRecordFragment.R();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        CoinsRecordFragment coinsRecordFragment = this.f46951a;
        coinsRecordFragment.f("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 == 2) {
            h0 h0Var = h0.f51735a;
            final CoinsRecordFragment coinsRecordFragment2 = this.f46951a;
            h0Var.e(new Runnable() { // from class: aj.n
                @Override // java.lang.Runnable
                public final void run() {
                    CoinsRecordFragment$mPropertyObserver$1.b(CoinsRecordFragment.this);
                }
            });
        }
    }
}
