package com.startshorts.androidplayer.ui.activity.download.data;

import android.os.Looper;
import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
import fk.u;
import gt.e;
import gt.g;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import uh.h0;
import wh.o;
/* compiled from: ShortDB.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortDB {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ShortDB f45222a = new ShortDB();

    private ShortDB() {
    }

    private final boolean d() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    @Nullable
    public final Object a(@NotNull c<? super Unit> cVar) {
        if (d()) {
            Object g10 = e.g(q0.a(), new ShortDB$clearAll$2(null), cVar);
            if (g10 == a.f()) {
                return g10;
            }
            return Unit.f60915a;
        }
        o.f69891a.a(u.f51776a.b()).e().a();
        return Unit.f60915a;
    }

    @Nullable
    public final Object b(@NotNull c<? super List<ShortTaskInfo>> cVar) {
        if (d()) {
            return e.g(q0.a(), new ShortDB$getAllShortTasks$2(null), cVar);
        }
        return o.f69891a.a(u.f51776a.b()).e().c();
    }

    public final void c(@NotNull ShortTaskInfo task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (d()) {
            g.d(h0.e(), null, null, new ShortDB$insert$1(task, null), 3, null);
        } else {
            o.f69891a.a(u.f51776a.b()).e().b(task);
        }
    }
}
