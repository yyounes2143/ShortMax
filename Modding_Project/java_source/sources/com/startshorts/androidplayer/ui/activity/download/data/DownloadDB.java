package com.startshorts.androidplayer.ui.activity.download.data;

import android.os.Looper;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import fk.u;
import gt.e;
import gt.g;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import uh.h0;
import wh.i;
/* compiled from: DownloadDB.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadDB {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DownloadDB f45210a = new DownloadDB();

    private DownloadDB() {
    }

    private final boolean g() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    public final void a() {
        if (g()) {
            g.d(h0.e(), null, null, new DownloadDB$clearAll$1(null), 3, null);
        } else {
            i.f69880a.a(u.f51776a.b()).e().a();
        }
    }

    public final void b(@NotNull DownloadTaskInfo task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (g()) {
            g.d(h0.e(), null, null, new DownloadDB$delete$1(task, null), 3, null);
        } else {
            i.f69880a.a(u.f51776a.b()).e().b(task);
        }
    }

    @Nullable
    public final Object c(@NotNull c<? super Integer> cVar) {
        if (g()) {
            return e.g(q0.a(), new DownloadDB$deleteCancelData$2(null), cVar);
        }
        return a.d(i.f69880a.a(u.f51776a.b()).e().e(6));
    }

    @Nullable
    public final Object d(@NotNull c<? super List<DownloadTaskInfo>> cVar) {
        if (g()) {
            return e.g(q0.a(), new DownloadDB$getAllTasks$2(null), cVar);
        }
        return i.f69880a.a(u.f51776a.b()).e().d();
    }

    public final void e(@NotNull DownloadTaskInfo task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (g()) {
            g.d(h0.e(), null, null, new DownloadDB$insert$1(task, null), 3, null);
        } else {
            i.f69880a.a(u.f51776a.b()).e().c(task);
        }
    }

    public final void f(@NotNull List<DownloadTaskInfo> taskList) {
        Intrinsics.checkNotNullParameter(taskList, "taskList");
        if (g()) {
            g.d(h0.e(), null, null, new DownloadDB$insertAll$1(taskList, null), 3, null);
        } else {
            i.f69880a.a(u.f51776a.b()).e().f(taskList);
        }
    }
}
