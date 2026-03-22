package com.startshorts.androidplayer.ui.activity.subs;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: SubsDetail2Activity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubsDetail2Activity$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ SubsDetail2Activity f45527a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubsDetail2Activity$mPropertyObserver$1(SubsDetail2Activity subsDetail2Activity) {
        this.f45527a = subsDetail2Activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(SubsDetail2Activity subsDetail2Activity) {
        subsDetail2Activity.T0();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        SubsDetail2Activity subsDetail2Activity = this.f45527a;
        subsDetail2Activity.l("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 == 7) {
            h0 h0Var = h0.f51735a;
            final SubsDetail2Activity subsDetail2Activity2 = this.f45527a;
            h0Var.e(new Runnable() { // from class: ci.s
                @Override // java.lang.Runnable
                public final void run() {
                    SubsDetail2Activity$mPropertyObserver$1.b(SubsDetail2Activity.this);
                }
            });
        }
    }
}
