package com.jiuzhou.cdn;

import android.content.Context;
import android.net.Uri;
import bc.e;
import com.jiuzhou.cdn.CdnHelper;
import com.jiuzhou.cdn.a;
import com.jiuzhou.cdn.model.CdnInfo;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CdnHelper.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCdnHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n360#2,7:246\n1053#2:254\n774#2:255\n865#2,2:256\n1053#2:258\n295#2,2:259\n1#3:253\n*S KotlinDebug\n*F\n+ 1 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n*L\n68#1:246,7\n188#1:254\n194#1:255\n194#1:256,2\n195#1:258\n219#1:259,2\n*E\n"})
/* loaded from: classes5.dex */
public final class CdnHelper {
    @NotNull

    /* renamed from: a */
    public static final CdnHelper f25532a = new CdnHelper();
    @NotNull

    /* renamed from: b */
    private static final String f25533b = "CdnHelper";
    @NotNull

    /* renamed from: c */
    private static final i f25534c = c.b(new Function0() { // from class: xb.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap l10;
            l10 = CdnHelper.l();
            return l10;
        }
    });

    /* renamed from: d */
    private static final List<CdnInfo> f25535d = Collections.synchronizedList(new ArrayList());

    /* renamed from: e */
    private static final List<CdnInfo> f25536e = Collections.synchronizedList(new ArrayList());

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n*L\n1#1,102:1\n188#2:103\n*E\n"})
    /* loaded from: classes5.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            long j10;
            CdnInfo cdnInfo = (CdnInfo) t10;
            Long latency = cdnInfo.getLatency();
            long j11 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            if (latency != null) {
                j10 = latency.longValue();
            } else {
                j10 = 60000;
            }
            Float valueOf = Float.valueOf(((float) j10) * cdnInfo.getCdnWeight());
            CdnInfo cdnInfo2 = (CdnInfo) t11;
            Long latency2 = cdnInfo2.getLatency();
            if (latency2 != null) {
                j11 = latency2.longValue();
            }
            return ps.a.a(valueOf, Float.valueOf(((float) j11) * cdnInfo2.getCdnWeight()));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n*L\n1#1,102:1\n195#2:103\n*E\n"})
    /* loaded from: classes5.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            long j10;
            CdnInfo cdnInfo = (CdnInfo) t10;
            Long latency = cdnInfo.getLatency();
            long j11 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            if (latency != null) {
                j10 = latency.longValue();
            } else {
                j10 = 60000;
            }
            Float valueOf = Float.valueOf(((float) j10) * cdnInfo.getCdnWeight());
            CdnInfo cdnInfo2 = (CdnInfo) t11;
            Long latency2 = cdnInfo2.getLatency();
            if (latency2 != null) {
                j11 = latency2.longValue();
            }
            return ps.a.a(valueOf, Float.valueOf(((float) j11) * cdnInfo2.getCdnWeight()));
        }
    }

    private CdnHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(java.util.concurrent.atomic.AtomicInteger r5, rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.jiuzhou.cdn.CdnHelper$fetchAllCdnList$1
            if (r0 == 0) goto L13
            r0 = r6
            com.jiuzhou.cdn.CdnHelper$fetchAllCdnList$1 r0 = (com.jiuzhou.cdn.CdnHelper$fetchAllCdnList$1) r0
            int r1 = r0.f25546k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25546k = r1
            goto L18
        L13:
            com.jiuzhou.cdn.CdnHelper$fetchAllCdnList$1 r0 = new com.jiuzhou.cdn.CdnHelper$fetchAllCdnList$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f25544i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f25546k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f25543h
            java.util.concurrent.atomic.AtomicInteger r5 = (java.util.concurrent.atomic.AtomicInteger) r5
            kotlin.f.b(r6)
            goto L4b
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            int r6 = r5.get()
            if (r6 != 0) goto L6b
            com.jiuzhou.cdn.repo.CdnRepo r6 = com.jiuzhou.cdn.repo.CdnRepo.f25579a
            r0.f25543h = r5
            r0.f25546k = r3
            java.lang.Object r6 = r6.d(r0)
            if (r6 != r1) goto L4b
            return r1
        L4b:
            java.util.List r6 = (java.util.List) r6
            if (r6 != 0) goto L54
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
        L54:
            java.util.List<com.jiuzhou.cdn.model.CdnInfo> r0 = com.jiuzhou.cdn.CdnHelper.f25535d
            r0.clear()
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L6b
            r1 = 0
            boolean r5 = r5.compareAndSet(r1, r3)
            if (r5 == 0) goto L6b
            r0.addAll(r6)
        L6b:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.CdnHelper.g(java.util.concurrent.atomic.AtomicInteger, rs.c):java.lang.Object");
    }

    private final ConcurrentHashMap<String, List<String>> i() {
        return (ConcurrentHashMap) f25534c.getValue();
    }

    @NotNull
    public static final String j() {
        return f25533b;
    }

    public static final ConcurrentHashMap l() {
        return new ConcurrentHashMap();
    }

    public static final CdnInfo m(a.C0348a c0348a, List<CdnInfo> list) {
        Object obj;
        long j10;
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((CdnInfo) obj).getCdn(), c0348a.a())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        CdnInfo cdnInfo = (CdnInfo) obj;
        if (cdnInfo == null) {
            return null;
        }
        if (c0348a.c()) {
            j10 = c0348a.b();
        } else {
            j10 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        return CdnInfo.copy$default(cdnInfo, null, null, 0.0f, Long.valueOf(j10), Boolean.valueOf(c0348a.c()), 7, null);
    }

    public static /* synthetic */ Object o(CdnHelper cdnHelper, String str, long j10, Function0 function0, rs.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        return cdnHelper.n(str, j10, function0, cVar);
    }

    private final String p(String str, String str2, boolean z10) {
        Object obj;
        CdnInfo cdnInfo;
        Object obj2;
        CdnInfo cdnInfo2;
        try {
            Uri parse = Uri.parse(str);
            Uri parse2 = Uri.parse(str2);
            String uri = parse.buildUpon().scheme(parse2.getScheme()).authority(parse2.getAuthority()).build().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            e.f2600a.a(f25533b, "replaceUrlWithCdn: newCdn: " + str2 + "  url " + str + ",\n newUrl " + uri);
            if (uri.length() > 0) {
                String uri2 = new Uri.Builder().scheme(parse.getScheme()).authority(parse.getAuthority()).build().toString();
                Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
                List<CdnInfo> allCdnList = f25535d;
                Intrinsics.checkNotNullExpressionValue(allCdnList, "allCdnList");
                synchronized (allCdnList) {
                    Intrinsics.checkNotNullExpressionValue(allCdnList, "allCdnList");
                    Iterator<T> it = allCdnList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (Intrinsics.areEqual(((CdnInfo) obj).getCdn(), uri2)) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    cdnInfo = (CdnInfo) obj;
                }
                List<CdnInfo> cdnList = f25536e;
                Intrinsics.checkNotNullExpressionValue(cdnList, "cdnList");
                synchronized (cdnList) {
                    Intrinsics.checkNotNullExpressionValue(cdnList, "cdnList");
                    Iterator<T> it2 = cdnList.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            obj2 = it2.next();
                            CdnInfo cdnInfo3 = (CdnInfo) obj2;
                            String cdn = cdnInfo3.getCdn();
                            if (cdn != null && cdn.length() != 0) {
                                String cdn2 = cdnInfo3.getCdn();
                                if (cdn2 == null) {
                                    cdn2 = "";
                                }
                                if (StringsKt.b0(uri, cdn2, false, 2, null)) {
                                    break;
                                }
                            }
                        } else {
                            obj2 = null;
                            break;
                        }
                    }
                    cdnInfo2 = (CdnInfo) obj2;
                }
                if (cdnInfo != null && cdnInfo2 != null) {
                    e.f2600a.a(f25533b, "replaceUrlWithCdn: notify " + z10 + " onCdnUpdate oldCdn " + cdnInfo + ", newCdn " + cdnInfo2);
                }
            }
            return uri;
        } catch (Exception e10) {
            e.f2600a.b(f25533b, "replaceUrlWithCdn failed -> " + e10.getMessage());
            return null;
        }
    }

    static /* synthetic */ String q(CdnHelper cdnHelper, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return cdnHelper.p(str, str2, z10);
    }

    public static /* synthetic */ String t(CdnHelper cdnHelper, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return cdnHelper.s(str, z10);
    }

    private final void v(List<CdnInfo> list) {
        e.a aVar = e.f2600a;
        String str = f25533b;
        aVar.e(str, "updateCdnList:  " + list);
        List<CdnInfo> list2 = f25536e;
        list2.clear();
        list2.addAll(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ab A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object w(boolean r9, rs.c<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.CdnHelper.w(boolean, rs.c):java.lang.Object");
    }

    public final void e(@NotNull String host, @NotNull List<String> ips) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(ips, "ips");
        i().put(host, ips);
    }

    @Nullable
    public final Object f(@NotNull List<CdnInfo> list, @NotNull rs.c<? super kt.b<a.C0348a>> cVar) {
        kt.b b10;
        b10 = FlowKt__MergeKt.b(kotlinx.coroutines.flow.c.a(list), 0, new CdnHelper$checkCdnAsync$2(null), 1, null);
        return kotlinx.coroutines.flow.c.O(b10, new CdnHelper$checkCdnAsync$3(null));
    }

    @Nullable
    public final List<String> h(@NotNull String host) {
        Intrinsics.checkNotNullParameter(host, "host");
        return i().get(host);
    }

    public final void k(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        bc.b.f2592a.b(context.getApplicationContext());
        f25535d.clear();
    }

    @Nullable
    public final Object n(@NotNull String str, long j10, @NotNull Function0<Unit> function0, @NotNull rs.c<? super Unit> cVar) {
        int i10;
        e.f2600a.b(f25533b, "onUrlError url: " + str);
        List<CdnInfo> cdnList = f25536e;
        Intrinsics.checkNotNullExpressionValue(cdnList, "cdnList");
        synchronized (cdnList) {
            try {
                Intrinsics.checkNotNullExpressionValue(cdnList, "cdnList");
                Iterator<CdnInfo> it = cdnList.iterator();
                i10 = 0;
                while (true) {
                    if (it.hasNext()) {
                        String cdn = it.next().getCdn();
                        if (cdn == null) {
                            cdn = "";
                        }
                        if (StringsKt.b0(str, cdn, false, 2, null)) {
                            break;
                        }
                        i10++;
                    } else {
                        i10 = -1;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i10 >= 0) {
            List<CdnInfo> list = f25536e;
            list.add(list.remove(i10));
        }
        function0.invoke();
        return Unit.f60915a;
    }

    @Nullable
    public final String r() {
        String str;
        List<CdnInfo> cdnList = f25536e;
        if (cdnList.isEmpty()) {
            return null;
        }
        try {
            Intrinsics.checkNotNullExpressionValue(cdnList, "cdnList");
            CdnInfo cdnInfo = (CdnInfo) CollectionsKt.firstOrNull(cdnList);
            if (cdnInfo != null) {
                str = cdnInfo.getCdn();
            } else {
                str = null;
            }
            e.f2600a.a(f25533b, "selectCdn4Url: cdn " + str + ' ' + cdnList);
            return str;
        } catch (Exception e10) {
            e.a aVar = e.f2600a;
            String str2 = f25533b;
            aVar.b(str2, "selectCdn4Url failed -> " + e10.getMessage());
            aVar.a(str2, "selectCdn4Url: cdn null");
            return null;
        }
    }

    @Nullable
    public final String s(@NotNull String url, boolean z10) {
        Intrinsics.checkNotNullParameter(url, "url");
        String r10 = r();
        if (r10 == null || r10.length() == 0 || StringsKt.b0(url, r10, false, 2, null)) {
            return null;
        }
        return q(this, url, r10, false, 4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ab  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x00bb -> B:55:0x003b). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(boolean r12, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.jiuzhou.cdn.CdnHelper$updateCdn$1
            if (r0 == 0) goto L13
            r0 = r13
            com.jiuzhou.cdn.CdnHelper$updateCdn$1 r0 = (com.jiuzhou.cdn.CdnHelper$updateCdn$1) r0
            int r1 = r0.f25553n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f25553n = r1
            goto L18
        L13:
            com.jiuzhou.cdn.CdnHelper$updateCdn$1 r0 = new com.jiuzhou.cdn.CdnHelper$updateCdn$1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.f25551l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f25553n
            r3 = 3
            r4 = 0
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L66
            if (r2 == r6) goto L56
            if (r2 == r5) goto L46
            if (r2 != r3) goto L3e
            int r12 = r0.f25550k
            boolean r2 = r0.f25549j
            java.lang.Object r7 = r0.f25548i
            java.util.concurrent.atomic.AtomicInteger r7 = (java.util.concurrent.atomic.AtomicInteger) r7
            java.lang.Object r8 = r0.f25547h
            com.jiuzhou.cdn.CdnHelper r8 = (com.jiuzhou.cdn.CdnHelper) r8
            kotlin.f.b(r13)
        L3b:
            r13 = r12
            r12 = r2
            goto L7c
        L3e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L46:
            int r12 = r0.f25550k
            boolean r2 = r0.f25549j
            java.lang.Object r7 = r0.f25548i
            java.util.concurrent.atomic.AtomicInteger r7 = (java.util.concurrent.atomic.AtomicInteger) r7
            java.lang.Object r8 = r0.f25547h
            com.jiuzhou.cdn.CdnHelper r8 = (com.jiuzhou.cdn.CdnHelper) r8
            kotlin.f.b(r13)
            goto La5
        L56:
            int r12 = r0.f25550k
            boolean r2 = r0.f25549j
            java.lang.Object r7 = r0.f25548i
            java.util.concurrent.atomic.AtomicInteger r7 = (java.util.concurrent.atomic.AtomicInteger) r7
            java.lang.Object r8 = r0.f25547h
            com.jiuzhou.cdn.CdnHelper r8 = (com.jiuzhou.cdn.CdnHelper) r8
            kotlin.f.b(r13)
            goto L8f
        L66:
            kotlin.f.b(r13)
            bc.b$a r13 = bc.b.f2592a
            android.content.Context r13 = r13.a()
            if (r13 != 0) goto L74
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        L74:
            java.util.concurrent.atomic.AtomicInteger r13 = new java.util.concurrent.atomic.AtomicInteger
            r13.<init>(r4)
            r8 = r11
            r7 = r13
            r13 = r4
        L7c:
            r0.f25547h = r8
            r0.f25548i = r7
            r0.f25549j = r12
            r0.f25550k = r13
            r0.f25553n = r6
            java.lang.Object r2 = r8.g(r7, r0)
            if (r2 != r1) goto L8d
            return r1
        L8d:
            r2 = r12
            r12 = r13
        L8f:
            if (r12 >= r5) goto L93
            r13 = r6
            goto L94
        L93:
            r13 = r4
        L94:
            r0.f25547h = r8
            r0.f25548i = r7
            r0.f25549j = r2
            r0.f25550k = r12
            r0.f25553n = r5
            java.lang.Object r13 = r8.w(r13, r0)
            if (r13 != r1) goto La5
            return r1
        La5:
            int r12 = r12 + r6
            if (r2 != 0) goto Lab
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        Lab:
            r0.f25547h = r8
            r0.f25548i = r7
            r0.f25549j = r2
            r0.f25550k = r12
            r0.f25553n = r3
            r9 = 6000(0x1770, double:2.9644E-320)
            java.lang.Object r13 = kotlinx.coroutines.DelayKt.b(r9, r0)
            if (r13 != r1) goto L3b
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jiuzhou.cdn.CdnHelper.u(boolean, rs.c):java.lang.Object");
    }
}
