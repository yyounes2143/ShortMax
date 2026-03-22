package com.startshorts.androidplayer.ui.activity.download;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import com.startshorts.androidplayer.ui.activity.download.DownloadManagerModel;
import com.startshorts.androidplayer.ui.activity.download.c;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadManagerModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadManagerModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f45133g = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f45134e = kotlin.c.b(new Function0() { // from class: uh.e0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData E;
            E = DownloadManagerModel.E();
            return E;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<DownloadManagerItem> f45135f = new ArrayList();

    /* compiled from: DownloadManagerModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void D() {
        gt.g.d(ViewModelKt.getViewModelScope(this), null, null, new DownloadManagerModel$loadDramaList$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData E() {
        return new MutableLiveData();
    }

    @NotNull
    public final MutableLiveData<d> B() {
        return (MutableLiveData) this.f45134e.getValue();
    }

    @NotNull
    public final List<DownloadManagerItem> C() {
        return this.f45135f;
    }

    public final void F(@NotNull c intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof c.a) {
            D();
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void G() {
        List<DownloadManagerItem> B = DownloadEpisodeManager.f45066a.B();
        this.f45135f.clear();
        this.f45135f.addAll(B);
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SubsViewModel";
    }
}
