package com.startshorts.androidplayer.ui.activity.immersion;

import android.view.View;
import androidx.databinding.Observable;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.manager.immersion.feature.k;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$mPropertyObserver$1;
import fk.h0;
import java.util.HashMap;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
/* compiled from: ImmersionActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n1#2:6801\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionActivity$mPropertyObserver$1 extends Observable.OnPropertyChangedCallback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ImmersionActivity f45348a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmersionActivity$mPropertyObserver$1(ImmersionActivity immersionActivity) {
        this.f45348a = immersionActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ImmersionActivity immersionActivity, k kVar) {
        immersionActivity.L8(kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ImmersionActivity immersionActivity) {
        View view;
        view = immersionActivity.N0;
        b0.d(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ImmersionActivity immersionActivity) {
        String str;
        immersionActivity.W6();
        str = immersionActivity.P0;
        if (str != null) {
            immersionActivity.M8(str, true);
        }
    }

    @Override // androidx.databinding.Observable.OnPropertyChangedCallback
    public void onPropertyChanged(Observable observable, int i10) {
        i iVar;
        if (i10 == 7) {
            if (AccountRepo.f43052a.z0()) {
                pf.k.f64864a.g();
                IImmersionFeature.MessageType messageType = IImmersionFeature.MessageType.USER_SUBSCRIBED;
                HashMap hashMap = new HashMap();
                hashMap.put("episode", this.f45348a.D5());
                final k kVar = new k(messageType, hashMap);
                if (this.f45348a.p()) {
                    iVar = this.f45348a.f45257e0;
                    ((List) iVar.getValue()).add(kVar);
                } else {
                    h0 h0Var = h0.f51735a;
                    final ImmersionActivity immersionActivity = this.f45348a;
                    h0Var.e(new Runnable() { // from class: yh.p2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImmersionActivity$mPropertyObserver$1.d(ImmersionActivity.this, kVar);
                        }
                    });
                }
                h0 h0Var2 = h0.f51735a;
                final ImmersionActivity immersionActivity2 = this.f45348a;
                h0Var2.e(new Runnable() { // from class: yh.q2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionActivity$mPropertyObserver$1.e(ImmersionActivity.this);
                    }
                });
                return;
            }
            h0 h0Var3 = h0.f51735a;
            final ImmersionActivity immersionActivity3 = this.f45348a;
            h0Var3.e(new Runnable() { // from class: yh.r2
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionActivity$mPropertyObserver$1.f(ImmersionActivity.this);
                }
            });
        }
    }
}
