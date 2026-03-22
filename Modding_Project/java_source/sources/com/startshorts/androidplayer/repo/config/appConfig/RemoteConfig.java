package com.startshorts.androidplayer.repo.config.appConfig;

import com.startshorts.androidplayer.repo.config.appConfig.impl.RemoteConfigFetcher;
import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import pg.a;
import pg.b;
import pg.c;
import qt.d;
/* compiled from: RemoteConfig.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRemoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfig.kt\ncom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,117:1\n116#2,11:118\n*S KotlinDebug\n*F\n+ 1 RemoteConfig.kt\ncom/startshorts/androidplayer/repo/config/appConfig/RemoteConfig\n*L\n81#1:118,11\n*E\n"})
/* loaded from: classes7.dex */
public final class RemoteConfig {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g0 f43824a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final a f43825b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f43826c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final c f43827d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final qt.a f43828e;

    /* renamed from: f  reason: collision with root package name */
    private long f43829f;

    /* renamed from: g  reason: collision with root package name */
    private final long f43830g;

    public RemoteConfig(@NotNull qg.a settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.f43824a = i.a(r1.b(null, 1, null).plus(q0.c()));
        this.f43825b = new RemoteConfigFetcher(settings);
        this.f43826c = new og.a(settings.a());
        this.f43827d = new og.b(settings.b());
        this.f43828e = d.b(false, 1, null);
        this.f43830g = 5000L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(4:(2:3|(7:5|6|7|(1:(1:(1:(7:12|13|14|15|16|17|18)(2:26|27))(5:28|29|30|31|(2:33|(1:35)(5:36|15|16|17|18))(4:38|16|17|18)))(1:45))(2:62|(2:64|65)(2:66|(1:68)(1:69)))|46|47|(3:49|50|51)(3:52|53|(1:55)(3:56|31|(0)(0)))))|46|47|(0)(0))|71|6|7|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
        r13 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0095 A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #3 {all -> 0x00b6, blocks: (B:38:0x0088, B:40:0x0095, B:45:0x00bc), top: B:72:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00da A[Catch: all -> 0x0050, Exception -> 0x0054, TRY_LEAVE, TryCatch #6 {Exception -> 0x0054, all -> 0x0050, blocks: (B:23:0x004b, B:49:0x00d6, B:51:0x00da), top: B:75:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0107 A[Catch: all -> 0x0035, TryCatch #2 {all -> 0x0035, blocks: (B:14:0x0030, B:55:0x00f7, B:63:0x011f, B:60:0x0103, B:62:0x0107, B:66:0x0127), top: B:71:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0127 A[Catch: all -> 0x0035, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0035, blocks: (B:14:0x0030, B:55:0x00f7, B:63:0x011f, B:60:0x0103, B:62:0x0107, B:66:0x0127), top: B:71:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [rs.c, com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$fetch$1] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v3, types: [qt.a] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(rs.c<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig.f(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(8:5|6|7|(1:(2:10|11)(2:22|23))(3:24|25|(1:27)(1:28))|12|(1:17)|19|20))|31|6|7|(0)(0)|12|(2:14|17)|19|20) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005e, code lost:
        ng.a.a("load local error: " + r5.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$loadLocalCache$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$loadLocalCache$1 r0 = (com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$loadLocalCache$1) r0
            int r1 = r0.f43848k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43848k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$loadLocalCache$1 r0 = new com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$loadLocalCache$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43846i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43848k
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r0 = r0.f43845h
            com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig r0 = (com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig) r0
            kotlin.f.b(r5)     // Catch: java.lang.Exception -> L2d
            goto L48
        L2d:
            r5 = move-exception
            goto L5e
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            pg.c r5 = r4.f43827d     // Catch: java.lang.Exception -> L2d
            r0.f43845h = r4     // Catch: java.lang.Exception -> L2d
            r0.f43848k = r3     // Catch: java.lang.Exception -> L2d
            java.lang.Object r5 = r5.b(r0)     // Catch: java.lang.Exception -> L2d
            if (r5 != r1) goto L47
            return r1
        L47:
            r0 = r4
        L48:
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L2d
            if (r5 == 0) goto L76
            int r1 = r5.length()     // Catch: java.lang.Exception -> L2d
            if (r1 != 0) goto L53
            goto L76
        L53:
            pg.b r0 = r0.f43826c     // Catch: java.lang.Exception -> L2d
            r0.b(r5)     // Catch: java.lang.Exception -> L2d
            java.lang.String r5 = "load local success"
            ng.a.a(r5)     // Catch: java.lang.Exception -> L2d
            goto L76
        L5e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "load local error: "
            r0.append(r1)
            java.lang.String r5 = r5.getMessage()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            ng.a.a(r5)
        L76:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig.i(rs.c):java.lang.Object");
    }

    @NotNull
    public final <T> T g(@NotNull String key, @NotNull T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (T) this.f43826c.a(key, defaultValue);
    }

    public final void h() {
        g.d(this.f43824a, null, null, new RemoteConfig$init$1(this, null), 3, null);
    }

    public final void j() {
        g.d(this.f43824a, null, null, new RemoteConfig$updateConfig$1(this, null), 3, null);
    }
}
