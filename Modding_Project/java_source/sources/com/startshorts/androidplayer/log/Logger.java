package com.startshorts.androidplayer.log;

import com.inmobi.commons.core.configs.CrashConfig;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.c;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.FileUtil;
import com.tencent.mars.xlog.Log;
import com.tencent.mars.xlog.Xlog;
import fk.p;
import fk.u;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.f;
import zd.d;
/* compiled from: Logger.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Logger {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f41511a = new Logger();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final d f41512b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<zd.c> f41513c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f41514d;

    /* compiled from: Logger.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f41515a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f41516b;

        a(File file, f fVar) {
            this.f41515a = file;
            this.f41516b = fVar;
        }

        @Override // com.startshorts.androidplayer.log.c.a
        public void a() {
            Logger.f41514d = false;
            FileUtil.f48159a.b(this.f41515a, true);
            Logger.f41511a.h("Logger", "uploadAppLog success");
            f fVar = this.f41516b;
            if (fVar != null) {
                fVar.b("");
            }
        }

        @Override // com.startshorts.androidplayer.log.c.a
        public void onError(String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            Logger logger = Logger.f41511a;
            logger.e("Logger", "uploadAppLog failed -> " + msg);
            Logger.f41514d = false;
            FileUtil.f48159a.b(this.f41515a, true);
            f fVar = this.f41516b;
            if (fVar != null) {
                fVar.a(u.f51776a.d(R$string.common_unknown_exception));
            }
        }
    }

    static {
        d dVar = new d();
        f41512b = dVar;
        f41513c = CollectionsKt.t(dVar);
    }

    private Logger() {
    }

    private final void j(int i10, int i11, String str, String str2, String str3) {
        try {
            for (zd.c cVar : f41513c) {
                if (cVar.type() == i10) {
                    if (i11 != 10) {
                        if (i11 != 20) {
                            if (i11 == 21) {
                                cVar.a(str, str2, str3);
                            }
                        } else {
                            cVar.e(str, str2);
                        }
                    } else {
                        cVar.i(str, str2);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void m(Logger logger, f fVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fVar = null;
        }
        logger.l(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(File file, String str, f fVar) {
        c.f41525a.b(file, str, new a(file, fVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File o(String str, File file) {
        File file2 = null;
        try {
            p d10 = new p().d();
            File file3 = new File(cf.a.f3491a.b(), str);
            try {
                FileUtil fileUtil = FileUtil.f48159a;
                String absolutePath = file3.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                fileUtil.e(file, absolutePath, false, 20);
                h("Logger", "zip success took " + d10.b() + "ms -> " + file3.getAbsolutePath());
                return file3;
            } catch (Exception e10) {
                e = e10;
                file2 = file3;
                e("Logger", "zipAppLog exception -> " + e.getMessage());
                return file2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public final void d(int i10, @Nullable String str, @Nullable String str2) {
        j(i10, 20, str, str2, "");
    }

    public final void e(@Nullable String str, @Nullable String str2) {
        d(0, str, str2);
    }

    public final void f() {
        Log.appenderFlush();
    }

    public final void g(int i10, @Nullable String str, @Nullable String str2) {
        j(i10, 10, str, str2, "");
    }

    public final void h(@Nullable String str, @Nullable String str2) {
        g(0, str, str2);
    }

    public final void i() {
        int i10;
        System.loadLibrary("c++_shared");
        System.loadLibrary("marsxlog");
        id.a aVar = id.a.f53392a;
        if (Intrinsics.areEqual(aVar.a(), "release")) {
            i10 = 3;
        } else {
            i10 = 2;
        }
        int i11 = i10;
        String absolutePath = cf.a.f3491a.a().getAbsolutePath();
        String str = absolutePath + "/xlog_cache";
        String str2 = absolutePath + "/xlog";
        Xlog xlog = new Xlog();
        xlog.setMaxAliveTime(0L, CrashConfig.DEFAULT_EVENT_TTL_SEC);
        Log.setLogImp(xlog);
        boolean z10 = false;
        Log.setConsoleLogOpen(false);
        Log.appenderOpen(i11, 0, str, str2, "Xlog", 0);
        Log.setConsoleLogOpen((Intrinsics.areEqual(aVar.a(), "test") || Intrinsics.areEqual(aVar.a(), "noflow")) ? true : true);
        xlog.setMaxFileSize(0L, 5242880L);
    }

    public final void k(@NotNull zd.c logger) {
        Object obj;
        Intrinsics.checkNotNullParameter(logger, "logger");
        try {
            List<zd.c> list = f41513c;
            boolean remove = list.remove(f41512b);
            Iterator<T> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (logger.type() == ((zd.c) obj).type()) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj == null) {
                f41513c.add(logger);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("MemoryLogger output -> removeResult=");
            sb2.append(remove);
            sb2.append(",size=");
            d dVar = f41512b;
            sb2.append(dVar.b().size());
            h("Logger", sb2.toString());
            if (remove) {
                dVar.c();
            }
        } catch (Exception unused) {
        }
    }

    public final void l(@Nullable f fVar) {
        if (f41514d) {
            return;
        }
        f41514d = true;
        h("Logger", "uploadAppLog");
        f();
        CoroutineUtil.l(CoroutineUtil.f48072a, "uploadAppLog", false, new Logger$uploadAppLog$1(fVar, null), 2, null);
    }
}
