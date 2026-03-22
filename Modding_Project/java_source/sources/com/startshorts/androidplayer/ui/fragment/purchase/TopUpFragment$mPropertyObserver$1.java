package com.startshorts.androidplayer.ui.fragment.purchase;

import androidx.databinding.Observable;
import kotlin.Metadata;
/* compiled from: TopUpFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TopUpFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ TopUpFragment f46491a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TopUpFragment$mPropertyObserver$1(TopUpFragment topUpFragment) {
        this.f46491a = topUpFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(TopUpFragment topUpFragment) {
        topUpFragment.D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TopUpFragment topUpFragment) {
        topUpFragment.C1();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        TopUpFragment topUpFragment = this.f46491a;
        topUpFragment.f("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 2) {
                fk.h0 h0Var = fk.h0.f51735a;
                final TopUpFragment topUpFragment2 = this.f46491a;
                h0Var.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopUpFragment$mPropertyObserver$1.c(TopUpFragment.this);
                    }
                });
                return;
            }
            return;
        }
        fk.h0 h0Var2 = fk.h0.f51735a;
        final TopUpFragment topUpFragment3 = this.f46491a;
        h0Var2.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.i0
            @Override // java.lang.Runnable
            public final void run() {
                TopUpFragment$mPropertyObserver$1.d(TopUpFragment.this);
            }
        });
    }
}
