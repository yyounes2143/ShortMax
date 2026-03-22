package com.startshorts.androidplayer.viewmodel.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.discover.e;
import com.startshorts.androidplayer.viewmodel.discover.f;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverMoreViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscoverMoreViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48457f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<f> f48458e = new MutableLiveData<>(f.b.f48525a);

    /* compiled from: DiscoverMoreViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final r B(ModuleInfo moduleInfo, String str) {
        return BaseViewModel.i(this, "loadMoreEpisodes", false, new DiscoverMoreViewModel$loadMoreEpisodes$1(moduleInfo, str, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<f> A() {
        return this.f48458e;
    }

    public final void C(@NotNull e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.a) {
            e.a aVar = (e.a) intent;
            B(aVar.b(), aVar.a());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "DiscoverMoreViewModel";
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void x(@NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        o.b(this.f48458e, new f.a(p(throwable)));
    }
}
