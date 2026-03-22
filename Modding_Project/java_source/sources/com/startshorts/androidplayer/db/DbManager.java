package com.startshorts.androidplayer.db;

import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DbManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DbManager {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static Database f41468b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f41469c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DbManager f41467a = new DbManager();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final p<Unit> f41470d = r.b(null, 1, null);

    private DbManager() {
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9 A[Catch: all -> 0x00bf, TryCatch #3 {, blocks: (B:3:0x0001, B:8:0x000d, B:24:0x00b1, B:26:0x00b9, B:27:0x00bb, B:32:0x00df, B:34:0x00e7, B:37:0x0108, B:39:0x0110, B:44:0x0121, B:11:0x0012, B:13:0x0023, B:23:0x003e, B:22:0x0033, B:31:0x00c1, B:36:0x00ea), top: B:49:0x0001 }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.startshorts.androidplayer.db.Database a(@org.jetbrains.annotations.NotNull android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.DbManager.a(android.content.Context):com.startshorts.androidplayer.db.Database");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e A[ORIG_RETURN, RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull rs.c<? super vd.a> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.db.DbManager$getEventDao$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.db.DbManager$getEventDao$1 r0 = (com.startshorts.androidplayer.db.DbManager$getEventDao$1) r0
            int r1 = r0.f41473j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41473j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.db.DbManager$getEventDao$1 r0 = new com.startshorts.androidplayer.db.DbManager$getEventDao$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f41471h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41473j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L45
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            gt.p<kotlin.Unit> r5 = com.startshorts.androidplayer.db.DbManager.f41470d
            boolean r2 = r5.isCompleted()
            if (r2 != 0) goto L45
            r0.f41473j = r3
            java.lang.Object r5 = r5.await(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            com.startshorts.androidplayer.db.Database r5 = com.startshorts.androidplayer.db.DbManager.f41468b
            if (r5 == 0) goto L4e
            vd.a r5 = r5.e()
            goto L4f
        L4e:
            r5 = 0
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.db.DbManager.b(rs.c):java.lang.Object");
    }
}
