package com.startshorts.androidplayer.viewmodel.search;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.search.a;
import com.startshorts.androidplayer.viewmodel.search.b;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SearchHistoryViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SearchHistoryViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f49279f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<b> f49280e = new MutableLiveData<>(new b.C0686b(CollectionsKt.n()));

    /* compiled from: SearchHistoryViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @NotNull
    public final MutableLiveData<b> A() {
        return this.f49280e;
    }

    public final void B(@NotNull com.startshorts.androidplayer.viewmodel.search.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual(intent, a.d.f49311a)) {
            o.b(this.f49280e, b.a.f49312a);
            Unit unit = Unit.f60915a;
        } else if (Intrinsics.areEqual(intent, a.c.f49310a)) {
            BaseViewModel.i(this, "getSearchHistory", false, new SearchHistoryViewModel$process$1(this, null), 2, null);
        } else if (Intrinsics.areEqual(intent, a.b.f49309a)) {
            BaseViewModel.i(this, "clearHistory", false, new SearchHistoryViewModel$process$2(this, null), 2, null);
        } else if (intent instanceof a.C0685a) {
            BaseViewModel.i(this, "addHistory", false, new SearchHistoryViewModel$process$3(intent, null), 2, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SearchHistoryViewModel";
    }
}
