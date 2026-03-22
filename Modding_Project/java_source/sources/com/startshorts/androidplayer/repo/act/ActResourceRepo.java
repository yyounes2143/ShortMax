package com.startshorts.androidplayer.repo.act;

import cg.a;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceList;
import com.startshorts.androidplayer.repo.act.ActResourceRemoteDS;
import com.startshorts.androidplayer.repo.act.ActResourceRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActResourceRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ActResourceRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ActResourceRepo f43103a = new ActResourceRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43104b = c.b(new Function0() { // from class: cg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a g10;
            g10 = ActResourceRepo.g();
            return g10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43105c = c.b(new Function0() { // from class: cg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ActResourceRemoteDS h10;
            h10 = ActResourceRepo.h();
            return h10;
        }
    });

    private ActResourceRepo() {
    }

    private final a e() {
        return (a) f43104b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActResourceRemoteDS f() {
        return (ActResourceRemoteDS) f43105c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a g() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ActResourceRemoteDS h() {
        return new ActResourceRemoteDS();
    }

    @Nullable
    public final List<ActResource> d(int i10) {
        ActResourceList a10 = e().a();
        if (a10 != null) {
            return a10.get(i10);
        }
        return null;
    }

    @NotNull
    public final r i(boolean z10, @NotNull Function2<? super Result<ActResourceList>, ? super rs.c<? super Unit>, ? extends Object> onComplete) {
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryActResourceList", false, new ActResourceRepo$queryActResourceList$1(z10, onComplete, null), 2, null);
    }

    public final void j(@Nullable ActResourceList actResourceList) {
        e().b(actResourceList);
    }
}
