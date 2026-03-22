package com.startshorts.androidplayer.viewmodel.auth;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.viewmodel.auth.SwitchInfoViewModel;
import com.startshorts.androidplayer.viewmodel.auth.g;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import pk.e;
/* compiled from: SwitchViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SwitchInfoViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48258f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48259e = kotlin.c.b(new Function0() { // from class: pk.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData C;
            C = SwitchInfoViewModel.C();
            return C;
        }
    });

    /* compiled from: SwitchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData C() {
        return new MutableLiveData();
    }

    private final r E() {
        return BaseViewModel.i(this, "querySwitchInfoList", false, new SwitchInfoViewModel$querySwitchInfoList$1(this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<g> B() {
        return (MutableLiveData) this.f48259e.getValue();
    }

    public final void D(@NotNull pk.e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.b) {
            E();
        } else if (intent instanceof e.c) {
            o.b(B(), g.d.f48309a);
        } else if (intent instanceof e.a) {
            o.b(B(), g.a.f48306a);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SwitchInfoViewModel";
    }
}
