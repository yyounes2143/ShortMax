package com.startshorts.androidplayer.viewmodel.mylist;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.WatchHistoryViewModel;
import com.startshorts.androidplayer.viewmodel.mylist.d;
import java.util.List;
import jk.z;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: WatchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WatchHistoryViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f48866g = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private boolean f48867e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f48868f = kotlin.c.b(new Function0() { // from class: xk.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData I;
            I = WatchHistoryViewModel.I();
            return I;
        }
    });

    /* compiled from: WatchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r F(Context context, List<Long> list) {
        return BaseViewModel.i(this, "deleteWatchHistories", false, new WatchHistoryViewModel$deleteWatchHistories$1(context, list, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(ResponseException responseException) {
        this.f48867e = false;
        x(responseException);
        EventManager.f42463a.m0(responseException, "recently");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData I() {
        return new MutableLiveData();
    }

    private final void K(long j10, int i10) {
        if (this.f48867e) {
            return;
        }
        this.f48867e = true;
        BaseViewModel.j(this, "queryWatchHistories", false, new WatchHistoryViewModel$queryWatchHistories$1(j10, i10, this, null), new Function1() { // from class: xk.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L;
                L = WatchHistoryViewModel.L(WatchHistoryViewModel.this, (String) obj);
                return L;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(WatchHistoryViewModel watchHistoryViewModel, String str) {
        watchHistoryViewModel.H(z.a(new Throwable(str)));
        return Unit.f60915a;
    }

    private final void M(long j10, int i10) {
        if (this.f48867e) {
            return;
        }
        this.f48867e = true;
        BaseViewModel.j(this, "queryWatchHistories", false, new WatchHistoryViewModel$queryWatchHistoriesSimple$1(j10, i10, this, null), new Function1() { // from class: xk.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N;
                N = WatchHistoryViewModel.N(WatchHistoryViewModel.this, (String) obj);
                return N;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(WatchHistoryViewModel watchHistoryViewModel, String str) {
        watchHistoryViewModel.H(z.a(new Throwable(str)));
        return Unit.f60915a;
    }

    @NotNull
    public final MutableLiveData<e> G() {
        return (MutableLiveData) this.f48868f.getValue();
    }

    public final void J(@NotNull d intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof d.c) {
            d.c cVar = (d.c) intent;
            M(cVar.a(), cVar.b());
        } else if (intent instanceof d.b) {
            d.b bVar = (d.b) intent;
            K(bVar.a(), bVar.b());
        } else if (intent instanceof d.a) {
            d.a aVar = (d.a) intent;
            F(aVar.a(), aVar.b());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "WatchHistoryViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        this.f48867e = false;
        super.w();
    }
}
