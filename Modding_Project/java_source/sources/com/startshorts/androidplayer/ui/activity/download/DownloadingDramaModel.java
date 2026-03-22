package com.startshorts.androidplayer.ui.activity.download;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.ui.activity.download.DownloadingDramaModel;
import com.startshorts.androidplayer.ui.activity.download.g;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadingDramaModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadingDramaModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadingDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1755#2,3:67\n*S KotlinDebug\n*F\n+ 1 DownloadingDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel\n*L\n47#1:67,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadingDramaModel extends BaseViewModel {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f45171h = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f45172e = kotlin.c.b(new Function0() { // from class: uh.h1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData G;
            G = DownloadingDramaModel.G();
            return G;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<DownloadingDramaInfo> f45173f = new ArrayList();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<Boolean> f45174g = new MutableLiveData<>(Boolean.FALSE);

    /* compiled from: DownloadingDramaModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void F(int i10) {
        gt.g.d(ViewModelKt.getViewModelScope(this), null, null, new DownloadingDramaModel$loadDramaList$1(i10, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData G() {
        return new MutableLiveData();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B() {
        /*
            r7 = this;
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r0 = r7.f45174g
            java.util.List<com.startshorts.androidplayer.bean.download.DownloadingDramaInfo> r1 = r7.f45173f
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            boolean r2 = r1 instanceof java.util.Collection
            r3 = 0
            if (r2 == 0) goto L15
            r2 = r1
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L15
            goto L46
        L15:
            java.util.Iterator r1 = r1.iterator()
        L19:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L46
            java.lang.Object r2 = r1.next()
            com.startshorts.androidplayer.bean.download.DownloadingDramaInfo r2 = (com.startshorts.androidplayer.bean.download.DownloadingDramaInfo) r2
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r4 = r2.getDownloadInfo()
            int r4 = r4.getDownloadState()
            r5 = 2
            r6 = 1
            if (r4 == r5) goto L45
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r4 = r2.getDownloadInfo()
            int r4 = r4.getDownloadState()
            if (r4 == r6) goto L45
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r2 = r2.getDownloadInfo()
            int r2 = r2.getDownloadState()
            if (r2 != 0) goto L19
        L45:
            r3 = r6
        L46:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r3)
            r0.setValue(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.download.DownloadingDramaModel.B():void");
    }

    @NotNull
    public final List<DownloadingDramaInfo> C() {
        return this.f45173f;
    }

    @NotNull
    public final MutableLiveData<h> D() {
        return (MutableLiveData) this.f45172e.getValue();
    }

    @NotNull
    public final MutableLiveData<Boolean> E() {
        return this.f45174g;
    }

    public final void H(@NotNull g intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof g.a) {
            F(((g.a) intent).a());
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SubsViewModel";
    }
}
