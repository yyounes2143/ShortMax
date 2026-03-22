package com.startshorts.androidplayer.viewmodel.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.discover.c;
import com.startshorts.androidplayer.viewmodel.discover.d;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscoverMoreCategoryFilterViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48447f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<d> f48448e = new MutableLiveData<>(d.b.f48519a);

    /* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r C(String str, String str2, int i10, int i11, String str3, Integer num) {
        return BaseViewModel.i(this, "queryCategoryEpisode", false, new DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1(i11, i10, str, str2, str3, num, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<d> A() {
        return this.f48448e;
    }

    public final void B(@NotNull c intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof c.a) {
            c.a aVar = (c.a) intent;
            C(aVar.a(), aVar.b(), aVar.d(), aVar.e(), aVar.c(), aVar.f());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "DiscoverMoreCategoryFilterViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void x(@NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        o.b(this.f48448e, new d.a(p(throwable)));
    }
}
