package com.startshorts.androidplayer.viewmodel.settings;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel;
import com.startshorts.androidplayer.viewmodel.settings.a;
import com.startshorts.androidplayer.viewmodel.settings.b;
import gh.d;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: SettingsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SettingsViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f49341f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f49342e = c.b(new Function0() { // from class: gl.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData F;
            F = SettingsViewModel.F();
            return F;
        }
    });

    /* compiled from: SettingsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r B(Context context) {
        return BaseViewModel.i(this, "deleteAccount", false, new SettingsViewModel$deleteAccount$1(context, this, null), 2, null);
    }

    private final void D(Context context) {
        o.b(C(), new b.c(d.f52359a.d(context)));
    }

    private final r E(Context context) {
        return BaseViewModel.i(this, "logout", false, new SettingsViewModel$logout$1(context, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData F() {
        return new MutableLiveData();
    }

    private final r H(Context context, boolean z10) {
        return BaseViewModel.i(this, "updateAutoUnlockEpisode(" + z10 + ')', false, new SettingsViewModel$updateAutoUnlockEpisode$1(context, z10, this, null), 2, null);
    }

    private final void I(boolean z10) {
        String str;
        ud.b.f68412a.w4(z10);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (z10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        bundle.putString("type", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "pip_mode_type", bundle, 0L, 4, null);
        o.b(C(), new b.e(z10));
    }

    @NotNull
    public final MutableLiveData<b> C() {
        return (MutableLiveData) this.f49342e.getValue();
    }

    public final void G(@NotNull com.startshorts.androidplayer.viewmodel.settings.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.b) {
            D(((a.b) intent).a());
            Unit unit = Unit.f60915a;
        } else if (intent instanceof a.C0689a) {
            B(((a.C0689a) intent).a());
        } else if (intent instanceof a.c) {
            E(((a.c) intent).a());
        } else if (intent instanceof a.d) {
            a.d dVar = (a.d) intent;
            H(dVar.a(), dVar.b());
        } else if (intent instanceof a.e) {
            I(((a.e) intent).a());
            Unit unit2 = Unit.f60915a;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SettingsViewModel";
    }
}
