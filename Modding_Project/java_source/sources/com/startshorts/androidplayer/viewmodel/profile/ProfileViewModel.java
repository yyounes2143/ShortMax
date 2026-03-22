package com.startshorts.androidplayer.viewmodel.profile;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.profile.ProfileRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.profile.ProfileViewModel;
import com.startshorts.androidplayer.viewmodel.profile.e;
import com.startshorts.androidplayer.viewmodel.profile.f;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProfileViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ProfileViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f48971g = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48972e = kotlin.c.b(new Function0() { // from class: zk.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData F;
            F = ProfileViewModel.F();
            return F;
        }
    });

    /* renamed from: f  reason: collision with root package name */
    private boolean f48973f;

    /* compiled from: ProfileViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void E(Context context) {
        o.b(D(), new f.a(ProfileRepo.f44320a.g(context)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData F() {
        return new MutableLiveData();
    }

    private final void H() {
        if (this.f48973f) {
            return;
        }
        this.f48973f = true;
        BaseViewModel.j(this, "queryQueryTodayBonusTotal", false, new ProfileViewModel$queryQueryTodayBonusTotal$1(this, null), new Function1() { // from class: zk.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit I;
                I = ProfileViewModel.I(ProfileViewModel.this, (String) obj);
                return I;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(ProfileViewModel profileViewModel, String str) {
        profileViewModel.f48973f = false;
        return Unit.f60915a;
    }

    @NotNull
    public final MutableLiveData<f> D() {
        return (MutableLiveData) this.f48972e.getValue();
    }

    public final void G(@NotNull e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.a) {
            E(((e.a) intent).a());
        } else if (Intrinsics.areEqual(intent, e.b.f48981a)) {
            H();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "ProfileViewModel";
    }
}
