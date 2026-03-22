package com.startshorts.androidplayer.ui.dialog.immersion;

import androidx.databinding.Observable;
import fk.h0;
import kotlin.Metadata;
/* compiled from: TopUpDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TopUpDialog$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ TopUpDialog f45546a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TopUpDialog$mPropertyObserver$1(TopUpDialog topUpDialog) {
        this.f45546a = topUpDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(TopUpDialog topUpDialog) {
        topUpDialog.Z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TopUpDialog topUpDialog) {
        topUpDialog.Y0();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        TopUpDialog topUpDialog = this.f45546a;
        topUpDialog.i("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 2) {
                h0 h0Var = h0.f51735a;
                final TopUpDialog topUpDialog2 = this.f45546a;
                h0Var.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopUpDialog$mPropertyObserver$1.c(TopUpDialog.this);
                    }
                });
                return;
            }
            return;
        }
        h0 h0Var2 = h0.f51735a;
        final TopUpDialog topUpDialog3 = this.f45546a;
        h0Var2.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.m
            @Override // java.lang.Runnable
            public final void run() {
                TopUpDialog$mPropertyObserver$1.d(TopUpDialog.this);
            }
        });
    }
}
