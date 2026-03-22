package com.startshorts.androidplayer.viewmodel.profile;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.profile.LanguageViewModel;
import com.startshorts.androidplayer.viewmodel.profile.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: LanguageViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LanguageViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48963f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48964e = kotlin.c.b(new Function0() { // from class: zk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData D;
            D = LanguageViewModel.D();
            return D;
        }
    });

    /* compiled from: LanguageViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r C(Context context) {
        return BaseViewModel.i(this, "loadAppLanguages", false, new LanguageViewModel$loadAppLanguages$1(context, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData D() {
        return new MutableLiveData();
    }

    private final r F(AppLanguage appLanguage) {
        return BaseViewModel.i(this, "updateAppLanguage", false, new LanguageViewModel$updateAppLanguage$1(appLanguage, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<b> B() {
        return (MutableLiveData) this.f48964e.getValue();
    }

    public final void E(@NotNull com.startshorts.androidplayer.viewmodel.profile.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0673a) {
            C(((a.C0673a) intent).a());
        } else if (intent instanceof a.b) {
            F(((a.b) intent).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "LanguageViewModel";
    }
}
