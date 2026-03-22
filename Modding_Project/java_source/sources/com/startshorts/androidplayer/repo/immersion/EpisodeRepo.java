package com.startshorts.androidplayer.repo.immersion;

import android.content.Context;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import xg.f;
/* compiled from: EpisodeRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EpisodeRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final EpisodeRepo f44056a = new EpisodeRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44057b = c.b(new Function0() { // from class: xg.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            EpisodeRemoteDS q10;
            q10 = EpisodeRepo.q();
            return q10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44058c = c.b(new Function0() { // from class: xg.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            f p10;
            p10 = EpisodeRepo.p();
            return p10;
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i<List<Integer>> f44059d = c.b(new Function0() { // from class: xg.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List o10;
            o10 = EpisodeRepo.o();
            return o10;
        }
    });

    private EpisodeRepo() {
    }

    private final f l() {
        return (f) f44058c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EpisodeRemoteDS m() {
        return (EpisodeRemoteDS) f44057b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List o() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f p() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EpisodeRemoteDS q() {
        return new EpisodeRemoteDS();
    }

    public static /* synthetic */ Object s(EpisodeRepo episodeRepo, Context context, String str, int i10, int i11, rs.c cVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            context = null;
        }
        return episodeRepo.r(context, str, i10, i11, cVar);
    }

    public static /* synthetic */ Object u(EpisodeRepo episodeRepo, Context context, int i10, int i11, int i12, rs.c cVar, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            context = null;
        }
        return episodeRepo.t(context, i10, i11, i12, cVar);
    }

    public final void A(int i10, @Nullable String str) {
        if (str != null && str.length() != 0) {
            l().v(i10, str);
        }
    }

    public final void f(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        String videoUrl = episode.getVideoUrl();
        if (videoUrl != null && videoUrl.length() != 0 && !AccountRepo.f43052a.i1()) {
            l().e(episode);
        }
    }

    public final void g() {
        l().g();
    }

    public final void h() {
        i<List<Integer>> iVar = f44059d;
        if (iVar.isInitialized()) {
            iVar.getValue().clear();
        }
    }

    @Nullable
    public final BaseEpisode i(int i10) {
        return l().h(i10);
    }

    @Nullable
    public final List<BaseEpisode> j(int i10) {
        return l().j(i10);
    }

    public final int k(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return l().l(key);
    }

    public final int n(int i10) {
        return l().m(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(@org.jetbrains.annotations.Nullable android.content.Context r8, @org.jetbrains.annotations.NotNull java.lang.String r9, int r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeDetail$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeDetail$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeDetail$1) r0
            int r1 = r0.f44062j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44062j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeDetail$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeDetail$1
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.f44060h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f44062j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r8 = r12.n()
            goto L58
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r12 = r7.i(r10)
            if (r12 == 0) goto L47
            java.lang.Object r8 = kotlin.Result.d(r12)
            return r8
        L47:
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS r1 = r7.m()
            r6.f44062j = r2
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            java.lang.Object r8 = r1.a(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L58
            return r0
        L58:
            boolean r9 = kotlin.Result.j(r8)
            if (r9 == 0) goto L68
            r9 = r8
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r9 = (com.startshorts.androidplayer.bean.shorts.BaseEpisode) r9
            if (r9 == 0) goto L68
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo r10 = com.startshorts.androidplayer.repo.immersion.EpisodeRepo.f44056a
            r10.f(r9)
        L68:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRepo.r(android.content.Context, java.lang.String, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(@org.jetbrains.annotations.Nullable android.content.Context r8, int r9, int r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortsListNewBean>> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeList$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeList$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeList$1) r0
            int r1 = r0.f44065j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44065j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeList$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryEpisodeList$1
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.f44063h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f44065j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r8 = r12.n()
            goto L4d
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS r1 = r7.m()
            r6.f44065j = r2
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            java.lang.Object r8 = r1.b(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L4d
            return r0
        L4d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRepo.t(android.content.Context, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryRecommendEpisode$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryRecommendEpisode$1 r0 = (com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryRecommendEpisode$1) r0
            int r1 = r0.f44068j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44068j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryRecommendEpisode$1 r0 = new com.startshorts.androidplayer.repo.immersion.EpisodeRepo$queryRecommendEpisode$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44066h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44068j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS r5 = r4.m()
            r0.f44068j = r3
            java.lang.Object r5 = r5.c(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.EpisodeRepo.v(rs.c):java.lang.Object");
    }

    public final void w(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        l().r(episode);
    }

    public final void x(@NotNull BaseEpisode episode, int i10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        i<List<Integer>> iVar = f44059d;
        if (iVar.isInitialized() && iVar.getValue().contains(Integer.valueOf(episode.getId()))) {
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("EpisodeRepo", "reportEpisodeWatched -> episodeId(" + episode.getId() + ") watchTime(" + i10 + "s)");
        iVar.getValue().add(Integer.valueOf(episode.getId()));
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportEpisodeWatched", false, new EpisodeRepo$reportEpisodeWatched$1(episode, i10, null), 2, null);
    }

    public final void y(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        l().t(key, i10);
    }

    public final void z(int i10, int i11) {
        l().u(i10, i11);
    }
}
