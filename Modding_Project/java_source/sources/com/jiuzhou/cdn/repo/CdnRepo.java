package com.jiuzhou.cdn.repo;

import bc.a;
import bc.c;
import bc.f;
import com.google.gson.Gson;
import com.jiuzhou.cdn.model.CdnInfo;
import com.jiuzhou.cdn.model.request.CdnEvent;
import com.jiuzhou.cdn.model.request.CdnEventType;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CdnRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCdnRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnRepo.kt\ncom/jiuzhou/cdn/repo/CdnRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1863#2,2:170\n*S KotlinDebug\n*F\n+ 1 CdnRepo.kt\ncom/jiuzhou/cdn/repo/CdnRepo\n*L\n50#1:170,2\n*E\n"})
/* loaded from: classes5.dex */
public final class CdnRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CdnRepo f25579a = new CdnRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static String f25580b = "";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static String f25581c = "";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static String f25582d = "";

    /* renamed from: e  reason: collision with root package name */
    private static long f25583e = -1;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Gson f25584f = new Gson();

    private CdnRepo() {
    }

    public static /* synthetic */ CdnEvent b(CdnRepo cdnRepo, String str, String str2, String str3, String str4, long j10, String str5, String str6, String str7, String str8, String str9, String str10, int i10, String str11, String str12, int i11, Object obj) {
        return cdnRepo.a(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? -1L : j10, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8, (i11 & 512) != 0 ? null : str9, (i11 & 1024) != 0 ? null : str10, (i11 & 2048) != 0 ? -1 : i10, (i11 & 4096) != 0 ? null : str11, (i11 & 8192) == 0 ? str12 : null);
    }

    private final String c(String str, String str2, long j10, String str3) {
        f fVar = f.f2603a;
        String a10 = a.a(fVar.a(str + j10 + str2), a.c(str3), a.b(String.valueOf(j10)));
        Intrinsics.checkNotNullExpressionValue(a10, "encrypt(...)");
        return a10;
    }

    @NotNull
    public final CdnEvent a(@NotNull String eventType, @Nullable String str, @Nullable String str2, @Nullable String str3, long j10, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, int i10, @Nullable String str10, @Nullable String str11) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        CdnEvent cdnEvent = new CdnEvent();
        c cVar = c.f2594a;
        cdnEvent.setBrand(cVar.b());
        cdnEvent.setModel(cVar.c());
        cdnEvent.setUid(f25581c);
        cdnEvent.setDevice_id(f25582d);
        cdnEvent.setOs("android");
        cdnEvent.setOs_version(cVar.d());
        cdnEvent.setCountry_code(f25580b);
        cdnEvent.setApp_version(cVar.a());
        cdnEvent.setEvent_type(eventType);
        cdnEvent.setLocal_time(System.currentTimeMillis());
        if (f25583e != -1) {
            cdnEvent.setCheck_time(cdnEvent.getLocal_time() + f25583e);
        }
        cdnEvent.setEvent_time(cdnEvent.getCheck_time() == -1 ? cdnEvent.getLocal_time() : cdnEvent.getCheck_time());
        cdnEvent.setCdn_domain(str);
        cdnEvent.setResource(str2);
        cdnEvent.setResolution(str3);
        cdnEvent.setEvent_duration(j10);
        cdnEvent.setBatch_id(str4);
        cdnEvent.setReq_header(str5);
        cdnEvent.setRes_header(str6);
        cdnEvent.setErr_code(str7);
        cdnEvent.setHttp_status_code(str8);
        cdnEvent.setBlock_type(str9);
        cdnEvent.setVideo_duration(i10);
        cdnEvent.setNetwork_type(str10);
        cdnEvent.setRemark(str11);
        cdnEvent.setPlay_sdk_version("1.42.3.103");
        cdnEvent.setCollect_sdk_version("1.2.8");
        return cdnEvent;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(2:3|(9:5|6|7|(1:(1:10)(2:25|26))(3:27|28|(1:30))|11|12|(1:14)(1:23)|15|(1:22)(2:19|20)))|33|6|7|(0)(0)|11|12|(0)(0)|15|(1:17)|22) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
        bc.e.f2600a.c("CdnRepo", "httpLog: getCdnList", r7);
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull rs.c<? super java.util.List<com.jiuzhou.cdn.model.CdnInfo>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.jiuzhou.cdn.repo.CdnRepo$getCdnListAsync$1
            if (r0 == 0) goto L13
            r0 = r7
            com.jiuzhou.cdn.repo.CdnRepo$getCdnListAsync$1 r0 = (com.jiuzhou.cdn.repo.CdnRepo$getCdnListAsync$1) r0
            int r1 = r0.f25587j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25587j = r1
            goto L18
        L13:
            com.jiuzhou.cdn.repo.CdnRepo$getCdnListAsync$1 r0 = new com.jiuzhou.cdn.repo.CdnRepo$getCdnListAsync$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f25585h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f25587j
            java.lang.String r3 = "CdnRepo"
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2e
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L2c
            goto L48
        L2c:
            r7 = move-exception
            goto L4b
        L2e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L36:
            kotlin.f.b(r7)
            yb.b$a r7 = yb.b.f70765a     // Catch: java.lang.Exception -> L2c
            yb.b r7 = r7.b()     // Catch: java.lang.Exception -> L2c
            r0.f25587j = r4     // Catch: java.lang.Exception -> L2c
            java.lang.Object r7 = r7.b(r0)     // Catch: java.lang.Exception -> L2c
            if (r7 != r1) goto L48
            return r1
        L48:
            ac.a r7 = (ac.a) r7     // Catch: java.lang.Exception -> L2c
            goto L53
        L4b:
            bc.e$a r0 = bc.e.f2600a
            java.lang.String r1 = "httpLog: getCdnList"
            r0.c(r3, r1, r7)
            r7 = r5
        L53:
            bc.e$a r0 = bc.e.f2600a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "httpLog: "
            r1.append(r2)
            if (r7 == 0) goto L68
            java.lang.Object r2 = r7.b()
            java.util.List r2 = (java.util.List) r2
            goto L69
        L68:
            r2 = r5
        L69:
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.e(r3, r1)
            if (r7 == 0) goto L80
            boolean r0 = ac.b.a(r7)
            if (r0 == 0) goto L80
            java.lang.Object r7 = r7.b()
            return r7
        L80:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.repo.CdnRepo.d(rs.c):java.lang.Object");
    }

    @Nullable
    public final Object e(@NotNull List<CdnInfo> list, @NotNull rs.c<? super Unit> cVar) {
        long j10;
        ArrayList arrayList = new ArrayList();
        for (CdnInfo cdnInfo : list) {
            CdnRepo cdnRepo = f25579a;
            String cdn = cdnInfo.getCdn();
            String path = cdnInfo.getPath();
            Long latency = cdnInfo.getLatency();
            if (latency != null) {
                j10 = latency.longValue();
            } else {
                j10 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            }
            arrayList.add(b(cdnRepo, CdnEventType.TYPE_CDN_DETECT_TIME, cdn, path, null, j10, null, null, null, null, null, null, 0, null, null, 16360, null));
        }
        Object f10 = f(arrayList, cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(2:3|(8:5|6|7|8|(1:(2:11|12)(2:20|21))(2:22|(2:24|25)(7:26|(1:28)|29|30|31|32|(1:34)))|13|14|15))|37|6|7|8|(0)(0)|13|14|15|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        r2 = r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull java.util.List<com.jiuzhou.cdn.model.request.CdnEvent> r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r18) {
        /*
            r16 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.jiuzhou.cdn.repo.CdnRepo$logEvents$1
            if (r1 == 0) goto L18
            r1 = r0
            com.jiuzhou.cdn.repo.CdnRepo$logEvents$1 r1 = (com.jiuzhou.cdn.repo.CdnRepo$logEvents$1) r1
            int r2 = r1.f25590j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L18
            int r2 = r2 - r3
            r1.f25590j = r2
            r8 = r16
        L16:
            r15 = r1
            goto L20
        L18:
            com.jiuzhou.cdn.repo.CdnRepo$logEvents$1 r1 = new com.jiuzhou.cdn.repo.CdnRepo$logEvents$1
            r8 = r16
            r1.<init>(r8, r0)
            goto L16
        L20:
            java.lang.Object r0 = r15.f25588h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r15.f25590j
            java.lang.String r14 = "CdnRepo"
            r9 = 1
            if (r2 == 0) goto L3f
            if (r2 != r9) goto L37
            kotlin.f.b(r0)     // Catch: java.lang.Exception -> L34
            r2 = r14
            goto L86
        L34:
            r0 = move-exception
            r2 = r14
            goto L9e
        L37:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3f:
            kotlin.f.b(r0)
            boolean r0 = r17.isEmpty()
            if (r0 == 0) goto L4b
            kotlin.Unit r0 = kotlin.Unit.f60915a
            return r0
        L4b:
            com.jiuzhou.cdn.model.request.LogEventCdnReq r10 = new com.jiuzhou.cdn.model.request.LogEventCdnReq     // Catch: java.lang.Exception -> L34
            r0 = r17
            r10.<init>(r0)     // Catch: java.lang.Exception -> L34
            com.google.gson.Gson r0 = com.jiuzhou.cdn.repo.CdnRepo.f25584f     // Catch: java.lang.Exception -> L34
            java.lang.String r3 = r0.toJson(r10)     // Catch: java.lang.Exception -> L34
            bc.c r0 = bc.c.f2594a     // Catch: java.lang.Exception -> L34
            java.lang.String r0 = r0.a()     // Catch: java.lang.Exception -> L34
            if (r0 != 0) goto L62
            java.lang.String r0 = ""
        L62:
            r4 = r0
            long r11 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L34
            java.lang.String r13 = com.jiuzhou.cdn.repo.CdnRepo.f25582d     // Catch: java.lang.Exception -> L34
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)     // Catch: java.lang.Exception -> L34
            r2 = r16
            r5 = r11
            r7 = r13
            java.lang.String r0 = r2.c(r3, r4, r5, r7)     // Catch: java.lang.Exception -> L34
            yb.b$a r2 = yb.b.f70765a     // Catch: java.lang.Exception -> L34
            yb.b r2 = r2.b()     // Catch: java.lang.Exception -> L34
            r15.f25590j = r9     // Catch: java.lang.Exception -> L34
            r9 = r2
            r2 = r14
            r14 = r0
            java.lang.Object r0 = r9.a(r10, r11, r13, r14, r15)     // Catch: java.lang.Exception -> L9d
            if (r0 != r1) goto L86
            return r1
        L86:
            bc.e$a r1 = bc.e.f2600a     // Catch: java.lang.Exception -> L9d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9d
            r3.<init>()     // Catch: java.lang.Exception -> L9d
            java.lang.String r4 = "logEvents result -> "
            r3.append(r4)     // Catch: java.lang.Exception -> L9d
            r3.append(r0)     // Catch: java.lang.Exception -> L9d
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Exception -> L9d
            r1.e(r2, r0)     // Catch: java.lang.Exception -> L9d
            goto La5
        L9d:
            r0 = move-exception
        L9e:
            bc.e$a r1 = bc.e.f2600a
            java.lang.String r3 = "logEvents failed -> "
            r1.c(r2, r3, r0)
        La5:
            kotlin.Unit r0 = kotlin.Unit.f60915a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.repo.CdnRepo.f(java.util.List, rs.c):java.lang.Object");
    }

    public final void g(long j10) {
        f25583e = j10;
    }

    public final void h(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f25580b = str;
    }

    public final void i(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f25582d = str;
    }

    public final void j(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f25581c = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180  */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.functions.Function1] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(@org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull java.lang.String r20, @org.jetbrains.annotations.NotNull java.io.File r21, @org.jetbrains.annotations.NotNull java.lang.String r22, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r23, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r24, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r25) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.repo.CdnRepo.k(java.lang.String, java.lang.String, java.io.File, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }
}
