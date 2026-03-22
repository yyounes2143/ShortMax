package com.startshorts.androidplayer.ui.activity.download;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import com.startshorts.androidplayer.ui.activity.download.DownloadedDramaModel;
import com.startshorts.androidplayer.ui.activity.download.e;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadedDramaModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadedDramaModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1755#2,3:94\n1010#2,2:97\n1#3:99\n*S KotlinDebug\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel\n*L\n63#1:94,3\n67#1:97,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadedDramaModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f45152h = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private int f45154f;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f45153e = kotlin.c.b(new Function0() { // from class: uh.u0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData H;
            H = DownloadedDramaModel.H();
            return H;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<DownloadedDramaInfo> f45155g = new ArrayList();

    /* compiled from: DownloadedDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel\n*L\n1#1,102:1\n67#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadedDramaInfo) t10).getDownloadInfo().getDramaNum()), Integer.valueOf(((DownloadedDramaInfo) t11).getDownloadInfo().getDramaNum()));
        }
    }

    private final void G(int i10) {
        this.f45154f = i10;
        gt.g.d(ViewModelKt.getViewModelScope(this), null, null, new DownloadedDramaModel$loadDramaList$1(i10, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData H() {
        return new MutableLiveData();
    }

    public final boolean B(@NotNull DownloadTaskInfo task) {
        Intrinsics.checkNotNullParameter(task, "task");
        List<DownloadedDramaInfo> list = this.f45155g;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (DownloadedDramaInfo downloadedDramaInfo : list) {
                if (Intrinsics.areEqual(downloadedDramaInfo.getDownloadInfo().getCacheKey(), task.getCacheKey())) {
                    return false;
                }
            }
        }
        this.f45155g.add(new DownloadedDramaInfo(task));
        List<DownloadedDramaInfo> list2 = this.f45155g;
        if (list2.size() > 1) {
            CollectionsKt.D(list2, new b());
        }
        return true;
    }

    public final long C() {
        long downloadedSize;
        long j10 = 0;
        for (DownloadedDramaInfo downloadedDramaInfo : this.f45155g) {
            if (downloadedDramaInfo.getDownloadInfo().getDownloadState() != 6) {
                if (downloadedDramaInfo.getDownloadInfo().getDownloadState() == 4) {
                    downloadedSize = downloadedDramaInfo.getDownloadInfo().getFileSize();
                } else {
                    downloadedSize = downloadedDramaInfo.getDownloadInfo().getDownloadedSize();
                }
                j10 += downloadedSize;
            }
        }
        return j10;
    }

    @NotNull
    public final List<DownloadedDramaInfo> D() {
        return this.f45155g;
    }

    @NotNull
    public final MutableLiveData<f> E() {
        return (MutableLiveData) this.f45153e.getValue();
    }

    public final int F() {
        return this.f45154f;
    }

    public final void I(@NotNull e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.a) {
            G(((e.a) intent).a());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void J(@NotNull List<DownloadTaskInfo> tasks) {
        Object obj;
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        ArrayList arrayList = new ArrayList();
        for (DownloadTaskInfo downloadTaskInfo : tasks) {
            Iterator<T> it = this.f45155g.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((DownloadedDramaInfo) obj).getDownloadInfo().getCacheKey(), downloadTaskInfo.getCacheKey())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            DownloadedDramaInfo downloadedDramaInfo = (DownloadedDramaInfo) obj;
            if (downloadedDramaInfo != null) {
                arrayList.add(downloadedDramaInfo);
            }
        }
        this.f45155g.removeAll(arrayList);
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SubsViewModel";
    }
}
