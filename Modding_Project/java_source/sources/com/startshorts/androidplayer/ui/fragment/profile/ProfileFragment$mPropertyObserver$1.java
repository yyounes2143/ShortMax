package com.startshorts.androidplayer.ui.fragment.profile;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment;
import com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment$mPropertyObserver$1;
import fk.h0;
import kotlin.Metadata;
/* compiled from: ProfileFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ProfileFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ProfileFragment f46413a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProfileFragment$mPropertyObserver$1(ProfileFragment profileFragment) {
        this.f46413a = profileFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ProfileFragment profileFragment) {
        profileFragment.g1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ProfileFragment profileFragment) {
        profileFragment.f1();
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        ProfileFragment profileFragment = this.f46413a;
        profileFragment.f("onPropertyChanged -> propertyId(" + i10 + ')');
        if (i10 != 1) {
            if (i10 == 2) {
                h0 h0Var = h0.f51735a;
                final ProfileFragment profileFragment2 = this.f46413a;
                h0Var.e(new Runnable() { // from class: si.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileFragment$mPropertyObserver$1.c(ProfileFragment.this);
                    }
                });
                return;
            }
            return;
        }
        h0 h0Var2 = h0.f51735a;
        final ProfileFragment profileFragment3 = this.f46413a;
        h0Var2.e(new Runnable() { // from class: si.l
            @Override // java.lang.Runnable
            public final void run() {
                ProfileFragment$mPropertyObserver$1.d(ProfileFragment.this);
            }
        });
    }
}
