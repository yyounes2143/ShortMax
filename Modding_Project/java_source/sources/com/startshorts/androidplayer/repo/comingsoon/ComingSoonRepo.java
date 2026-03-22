package com.startshorts.androidplayer.repo.comingsoon;

import com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS;
import com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComingSoonRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ComingSoonRepo f43745a = new ComingSoonRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43746b = c.b(new Function0() { // from class: lg.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ComingSoonRemoteDS g10;
            g10 = ComingSoonRepo.g();
            return g10;
        }
    });

    private ComingSoonRepo() {
    }

    private final ComingSoonRemoteDS e() {
        return (ComingSoonRemoteDS) f43746b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComingSoonRemoteDS g() {
        return new ComingSoonRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$addReservation$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$addReservation$1 r0 = (com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$addReservation$1) r0
            int r1 = r0.f43749j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43749j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$addReservation$1 r0 = new com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$addReservation$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43747h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43749j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS r7 = r4.e()
            r0.f43749j = r3
            java.lang.Object r5 = r7.a(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.b(android.content.Context, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$cancelReservation$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$cancelReservation$1 r0 = (com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$cancelReservation$1) r0
            int r1 = r0.f43752j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43752j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$cancelReservation$1 r0 = new com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$cancelReservation$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43750h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43752j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS r7 = r4.e()
            r0.f43752j = r3
            java.lang.Object r5 = r7.b(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.c(android.content.Context, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.Nullable java.lang.String r5, int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$checkShortsReservation$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$checkShortsReservation$1 r0 = (com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$checkShortsReservation$1) r0
            int r1 = r0.f43755j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43755j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$checkShortsReservation$1 r0 = new com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$checkShortsReservation$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f43753h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43755j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS r7 = r4.e()
            r0.f43755j = r3
            java.lang.Object r5 = r7.c(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.d(java.lang.String, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<java.lang.String>>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$loadShortcutsConfig$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$loadShortcutsConfig$1 r0 = (com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$loadShortcutsConfig$1) r0
            int r1 = r0.f43758j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43758j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$loadShortcutsConfig$1 r0 = new com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo$loadShortcutsConfig$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43756h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43758j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS r5 = com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS.f43815a
            r0.f43758j = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.f(rs.c):java.lang.Object");
    }
}
