package com.startshorts.androidplayer.viewmodel.auth;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.viewmodel.auth.c;
import com.startshorts.androidplayer.viewmodel.auth.d;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EmailAuthViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EmailAuthViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48217f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<d> f48218e = new MutableLiveData<>(d.a.f48276a);

    /* compiled from: EmailAuthViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void C(String str) {
        o.b(this.f48218e, d.C0651d.f48279a);
        BaseViewModel.i(this, "sendOTP", false, new EmailAuthViewModel$sendOTP$1(str, this, null), 2, null);
    }

    private final void D(String str, String str2) {
        o.b(this.f48218e, d.g.f48283a);
        BaseViewModel.i(this, "verifyOTP", false, new EmailAuthViewModel$verifyOTP$1(this, str, str2, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<d> A() {
        return this.f48218e;
    }

    public final void B(@NotNull c intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof c.a) {
            C(((c.a) intent).a());
        } else if (intent instanceof c.b) {
            c.b bVar = (c.b) intent;
            D(bVar.a(), bVar.b());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "EmailAuthViewModel";
    }
}
