package com.startshorts.androidplayer.repo.shorts;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsListResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.shorts.ShortsRemoteDS;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ShortsRepo f44606a = new ShortsRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44607b = c.b(new Function0() { // from class: hh.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            c p10;
            p10 = ShortsRepo.p();
            return p10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44608c = c.b(new Function0() { // from class: hh.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ShortsRemoteDS q10;
            q10 = ShortsRepo.q();
            return q10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f44609d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static Function1<? super Result<ShortsListResult>, Unit> f44610e;

    private ShortsRepo() {
    }

    private final hh.c i() {
        return (hh.c) f44607b.getValue();
    }

    private final ShortsRemoteDS j() {
        return (ShortsRemoteDS) f44608c.getValue();
    }

    public static /* synthetic */ BaseEpisode m(ShortsRepo shortsRepo, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return shortsRepo.k(i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hh.c p() {
        return new hh.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortsRemoteDS q() {
        return new ShortsRemoteDS();
    }

    public final void c(int i10, @NotNull BaseEpisode nextEpisode) {
        Intrinsics.checkNotNullParameter(nextEpisode, "nextEpisode");
        i().c(i10, nextEpisode);
    }

    public final void d() {
        i().s(null);
    }

    @Nullable
    public final Integer e() {
        return i().d();
    }

    @Nullable
    public final List<ShortsEpisode> f() {
        return i().e();
    }

    @Nullable
    public final Integer g() {
        return i().f();
    }

    public final boolean h() {
        return f44609d;
    }

    @Nullable
    public final BaseEpisode k(int i10, boolean z10) {
        return i().g(i10, z10);
    }

    @Nullable
    public final ConcurrentHashMap<Integer, BaseEpisode> l() {
        return i().h();
    }

    @Nullable
    public final ConcurrentHashMap<Integer, BaseEpisode> n() {
        return i().i();
    }

    public final int o() {
        return i().k();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(int r9, int r10, boolean r11, @org.jetbrains.annotations.Nullable java.lang.Integer r12, @org.jetbrains.annotations.Nullable java.lang.Integer r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortsListResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.shorts.ShortsRepo$queryEpisodes$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.shorts.ShortsRepo$queryEpisodes$1 r0 = (com.startshorts.androidplayer.repo.shorts.ShortsRepo$queryEpisodes$1) r0
            int r1 = r0.f44613j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44613j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.shorts.ShortsRepo$queryEpisodes$1 r0 = new com.startshorts.androidplayer.repo.shorts.ShortsRepo$queryEpisodes$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f44611h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44613j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L4e
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.shorts.ShortsRemoteDS r1 = r8.j()
            r7.f44613j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.b(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L4e
            return r0
        L4e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.shorts.ShortsRepo.r(int, int, boolean, java.lang.Integer, java.lang.Integer, rs.c):java.lang.Object");
    }

    public final void s(int i10) {
        i().n(i10);
    }

    public final void t() {
        Logger.f41511a.h("Feed_Check_New_Test", "mLocalDS.resetPageNumber()");
        i().p();
    }

    public final void u(int i10, int i11) {
        Logger logger = Logger.f41511a;
        logger.h("Feed_Check_New_Test", "mLocalDS.resetPageNumber pageNumber -> " + i10 + " lastWatchIndex ->" + i11);
        i().q(i10, i11);
    }

    public final void v(@Nullable Integer num) {
        i().r(num);
    }

    public final void w(@Nullable Integer num) {
        i().t(num);
    }

    public final void x(@Nullable Function1<? super Result<ShortsListResult>, Unit> function1) {
        f44610e = function1;
    }
}
