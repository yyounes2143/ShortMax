package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate22Dialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate22Dialog$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: UnlockTemplate22Dialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnlockTemplate22Dialog$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ UnlockTemplate22Dialog f46644a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnlockTemplate22Dialog$mPropertyObserver$1(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        this.f46644a = unlockTemplate22Dialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        unlockTemplate22Dialog.T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        unlockTemplate22Dialog.T0();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        UnlockTemplate22Dialog unlockTemplate22Dialog = this.f46644a;
        unlockTemplate22Dialog.i("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 2) {
                h0 h0Var = h0.f51735a;
                final UnlockTemplate22Dialog unlockTemplate22Dialog2 = this.f46644a;
                h0Var.e(new Runnable() { // from class: ti.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate22Dialog$mPropertyObserver$1.c(UnlockTemplate22Dialog.this);
                    }
                });
                return;
            }
            return;
        }
        h0 h0Var2 = h0.f51735a;
        final UnlockTemplate22Dialog unlockTemplate22Dialog3 = this.f46644a;
        h0Var2.e(new Runnable() { // from class: ti.i1
            @Override // java.lang.Runnable
            public final void run() {
                UnlockTemplate22Dialog$mPropertyObserver$1.d(UnlockTemplate22Dialog.this);
            }
        });
    }
}
