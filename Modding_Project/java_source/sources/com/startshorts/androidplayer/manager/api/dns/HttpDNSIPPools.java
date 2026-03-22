package com.startshorts.androidplayer.manager.api.dns;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.dns.DomainIpInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import jk.l;
import jk.v;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import qe.a;
import ud.b;
/* compiled from: HttpDNSIPPools.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpDNSIPPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,217:1\n200#1,6:218\n200#1,3:224\n204#1,2:228\n200#1,3:230\n204#1,2:236\n200#1,6:238\n200#1,6:244\n200#1,3:250\n204#1,2:259\n200#1,6:268\n1#2:227\n1734#3,3:233\n1734#3,2:253\n1755#3,3:255\n1736#3:258\n381#4,7:261\n*S KotlinDebug\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools\n*L\n48#1:218,6\n54#1:224,3\n54#1:228,2\n65#1:230,3\n65#1:236,2\n90#1:238,6\n107#1:244,6\n116#1:250,3\n116#1:259,2\n185#1:268,6\n66#1:233,3\n117#1:253,2\n117#1:255,3\n117#1:258\n184#1:261,7\n*E\n"})
/* loaded from: classes6.dex */
public final class HttpDNSIPPools {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final HttpDNSIPPools f41818a = new HttpDNSIPPools();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f41819b = c.b(new Function0() { // from class: ee.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List h10;
            h10 = HttpDNSIPPools.h();
            return h10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f41820c = c.b(new Function0() { // from class: ee.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            OkHttpClient i10;
            i10 = HttpDNSIPPools.i();
            return i10;
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, ReentrantLock> f41821d = new LinkedHashMap();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ReentrantLock f41822e = new ReentrantLock();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final HashSet<String> f41823f = new HashSet<>();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final ReentrantLock f41824g = new ReentrantLock();

    private HttpDNSIPPools() {
    }

    private final List<DomainIpInfo> f() {
        return (List) f41819b.getValue();
    }

    private final OkHttpClient g() {
        return (OkHttpClient) f41820c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List h() {
        ArrayList arrayList = new ArrayList();
        List<DomainIpInfo> q02 = b.f68412a.q0();
        if (q02 != null) {
            arrayList.addAll(q02);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient i() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.f(20000L, timeUnit);
        builder.Y(20000L, timeUnit);
        builder.V(20000L, timeUnit);
        return builder.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object k(java.lang.String r13, java.util.List<java.lang.String> r14) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools.k(java.lang.String, java.util.List):java.lang.Object");
    }

    private final void m(List<String> list, String str) {
        if (!DeviceUtil.f48146a.f0()) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("domain", l.d(list));
        bundle.putString("errorMessage", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "http_dns_query_failed", bundle, 0L, 4, null);
    }

    private final void n(String str) {
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("dns_list");
            long K = DeviceUtil.f48146a.K();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                final String string = jSONObject.getString("domain");
                ArrayList arrayList = new ArrayList();
                JSONArray optJSONArray = jSONObject.optJSONArray("ips");
                if (optJSONArray != null) {
                    int length2 = optJSONArray.length();
                    for (int i11 = 0; i11 < length2; i11++) {
                        String optString = optJSONArray.optString(i11);
                        if (optString != null && optString.length() != 0) {
                            arrayList.add(optString);
                        }
                    }
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray("ip6s");
                if (optJSONArray2 != null) {
                    int length3 = optJSONArray2.length();
                    for (int i12 = 0; i12 < length3; i12++) {
                        String optString2 = optJSONArray2.optString(i12);
                        if (optString2 != null && optString2.length() != 0) {
                            arrayList.add(optString2);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    Logger.f41511a.e("HttpDNSIPPools", "updateIpAddressList -> ips is empty, host=" + string);
                } else {
                    Map<String, ReentrantLock> map = f41821d;
                    ReentrantLock reentrantLock = map.get(string);
                    if (reentrantLock == null) {
                        reentrantLock = new ReentrantLock();
                        map.put(string, reentrantLock);
                    }
                    ReentrantLock reentrantLock2 = reentrantLock;
                    reentrantLock2.lock();
                    Intrinsics.checkNotNull(string);
                    DomainIpInfo domainIpInfo = new DomainIpInfo(string, arrayList, (a.f65321a.value().getHttpDNSIpExpirationTime() * 1000) + K);
                    HttpDNSIPPools httpDNSIPPools = f41818a;
                    CollectionsKt.O(httpDNSIPPools.f(), new Function1() { // from class: ee.c
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            boolean o10;
                            o10 = HttpDNSIPPools.o(string, (DomainIpInfo) obj);
                            return Boolean.valueOf(o10);
                        }
                    });
                    httpDNSIPPools.f().add(domainIpInfo);
                    reentrantLock2.unlock();
                }
            }
            b.f68412a.C3(f());
            Logger.f41511a.h("HttpDNSIPPools", "updateIpAddressList -> json parse success " + str + ", ipAddressList=" + f());
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updateIpAddressList -> json parse failed, ");
            String message = e10.getMessage();
            if (message == null) {
                message = "unknown error";
            }
            sb2.append(message);
            logger.e("HttpDNSIPPools", sb2.toString());
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(String str, DomainIpInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.getDomain(), str);
    }

    @NotNull
    public final List<DomainIpInfo> d() {
        ReentrantLock reentrantLock = f41822e;
        reentrantLock.lock();
        try {
            return CollectionsKt.d1(f41818a.f());
        } finally {
            reentrantLock.unlock();
        }
    }

    @Nullable
    public final List<String> e(@NotNull String domain) {
        List<String> list;
        Object obj;
        Intrinsics.checkNotNullParameter(domain, "domain");
        long K = DeviceUtil.f48146a.K();
        ReentrantLock reentrantLock = f41822e;
        reentrantLock.lock();
        try {
            Iterator<T> it = f41818a.f().iterator();
            while (true) {
                list = null;
                if (it.hasNext()) {
                    obj = it.next();
                    DomainIpInfo domainIpInfo = (DomainIpInfo) obj;
                    if (Intrinsics.areEqual(domainIpInfo.getDomain(), domain) && domainIpInfo.getExpirationTime() > K) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            DomainIpInfo domainIpInfo2 = (DomainIpInfo) obj;
            if (domainIpInfo2 != null) {
                list = domainIpInfo2.getIps();
            }
            reentrantLock.unlock();
            return list;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void j(@NotNull List<String> domainToRefresh) {
        Intrinsics.checkNotNullParameter(domainToRefresh, "domainToRefresh");
        ReentrantLock reentrantLock = f41824g;
        reentrantLock.lock();
        try {
            List<String> list = domainToRefresh;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (String str : list) {
                    if (!f41823f.contains(str)) {
                        Unit unit = Unit.f60915a;
                        reentrantLock.unlock();
                        CoroutineUtil.l(CoroutineUtil.f48072a, "refreshIpAddress", false, new HttpDNSIPPools$refreshAsync$2(domainToRefresh, null), 2, null);
                        return;
                    }
                }
            }
            Logger logger = Logger.f41511a;
            logger.h("HttpDNSIPPools", "requestIpAddressRefresh ignore -> all domains are refreshing, domainToRefresh=" + domainToRefresh);
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @NotNull
    public final Object l(@NotNull List<String> domainToRefresh) {
        Object d10;
        Intrinsics.checkNotNullParameter(domainToRefresh, "domainToRefresh");
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("refreshIpAddress start-> domainToRefresh=");
        sb2.append(domainToRefresh);
        sb2.append(", domainRefreshingSet=");
        HashSet<String> hashSet = f41823f;
        sb2.append(hashSet);
        logger.h("HttpDNSIPPools", sb2.toString());
        ReentrantLock reentrantLock = f41824g;
        reentrantLock.lock();
        try {
            hashSet.addAll(domainToRefresh);
            reentrantLock.unlock();
            Result result = null;
            for (String str : v.r(a.f65321a.value().getHttpDNSQueryIpUrl())) {
                try {
                    result = Result.b(k(str, domainToRefresh));
                } catch (Exception e10) {
                    Logger logger2 = Logger.f41511a;
                    logger2.e("HttpDNSIPPools", "refreshIpAddress exception -> url=" + str + ", error=" + e10.getMessage());
                }
                if (Result.j(result.n())) {
                    break;
                }
            }
            f41824g.lock();
            try {
                HashSet<String> hashSet2 = f41823f;
                hashSet2.removeAll(CollectionsKt.i1(domainToRefresh));
                if (result != null) {
                    d10 = result.n();
                } else {
                    Result.a aVar = Result.f60901b;
                    d10 = Result.d(f.a(new Throwable("refreshIpAddress failed")));
                }
                Logger logger3 = Logger.f41511a;
                logger3.h("HttpDNSIPPools", "refreshIpAddress end -> domainRefreshingSet=" + hashSet2);
                return d10;
            } finally {
            }
        } finally {
        }
    }
}
