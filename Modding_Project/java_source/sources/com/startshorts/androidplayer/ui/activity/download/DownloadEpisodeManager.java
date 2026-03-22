package com.startshorts.androidplayer.ui.activity.download;

import android.os.SystemClock;
import androidx.lifecycle.MutableLiveData;
import au.l;
import com.ss.ttvideoengine.database.VideoModelDBManager;
import com.ss.ttvideoengine.download.DownloadTask;
import com.ss.ttvideoengine.download.DownloadURLTask;
import com.ss.ttvideoengine.download.Downloader;
import com.ss.ttvideoengine.download.IDownloaderListener;
import com.ss.ttvideoengine.utils.Error;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadManagerHeader;
import com.startshorts.androidplayer.bean.download.DownloadManagerItem;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.download.DownloadedDramaInfo;
import com.startshorts.androidplayer.bean.download.DownloadedManagerInfo;
import com.startshorts.androidplayer.bean.download.DownloadingDramaInfo;
import com.startshorts.androidplayer.bean.download.DownloadingManagerInfo;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.download.data.ShortDB;
import fk.u;
import gt.q0;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.h0;
import uh.s;
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,923:1\n1755#2,3:924\n1755#2,3:928\n774#2:932\n865#2,2:933\n1863#2,2:936\n1863#2,2:939\n1863#2,2:941\n1863#2,2:943\n1010#2,2:949\n774#2:951\n865#2,2:952\n1755#2,3:954\n1010#2,2:960\n774#2:962\n865#2,2:963\n216#3:927\n217#3:931\n216#3:935\n217#3:938\n216#3,2:945\n216#3,2:947\n216#3,2:958\n1#4:957\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n*L\n290#1:924,3\n427#1:928,3\n445#1:932\n445#1:933,2\n462#1:936,2\n501#1:939,2\n508#1:941,2\n547#1:943,2\n753#1:949,2\n755#1:951\n755#1:952,2\n769#1:954,3\n841#1:960,2\n847#1:962\n847#1:963,2\n421#1:927\n421#1:931\n457#1:935\n457#1:938\n551#1:945,2\n720#1:947,2\n826#1:958,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager {

    /* renamed from: g  reason: collision with root package name */
    private static boolean f45072g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static ShortTaskInfo f45073h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f45074i;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f45075j;

    /* renamed from: m  reason: collision with root package name */
    private static long f45078m;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DownloadEpisodeManager f45066a = new DownloadEpisodeManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<Integer, HashMap<String, DownloadTaskInfo>> f45067b = new HashMap<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<Integer, ShortTaskInfo> f45068c = new HashMap<>();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap<String, Pair<Integer, String>> f45069d = new HashMap<>();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final MutableLiveData<Long> f45070e = new MutableLiveData<>(0L);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static String f45071f = "";

    /* renamed from: k  reason: collision with root package name */
    private static boolean f45076k = true;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final HashMap<String, DownloadTask> f45077l = new HashMap<>();

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n*L\n1#1,102:1\n753#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadTaskInfo) t10).getDramaNum()), Integer.valueOf(((DownloadTaskInfo) t11).getDramaNum()));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager\n*L\n1#1,102:1\n841#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadTaskInfo) t10).getDramaNum()), Integer.valueOf(((DownloadTaskInfo) t11).getDramaNum()));
        }
    }

    private DownloadEpisodeManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A() {
        return Unit.f60915a;
    }

    private final List<DownloadTaskInfo> C(int i10) {
        ArrayList arrayList = new ArrayList();
        HashMap<String, DownloadTaskInfo> hashMap = f45067b.get(Integer.valueOf(i10));
        if (hashMap == null) {
            return arrayList;
        }
        for (Map.Entry<String, DownloadTaskInfo> entry : hashMap.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DownloadTaskInfo D(DownloadTask downloadTask) {
        String videoId;
        Pair<Integer, String> pair;
        HashMap<String, DownloadTaskInfo> hashMap;
        if (downloadTask == null || (videoId = downloadTask.getVideoId()) == null || (pair = f45069d.get(videoId)) == null || (hashMap = f45067b.get(pair.e())) == null) {
            return null;
        }
        return hashMap.get(pair.f());
    }

    private final DownloadTask E(DownloadTaskInfo downloadTaskInfo, boolean z10) {
        DownloadTask downloadTask = f45077l.get(downloadTaskInfo.getCacheKey());
        if (downloadTask == null) {
            if (!z10) {
                return null;
            }
            DownloadTask u10 = u(downloadTaskInfo);
            if (u10 == null) {
                s.b("短剧任务创建失败");
                return null;
            }
            s.b("短剧任务" + u10.getVideoId() + "发生了重建");
            return u10;
        }
        return downloadTask;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ DownloadTask F(DownloadEpisodeManager downloadEpisodeManager, DownloadTaskInfo downloadTaskInfo, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return downloadEpisodeManager.E(downloadTaskInfo, z10);
    }

    private final boolean O() {
        if (f45073h != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void U(DownloadEpisodeManager downloadEpisodeManager, List list, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        downloadEpisodeManager.T(list, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DownloadTaskInfo V(DownloadTaskInfo downloadTaskInfo) {
        DownloadTask E = E(downloadTaskInfo, true);
        f45069d.remove(downloadTaskInfo.getCacheKey());
        downloadTaskInfo.setDownloadState(6);
        if (E != null) {
            E.invalidateAndCancel();
        }
        s.b("删除任务:" + downloadTaskInfo.getCacheKey());
        return downloadTaskInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DownloadTaskInfo X(DownloadTaskInfo downloadTaskInfo) {
        if (downloadTaskInfo.getDownloadState() == 3 || downloadTaskInfo.getDownloadState() == 5) {
            downloadTaskInfo.setDownloadState(1);
        }
        return downloadTaskInfo;
    }

    private final void Z() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - f45078m <= 6000) {
            return;
        }
        f45078m = elapsedRealtime;
        u.f51776a.g(R$string.download_vip_expired_toast_desc, 0);
    }

    public static /* synthetic */ void b0(DownloadEpisodeManager downloadEpisodeManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        downloadEpisodeManager.a0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(ShortTaskInfo shortTaskInfo) {
        f45073h = shortTaskInfo;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        Integer num;
        s.b("map汇总：");
        Set<Integer> keySet = f45067b.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        for (Integer num2 : keySet) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("shortId:");
            sb2.append(num2.intValue());
            sb2.append(" has count:");
            HashMap<String, DownloadTaskInfo> hashMap = f45067b.get(num2);
            if (hashMap != null) {
                num = Integer.valueOf(hashMap.size());
            } else {
                num = null;
            }
            sb2.append(num);
            s.b(sb2.toString());
        }
        s.b("shortMap汇总：");
        for (Map.Entry<Integer, ShortTaskInfo> entry : f45068c.entrySet()) {
            s.b("shortId:" + entry.getKey().intValue() + " info:" + entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(DownloadTaskInfo downloadTaskInfo) {
        ShortTaskInfo shortTaskInfo = f45068c.get(Integer.valueOf(downloadTaskInfo.getShortPlayId()));
        if (shortTaskInfo == null) {
            return;
        }
        List<DownloadTaskInfo> C = C(downloadTaskInfo.getShortPlayId());
        boolean z10 = false;
        if (!(C instanceof Collection) || !C.isEmpty()) {
            Iterator<T> it = C.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((DownloadTaskInfo) it.next()).hasUnFinishJob()) {
                    z10 = true;
                    break;
                }
            }
        }
        if (shortTaskInfo.getHasUnfinishedJob() != z10) {
            s.b("当前的任务状态发生了改变");
            shortTaskInfo.setHasUnfinishedJob(z10);
            ShortDB.f45222a.c(shortTaskInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(DownloadTaskInfo downloadTaskInfo) {
        f45069d.put(downloadTaskInfo.getCacheKey(), new Pair<>(Integer.valueOf(downloadTaskInfo.getShortPlayId()), downloadTaskInfo.getDownloadSubKey()));
        downloadTaskInfo.getCacheKey();
        HashMap<Integer, HashMap<String, DownloadTaskInfo>> hashMap = f45067b;
        HashMap<String, DownloadTaskInfo> hashMap2 = hashMap.get(Integer.valueOf(downloadTaskInfo.getShortPlayId()));
        if (hashMap2 != null) {
            hashMap2.put(downloadTaskInfo.getDownloadSubKey(), downloadTaskInfo);
        } else {
            hashMap2 = null;
        }
        if (hashMap2 == null) {
            Integer valueOf = Integer.valueOf(downloadTaskInfo.getShortPlayId());
            HashMap<String, DownloadTaskInfo> hashMap3 = new HashMap<>();
            hashMap3.put(downloadTaskInfo.getDownloadSubKey(), downloadTaskInfo);
            hashMap.put(valueOf, hashMap3);
        }
    }

    private final DownloadTask u(DownloadTaskInfo downloadTaskInfo) {
        String cacheKey = downloadTaskInfo.getCacheKey();
        DownloadURLTask urlTask = Downloader.getInstance().urlTask(new String[]{downloadTaskInfo.getUrl()}, cacheKey, cacheKey);
        if (urlTask != null) {
            f45077l.put(downloadTaskInfo.getCacheKey(), urlTask);
        }
        return urlTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w() {
        f45073h = null;
        return Unit.f60915a;
    }

    private final void x(List<DownloadTaskInfo> list, Function0<Unit> function0, Function0<Unit> function02) {
        Object obj;
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((DownloadTaskInfo) obj).isDownloadAbleItem()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) obj;
        if (downloadTaskInfo != null) {
            function0.invoke();
            s.b("即将准备下载taskInfo" + downloadTaskInfo);
            DownloadTask F = F(this, downloadTaskInfo, false, 2, null);
            if (F != null && F.getState() == 5) {
                s.b("当前剧下载完成，但是状态以及不对");
                DownloadTask u10 = u(downloadTaskInfo);
                if (u10 != null) {
                    u10.resume();
                    return;
                }
                return;
            }
            s.b("继续下载");
            if (F != null) {
                F.resume();
                return;
            }
            return;
        }
        function02.invoke();
        s.b("当前剧下载没有了可以执行下载的剧");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void y(DownloadEpisodeManager downloadEpisodeManager, List list, Function0 function0, Function0 function02, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function0 = new Function0() { // from class: uh.q
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit z10;
                    z10 = DownloadEpisodeManager.z();
                    return z10;
                }
            };
        }
        if ((i10 & 4) != 0) {
            function02 = new Function0() { // from class: uh.r
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit A;
                    A = DownloadEpisodeManager.A();
                    return A;
                }
            };
        }
        downloadEpisodeManager.x(list, function0, function02);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z() {
        return Unit.f60915a;
    }

    @NotNull
    public final List<DownloadManagerItem> B() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        DownloadingManagerInfo downloadingManagerInfo = new DownloadingManagerInfo(new ArrayList());
        ShortTaskInfo shortTaskInfo = f45073h;
        if (shortTaskInfo == null) {
            ShortTaskInfo shortTaskInfo2 = null;
            for (Map.Entry<Integer, ShortTaskInfo> entry : f45068c.entrySet()) {
                ShortTaskInfo value = entry.getValue();
                int intValue = entry.getKey().intValue();
                if (!value.getHasUnfinishedJob()) {
                    List<DownloadTaskInfo> C = f45066a.C(intValue);
                    if (!(C instanceof Collection) || !C.isEmpty()) {
                        Iterator<T> it = C.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) it.next();
                            if (downloadTaskInfo.getDownloadState() != 4 && downloadTaskInfo.getDownloadState() != 6) {
                                value.setHasUnfinishedJob(true);
                                break;
                            }
                        }
                    }
                }
                if (value.getHasUnfinishedJob() && (shortTaskInfo2 == null || value.getAddTaskTime() < shortTaskInfo2.getAddTaskTime())) {
                    shortTaskInfo2 = value;
                }
            }
            shortTaskInfo = shortTaskInfo2;
        }
        if (shortTaskInfo != null) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : f45066a.C(shortTaskInfo.getShortPlayId())) {
                DownloadTaskInfo downloadTaskInfo2 = (DownloadTaskInfo) obj;
                if (downloadTaskInfo2.getDownloadState() != 4 && downloadTaskInfo2.getDownloadState() != 6) {
                    arrayList3.add(obj);
                }
            }
            if (!arrayList3.isEmpty()) {
                downloadingManagerInfo.setShortPlayId(shortTaskInfo.getShortPlayId());
                downloadingManagerInfo.setShortPlayName(shortTaskInfo.getDramaName());
                downloadingManagerInfo.getTaskInfoList().addAll(arrayList3);
            }
        }
        for (Map.Entry<Integer, ShortTaskInfo> entry2 : f45068c.entrySet()) {
            ShortTaskInfo value2 = entry2.getValue();
            List<DownloadTaskInfo> C2 = f45066a.C(value2.getShortPlayId());
            if (!C2.isEmpty()) {
                DownloadedManagerInfo downloadedManagerInfo = new DownloadedManagerInfo(new ArrayList());
                for (DownloadTaskInfo downloadTaskInfo3 : C2) {
                    if (downloadTaskInfo3.getDownloadState() == 4) {
                        downloadedManagerInfo.getTaskInfoList().add(downloadTaskInfo3);
                    }
                }
                if (downloadedManagerInfo.getTaskInfoList().size() > 0) {
                    downloadedManagerInfo.setShortPlayId(value2.getShortPlayId());
                    String content = value2.getContent();
                    String str = "";
                    if (content == null) {
                        content = "";
                    }
                    downloadedManagerInfo.setDramaContent(content);
                    String dramaName = value2.getDramaName();
                    if (dramaName != null) {
                        str = dramaName;
                    }
                    downloadedManagerInfo.setDramaName(str);
                    arrayList2.add(downloadedManagerInfo);
                }
            }
        }
        if (!downloadingManagerInfo.getTaskInfoList().isEmpty()) {
            arrayList.add(new DownloadManagerHeader(u.f51776a.d(R$string.downloading)));
            arrayList.add(downloadingManagerInfo);
        }
        if (arrayList2.size() > 0) {
            arrayList.add(new DownloadManagerHeader(u.f51776a.d(R$string.downloaded)));
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    @NotNull
    public final List<DownloadActivityListItem> G(int i10, @NotNull List<BaseEpisode> dramaList) {
        Intrinsics.checkNotNullParameter(dramaList, "dramaList");
        if (dramaList.isEmpty()) {
            return new ArrayList();
        }
        s.b("映射shortId：" + i10 + " 的taskItem");
        HashMap<String, DownloadTaskInfo> hashMap = f45067b.get(Integer.valueOf(i10));
        if (hashMap == null) {
            s.b("映射shortId：" + i10 + " 没有找到，全部item新建");
            ArrayList arrayList = new ArrayList();
            for (BaseEpisode baseEpisode : dramaList) {
                arrayList.add(new DownloadActivityListItem(baseEpisode));
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        s.b("映射shortId：" + i10 + " 找了" + hashMap.size() + " 个item");
        for (BaseEpisode baseEpisode2 : dramaList) {
            DownloadTaskInfo downloadTaskInfo = hashMap.get(baseEpisode2.getDownloadSubKey());
            DownloadActivityListItem downloadActivityListItem = new DownloadActivityListItem(baseEpisode2);
            if (downloadTaskInfo != null) {
                downloadActivityListItem.setDownloadInfo(downloadTaskInfo);
            }
            arrayList2.add(downloadActivityListItem);
        }
        return arrayList2;
    }

    @Nullable
    public final Object H(int i10, @NotNull rs.c<? super List<DownloadedDramaInfo>> cVar) {
        return gt.e.g(q0.c(), new DownloadEpisodeManager$getDownloadedTaskInfoByShortId$2(i10, null), cVar);
    }

    @Nullable
    public final Object I(int i10, int i11, @NotNull rs.c<? super DownloadTaskInfo> cVar) {
        return gt.e.g(q0.c(), new DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2(i10, i11, null), cVar);
    }

    @Nullable
    public final Object J(int i10, @NotNull rs.c<? super Set<Integer>> cVar) {
        return gt.e.g(q0.b(), new DownloadEpisodeManager$getDownloadedTaskInfoIdsByShortId$2(i10, null), cVar);
    }

    @Nullable
    public final Object K(int i10, @NotNull rs.c<? super List<DownloadingDramaInfo>> cVar) {
        return gt.e.g(q0.c(), new DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2(i10, null), cVar);
    }

    public final boolean L() {
        return f45076k;
    }

    @NotNull
    public final MutableLiveData<Long> M() {
        return f45070e;
    }

    public final void N() {
        if (f45074i) {
            return;
        }
        f45074i = true;
        au.c.d().p(this);
        f45071f = ud.b.f68412a.T0();
        VideoModelDBManager.setEnableSizeLimit(false);
        Downloader.getInstance().setMaxDownloadOperationCount(1L);
        Downloader.getInstance().setListener(new IDownloaderListener() { // from class: com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1
            @Override // com.ss.ttvideoengine.download.IDownloaderListener
            public void downloaderDidComplete(Downloader downloader, DownloadTask downloadTask, Error error) {
                String str;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloaderDidComplete: task");
                if (downloadTask != null) {
                    str = s.f(downloadTask);
                } else {
                    str = null;
                }
                sb2.append(str);
                sb2.append(" err:");
                sb2.append(error);
                s.b(sb2.toString());
                gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$init$1$downloaderDidComplete$1(downloadTask, error, null), 3, null);
            }

            @Override // com.ss.ttvideoengine.download.IDownloaderListener
            public void downloaderDidLoadAllTask(Downloader downloader, List<DownloadTask> list, Error error) {
                Integer num;
                HashMap hashMap;
                HashMap hashMap2;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloaderDidLoadAllTask: allTaskNum：");
                if (list != null) {
                    num = Integer.valueOf(list.size());
                } else {
                    num = null;
                }
                sb2.append(num);
                sb2.append(" err:");
                sb2.append(error);
                s.b(sb2.toString());
                hashMap = DownloadEpisodeManager.f45077l;
                hashMap.clear();
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        hashMap2 = DownloadEpisodeManager.f45077l;
                        hashMap2.put(downloadTask.getVideoId(), downloadTask);
                        s.b("downloaderDidLoadAllTask:item:" + s.f(downloadTask));
                    }
                }
                DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
                if (downloadEpisodeManager.L()) {
                    downloadEpisodeManager.Y(false);
                    downloadEpisodeManager.a0(true);
                }
            }

            @Override // com.ss.ttvideoengine.download.IDownloaderListener
            public void downloaderDidResume(Downloader downloader, DownloadTask downloadTask, long j10, long j11) {
                String str;
                long j12;
                long j13;
                float floatValue;
                String str2;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloaderDidResume: task:");
                if (downloadTask != null) {
                    str = s.f(downloadTask);
                } else {
                    str = null;
                }
                sb2.append(str);
                sb2.append(" fileOffset:");
                sb2.append(j10);
                sb2.append(" expectedTotalBytes:");
                sb2.append(j11);
                s.b(sb2.toString());
                DownloadEpisodeManager.f45072g = true;
                if (downloadTask != null) {
                    j12 = downloadTask.getBytesExpectedToReceive();
                } else {
                    j12 = 0;
                }
                if (downloadTask != null) {
                    j13 = downloadTask.getBytesReceived();
                } else {
                    j13 = 0;
                }
                if (j12 == 0) {
                    floatValue = 0.0f;
                } else {
                    floatValue = new BigDecimal(String.valueOf(((float) j13) / ((float) j12))).setScale(4, RoundingMode.HALF_UP).floatValue();
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("downloaderDidResume: task");
                if (downloadTask != null) {
                    str2 = s.f(downloadTask);
                } else {
                    str2 = null;
                }
                sb3.append(str2);
                sb3.append("  progress");
                sb3.append(100 * floatValue);
                sb3.append('%');
                s.b(sb3.toString());
                gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$init$1$downloaderDidResume$1(downloadTask, floatValue, null), 3, null);
            }

            @Override // com.ss.ttvideoengine.download.IDownloaderListener
            public void downloaderStateChanged(Downloader downloader, DownloadTask downloadTask, int i10) {
                String str;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloaderStateChanged: task");
                if (downloadTask != null) {
                    str = s.f(downloadTask);
                } else {
                    str = null;
                }
                sb2.append(str);
                sb2.append(" state:");
                sb2.append(s.d(i10));
                s.b(sb2.toString());
                if (i10 != 0 && i10 != 4 && i10 != 5) {
                    gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$init$1$downloaderStateChanged$1(downloadTask, i10, null), 3, null);
                }
            }

            @Override // com.ss.ttvideoengine.download.IDownloaderListener
            public void downloaderWriteData(Downloader downloader, DownloadTask downloadTask, long j10, long j11) {
                long j12;
                long j13;
                float f10;
                String str;
                if (downloadTask != null) {
                    j12 = downloadTask.getBytesExpectedToReceive();
                } else {
                    j12 = 0;
                }
                if (downloadTask != null) {
                    j13 = downloadTask.getBytesReceived();
                } else {
                    j13 = 0;
                }
                if (j12 == 0) {
                    f10 = 0.0f;
                } else {
                    f10 = ((float) j13) / ((float) j12);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("downloaderWriteData: task");
                if (downloadTask != null) {
                    str = s.f(downloadTask);
                } else {
                    str = null;
                }
                sb2.append(str);
                sb2.append("  progress");
                sb2.append(100 * f10);
                sb2.append('%');
                s.b(sb2.toString());
                gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$init$1$downloaderWriteData$1(downloadTask, f10, null), 3, null);
            }
        });
        gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$init$2(null), 3, null);
    }

    @NotNull
    public final DownloadTaskInfo P(@NotNull DownloadTaskInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (info.getDownloadState() != 2) {
            info.setDownloadState(3);
        } else {
            info.setDownloadState(3);
            DownloadTask F = F(this, info, false, 2, null);
            if (F != null) {
                F.suspend();
            }
        }
        return info;
    }

    public final void Q(@Nullable List<DownloadingDramaInfo> list, @Nullable Function0<Unit> function0) {
        List<DownloadingDramaInfo> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$pauseTaskInfoList$1(list, function0, null), 3, null);
        }
    }

    public final void R(@Nullable List<DownloadManagerItem> list, @Nullable Function0<Unit> function0) {
        gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$removeDownloadedManagerList$1(list, function0, null), 3, null);
    }

    public final void S(@Nullable List<DownloadedDramaInfo> list, @Nullable Function0<Unit> function0) {
        List<DownloadedDramaInfo> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$removeDownloadedTaskInfoList$1(list, function0, null), 3, null);
        }
    }

    public final void T(@Nullable List<DownloadingDramaInfo> list, @Nullable Function0<Unit> function0) {
        List<DownloadingDramaInfo> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$removeDownloadingTaskInfoList$1(list, function0, null), 3, null);
        }
    }

    public final void W(@Nullable List<DownloadingDramaInfo> list, @Nullable Function0<Unit> function0) {
        gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$resumeDownloadTaskInfoList$1(list, function0, null), 3, null);
    }

    public final void Y(boolean z10) {
        f45076k = z10;
    }

    public final void a0(boolean z10) {
        s.b("startDownload 尝试开始下载");
        if (f45075j) {
            s.b("暂停自动下载");
        } else if (f45072g) {
            s.b("有在下载的任务");
        } else if (!O()) {
            HashMap<Integer, ShortTaskInfo> hashMap = f45068c;
            if (hashMap.isEmpty()) {
                s.b("短剧map为null");
                return;
            }
            ShortTaskInfo shortTaskInfo = null;
            for (Map.Entry<Integer, ShortTaskInfo> entry : hashMap.entrySet()) {
                if (entry.getValue().getHasUnfinishedJob()) {
                    if (shortTaskInfo == null) {
                        shortTaskInfo = entry.getValue();
                    } else if (entry.getValue().getAddTaskTime() < shortTaskInfo.getAddTaskTime()) {
                        shortTaskInfo = entry.getValue();
                    }
                }
            }
            if (shortTaskInfo == null) {
                s.b("找不到任务短剧");
                return;
            }
            final ShortTaskInfo shortTaskInfo2 = shortTaskInfo;
            List<DownloadTaskInfo> C = f45066a.C(shortTaskInfo2.getShortPlayId());
            if (C.size() > 1) {
                CollectionsKt.D(C, new b());
            }
            if (C.isEmpty()) {
                s.b("所有短剧都下载完成了");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : C) {
                if (((DownloadTaskInfo) obj).isDownloadingItem()) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                if (!AccountRepo.f43052a.z0()) {
                    if (!z10) {
                        f45066a.Z();
                    }
                    s.b("订阅已过期，暂停下载");
                    return;
                }
                y(f45066a, arrayList, new Function0() { // from class: uh.o
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit c02;
                        c02 = DownloadEpisodeManager.c0(ShortTaskInfo.this);
                        return c02;
                    }
                }, null, 4, null);
                return;
            }
            s.b("找不到可下载的短剧");
        } else {
            s.b("有任务在下载中，忽略");
        }
    }

    public final void d0(@NotNull ShortTaskInfo shortTaskInfo, @Nullable List<DownloadActivityListItem> list, int i10, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(shortTaskInfo, "shortTaskInfo");
        if (!AccountRepo.f43052a.z0()) {
            Z();
            return;
        }
        List<DownloadActivityListItem> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$startDownloadItemList$1(shortTaskInfo, list, function0, i10, null), 3, null);
        }
    }

    public final void f0() {
        gt.g.d(h0.e(), null, null, new DownloadEpisodeManager$updateRemainSize$1(null), 3, null);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String t02 = AccountRepo.f43052a.t0();
        s.b("用户刷新：new :" + t02 + " old:" + f45071f);
        if (Intrinsics.areEqual(t02, "")) {
            return;
        }
        if (Intrinsics.areEqual(f45071f, "")) {
            ud.b.f68412a.f4(t02);
            f45071f = t02;
        } else if (!Intrinsics.areEqual(f45071f, t02)) {
            ud.b.f68412a.f4(t02);
            f45071f = t02;
            t();
        }
    }

    public final void t() {
        s.b("清除所有下载信息");
        gt.g.d(h0.f(), null, null, new DownloadEpisodeManager$clearAll$1(null), 3, null);
    }

    public final void v() {
        s.b("downloadNext下载下一集");
        if (f45075j) {
            s.b("暂停下载下一集");
        } else if (f45072g) {
            s.b("有在执行的下载任务");
        } else {
            ShortTaskInfo shortTaskInfo = f45073h;
            if (shortTaskInfo == null) {
                s.b("当前没有下载任务");
                b0(this, false, 1, null);
            } else if (shortTaskInfo != null) {
                List<DownloadTaskInfo> C = f45066a.C(shortTaskInfo.getShortPlayId());
                if (C.size() > 1) {
                    CollectionsKt.D(C, new a());
                }
                List<DownloadTaskInfo> list = C;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((DownloadTaskInfo) obj).isDownloadingItem()) {
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty()) {
                    if (!AccountRepo.f43052a.z0()) {
                        f45066a.Z();
                        s.b("订阅已过期，暂停下载");
                        return;
                    }
                    y(f45066a, arrayList, null, new Function0() { // from class: uh.p
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit w10;
                            w10 = DownloadEpisodeManager.w();
                            return w10;
                        }
                    }, 2, null);
                    return;
                }
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (DownloadTaskInfo downloadTaskInfo : list) {
                        if (downloadTaskInfo.hasUnFinishJob()) {
                            s.b("当前剧下载没有了可以执行下载的剧");
                            f45073h = null;
                            return;
                        }
                    }
                }
                shortTaskInfo.setHasUnfinishedJob(false);
                ShortDB.f45222a.c(shortTaskInfo);
                f45073h = null;
                b0(f45066a, false, 1, null);
                s.b("当前剧下载完成，尝试下载下一部剧");
            }
        }
    }
}
