package com.startshorts.androidplayer.viewmodel.comingsoon;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.manager.redpoint.RedPointManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel;
import com.startshorts.androidplayer.viewmodel.comingsoon.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComingSoonViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48422f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48423e = c.b(new Function0() { // from class: sk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData E;
            E = ComingSoonViewModel.E();
            return E;
        }
    });

    /* compiled from: ComingSoonViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r B(String str, int i10) {
        return BaseViewModel.i(this, "checkShortsReservation", false, new ComingSoonViewModel$checkShortsReservation$1(str, i10, this, null), 2, null);
    }

    private final r D() {
        return BaseViewModel.i(this, "loadShortcutConfig", false, new ComingSoonViewModel$loadShortcutConfig$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData E() {
        return new MutableLiveData();
    }

    @NotNull
    public final MutableLiveData<b> C() {
        return (MutableLiveData) this.f48423e.getValue();
    }

    public final void F(@NotNull com.startshorts.androidplayer.viewmodel.comingsoon.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.b) {
            RedPointManager.f42937a.c();
        } else if (intent instanceof a.C0655a) {
            a.C0655a c0655a = (a.C0655a) intent;
            B(c0655a.a(), c0655a.b());
        } else if (intent instanceof a.c) {
            D();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "ComingSoonViewModel";
    }
}
