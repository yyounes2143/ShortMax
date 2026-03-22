package com.startshorts.androidplayer.repo.update;

import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.repo.update.UpdateRemoteDS;
import com.startshorts.androidplayer.repo.update.UpdateRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import lh.a;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UpdateRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final UpdateRepo f44764a = new UpdateRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44765b = c.b(new Function0() { // from class: lh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UpdateRemoteDS j10;
            j10 = UpdateRepo.j();
            return j10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44766c = c.b(new Function0() { // from class: lh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a i10;
            i10 = UpdateRepo.i();
            return i10;
        }
    });

    private UpdateRepo() {
    }

    private final a e() {
        return (a) f44766c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UpdateRemoteDS f() {
        return (UpdateRemoteDS) f44765b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a i() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UpdateRemoteDS j() {
        return new UpdateRemoteDS();
    }

    @NotNull
    public final r d(@NotNull Function1<? super UpdateData, Unit> onComplete) {
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "fetchUpdateData", false, new UpdateRepo$fetchUpdateData$2(onComplete, null), 2, null);
    }

    @Nullable
    public final UpdateData g() {
        return e().a();
    }

    @Nullable
    public final Integer h() {
        UpdateData a10 = e().a();
        if (a10 != null) {
            return Integer.valueOf(a10.getUpdate());
        }
        return null;
    }

    public final void k(@Nullable UpdateData updateData) {
        e().b(updateData);
    }
}
