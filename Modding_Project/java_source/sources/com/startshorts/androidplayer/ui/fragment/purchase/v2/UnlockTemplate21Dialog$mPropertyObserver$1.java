package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate21Dialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate21Dialog$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: UnlockTemplate21Dialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnlockTemplate21Dialog$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ UnlockTemplate21Dialog f46615a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnlockTemplate21Dialog$mPropertyObserver$1(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        this.f46615a = unlockTemplate21Dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        unlockTemplate21Dialog.X0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        unlockTemplate21Dialog.V0();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        UnlockTemplate21Dialog unlockTemplate21Dialog = this.f46615a;
        unlockTemplate21Dialog.i("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 2) {
                h0 h0Var = h0.f51735a;
                final UnlockTemplate21Dialog unlockTemplate21Dialog2 = this.f46615a;
                h0Var.e(new Runnable() { // from class: ti.o0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate21Dialog$mPropertyObserver$1.c(UnlockTemplate21Dialog.this);
                    }
                });
                return;
            }
            return;
        }
        h0 h0Var2 = h0.f51735a;
        final UnlockTemplate21Dialog unlockTemplate21Dialog3 = this.f46615a;
        h0Var2.e(new Runnable() { // from class: ti.p0
            @Override // java.lang.Runnable
            public final void run() {
                UnlockTemplate21Dialog$mPropertyObserver$1.d(UnlockTemplate21Dialog.this);
            }
        });
    }
}
