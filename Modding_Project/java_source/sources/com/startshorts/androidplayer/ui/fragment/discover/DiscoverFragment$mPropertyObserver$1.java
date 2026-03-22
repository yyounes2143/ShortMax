package com.startshorts.androidplayer.ui.fragment.discover;

import androidx.databinding.Observable;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DiscoverFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscoverFragment$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ DiscoverFragment f45878a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DiscoverFragment$mPropertyObserver$1(DiscoverFragment discoverFragment) {
        this.f45878a = discoverFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getStyle() == 12) {
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        if (i10 == 7 && AccountRepo.f43052a.i1()) {
            this.f45878a.C2(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean b10;
                    b10 = DiscoverFragment$mPropertyObserver$1.b((DiscoverModule) obj);
                    return Boolean.valueOf(b10);
                }
            });
        }
    }
}
