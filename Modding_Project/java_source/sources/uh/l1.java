package uh;

import com.ss.ttm.player.MediaFormat;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.SubtitleConfig;
import com.startshorts.androidplayer.bean.shorts.SubtitleFile;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleDownloadManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubtitleDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubtitleDownloadManager.kt\ncom/startshorts/androidplayer/ui/activity/download/SubtitleDownloadManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,248:1\n1#2:249\n13402#3,2:250\n*S KotlinDebug\n*F\n+ 1 SubtitleDownloadManager.kt\ncom/startshorts/androidplayer/ui/activity/download/SubtitleDownloadManager\n*L\n200#1:250,2\n*E\n"})
/* loaded from: classes7.dex */
public final class l1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l1 f68455a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<DownloadTaskInfo> f68456b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Object f68457c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f68458d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ms.i f68459e;

    static {
        l1 l1Var = new l1();
        f68455a = l1Var;
        List<DownloadTaskInfo> synchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(synchronizedList, "synchronizedList(...)");
        f68456b = synchronizedList;
        f68457c = new Object();
        f68459e = kotlin.c.b(new Function0() { // from class: uh.i1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                OkHttpClient i10;
                i10 = l1.i();
                return i10;
            }
        });
        l1Var.q();
    }

    private l1() {
    }

    private final void e(BaseEpisode baseEpisode, SubtitleFile subtitleFile) {
        if (!subtitleFile.isUseful()) {
            p("id:" + baseEpisode.getShortPlayId() + " num:" + baseEpisode.getEpisodeNum() + " is not useful !!");
        }
        int shortPlayId = baseEpisode.getShortPlayId();
        int id2 = baseEpisode.getId();
        String language = subtitleFile.getLanguage();
        Intrinsics.checkNotNull(language);
        long sub_id = subtitleFile.getSub_id();
        String format = subtitleFile.getFormat();
        Intrinsics.checkNotNull(format);
        File n10 = n(shortPlayId, id2, language, sub_id, format);
        if (n10.exists()) {
            p("id:" + baseEpisode.getShortPlayId() + " num:" + baseEpisode.getEpisodeNum() + " already downloaded !!");
            return;
        }
        String url = subtitleFile.getUrl();
        Intrinsics.checkNotNull(url);
        String absolutePath = n10.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        k(url, absolutePath);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(DownloadTaskInfo downloadTaskInfo) {
        Object obj = f68457c;
        synchronized (obj) {
            try {
                f68456b.add(downloadTaskInfo);
                if (!f68458d) {
                    obj.notify();
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final boolean h(File file) {
        if (!file.exists()) {
            p("Directory does not exist: " + file.getAbsolutePath());
            return true;
        } else if (!file.isDirectory()) {
            p("Not a directory: " + file.getAbsolutePath());
            return file.delete();
        } else {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (file2.isDirectory()) {
                            l1 l1Var = f68455a;
                            Intrinsics.checkNotNull(file2);
                            l1Var.h(file2);
                        } else if (file2.delete()) {
                            f68455a.p("Deleted file: " + file2.getAbsolutePath());
                        } else {
                            f68455a.p("Failed to delete file: " + file2.getAbsolutePath());
                        }
                    }
                }
                boolean delete = file.delete();
                if (delete) {
                    p("Deleted directory: " + file.getAbsolutePath());
                } else {
                    p("Failed to delete directory: " + file.getAbsolutePath());
                }
                return delete;
            } catch (Exception e10) {
                p("Error deleting directory " + file.getAbsolutePath() + ": " + e10.getMessage());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient i() {
        try {
            return kk.h.f60762a.b();
        } catch (Exception unused) {
            return new OkHttpClient();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void j(DownloadTaskInfo downloadTaskInfo) {
        QueryDownloadEpisodesResult queryDownloadEpisodesResult;
        List<SubtitleFile> subtitleList;
        int shortPlayId = downloadTaskInfo.getShortPlayId();
        int dramaId = downloadTaskInfo.getDramaId();
        xh.f c10 = DEpisodesDB.f45229a.c(shortPlayId);
        BaseEpisode baseEpisode = null;
        if (c10 != null) {
            queryDownloadEpisodesResult = c10.b();
        } else {
            queryDownloadEpisodesResult = null;
        }
        if (queryDownloadEpisodesResult == null) {
            p(shortPlayId + " DownloadEpisodesInfo not find !!");
            return;
        }
        List<BaseEpisode> dramaResponseList = queryDownloadEpisodesResult.getDramaResponseList();
        if (dramaResponseList != null) {
            Iterator<T> it = dramaResponseList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((BaseEpisode) next).getId() == dramaId) {
                    baseEpisode = next;
                    break;
                }
            }
            baseEpisode = baseEpisode;
        }
        if (baseEpisode == null) {
            p("id:" + dramaId + " num:" + downloadTaskInfo.getDramaNum() + " DownloadEpisodesInfo not find !!");
        } else if (!baseEpisode.enableSubtitle()) {
            p("id:" + dramaId + " num:" + downloadTaskInfo.getDramaNum() + " is not enable subtitle !!");
        } else {
            SubtitleConfig subtitlingConfig = baseEpisode.getSubtitlingConfig();
            if (subtitlingConfig != null && (subtitleList = subtitlingConfig.getSubtitleList()) != null) {
                for (SubtitleFile subtitleFile : subtitleList) {
                    e(baseEpisode, subtitleFile);
                }
            }
        }
    }

    private final boolean k(String str, String str2) {
        InputStream byteStream;
        try {
            File file = new File(str2);
            if (file.exists()) {
                p("filePath:" + str2 + " downloaded");
                return true;
            }
            File file2 = new File(str2 + ".temp");
            if (file2.exists()) {
                file2.delete();
            }
            Response execute = m().a(new Request.Builder().k(str).b()).execute();
            if (!execute.isSuccessful()) {
                p("filePath:" + str2 + " download failed ,case net work");
                return false;
            }
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists()) {
                parentFile.mkdirs();
            }
            ResponseBody d10 = execute.d();
            if (d10 != null && (byteStream = d10.byteStream()) != null) {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    ws.a.b(byteStream, fileOutputStream, 0, 2, null);
                    ws.b.a(fileOutputStream, null);
                    ws.b.a(byteStream, null);
                } finally {
                }
            }
            file2.renameTo(file);
            p("filePath:" + str2 + " download success");
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            p("filePath:" + str2 + " download failed ,case exception：" + e10.getMessage());
            return false;
        }
    }

    private final File n(int i10, int i11, String str, long j10, String str2) {
        File o10 = o();
        return new File(o10, i10 + '/' + i11 + '/' + str + '/' + j10 + '.' + str2);
    }

    private final void p(String str) {
        if (str == null) {
            str = "err null string";
        }
        Logger.f41511a.h("SubtitleDownloadManager", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r() {
        f68455a.p("subtitle thread start!");
        while (!Thread.currentThread().isInterrupted()) {
            Object obj = f68457c;
            synchronized (obj) {
                try {
                    List<DownloadTaskInfo> list = f68456b;
                    if (list.isEmpty()) {
                        f68458d = false;
                        f68455a.p("subtitle waiting new job");
                        obj.wait();
                    } else {
                        f68458d = true;
                        Iterator<DownloadTaskInfo> it = list.iterator();
                        while (it.hasNext()) {
                            l1 l1Var = f68455a;
                            l1Var.p("subtitle start execute job");
                            l1Var.j(it.next());
                            it.remove();
                        }
                        f68458d = false;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final void d(@Nullable final DownloadTaskInfo downloadTaskInfo) {
        if (downloadTaskInfo == null) {
            return;
        }
        p("addDownloadSubtitleJob:" + downloadTaskInfo);
        new Thread(new Runnable() { // from class: uh.k1
            @Override // java.lang.Runnable
            public final void run() {
                l1.f(DownloadTaskInfo.this);
            }
        }).start();
    }

    public final void g() {
        h(o());
    }

    @NotNull
    public final SubtitleFile l(int i10, int i11, @NotNull SubtitleFile subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        if (!subtitle.isUseful()) {
            return subtitle;
        }
        String language = subtitle.getLanguage();
        Intrinsics.checkNotNull(language);
        long sub_id = subtitle.getSub_id();
        String format = subtitle.getFormat();
        Intrinsics.checkNotNull(format);
        File n10 = n(i10, i11, language, sub_id, format);
        if (!n10.exists()) {
            return subtitle;
        }
        String id2 = subtitle.getId();
        String language2 = subtitle.getLanguage();
        int language_id = subtitle.getLanguage_id();
        return new SubtitleFile(id2, language2, language_id, AdPayload.FILE_SCHEME + n10.getAbsolutePath(), subtitle.getFormat(), 0L, 32, null);
    }

    @NotNull
    public final OkHttpClient m() {
        return (OkHttpClient) f68459e.getValue();
    }

    @NotNull
    public final File o() {
        File file = new File(fk.u.f51776a.b().getCacheDir(), MediaFormat.KEY_SUBTITLE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final void q() {
        new Thread(new Runnable() { // from class: uh.j1
            @Override // java.lang.Runnable
            public final void run() {
                l1.r();
            }
        }).start();
    }
}
