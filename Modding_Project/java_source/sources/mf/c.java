package mf;

import android.os.Bundle;
import com.jiuzhou.cdn.CdnHelper;
import com.ss.mediakit.net.AVMDLCustomHTTPDNSParser;
import com.ss.mediakit.net.AVMDLCustomHTTPDNSParserResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: HttpDNSParser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpDNSParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSParser.kt\ncom/startshorts/androidplayer/manager/player/dns/HttpDNSParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,73:1\n1#2:74\n32#3,2:75\n*S KotlinDebug\n*F\n+ 1 HttpDNSParser.kt\ncom/startshorts/androidplayer/manager/player/dns/HttpDNSParser\n*L\n64#1:75,2\n*E\n"})
/* loaded from: classes6.dex */
public final class c implements AVMDLCustomHTTPDNSParser {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f62508a = new a(null);

    /* compiled from: HttpDNSParser.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String a() {
        try {
            CdnHelper cdnHelper = CdnHelper.f25532a;
            String r10 = cdnHelper.r();
            String host = new URL(cdnHelper.r()).getHost();
            if (host == null) {
                host = "";
            }
            Logger logger = Logger.f41511a;
            logger.h("HttpDNSParser", "getCdnHost -> selectCdn4Url=" + r10 + ",host=" + host);
            if (StringsKt.t0(host)) {
                return "akamai-static.shorttv.live";
            }
            return host;
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("HttpDNSParser", "getCdnHost -> exception=" + e10.getMessage() + ",selectCdn4Url=" + CdnHelper.f25532a.r());
            return "akamai-static.shorttv.live";
        }
    }

    private final void b(String str) {
        if (!DeviceUtil.f48146a.f0()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            Iterator<String> keys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, jSONObject.optString(next));
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "http_dns_query_failed", bundle, 0L, 4, null);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("HttpDNSParser", "reportHttpDnsError exception -> errMsg=" + e10.getMessage() + ",errorJson=" + str);
        }
    }

    @Override // com.ss.mediakit.net.AVMDLCustomHTTPDNSParser
    @NotNull
    public AVMDLCustomHTTPDNSParserResult parseHost(@NotNull String hostUnUse) {
        Intrinsics.checkNotNullParameter(hostUnUse, "hostUnUse");
        String a10 = a();
        Logger logger = Logger.f41511a;
        logger.h("HttpDNSParser", "parseHost -> start,host=" + a10);
        HttpDNSIPPools httpDNSIPPools = HttpDNSIPPools.f41818a;
        Object l10 = httpDNSIPPools.l(CollectionsKt.e(a10));
        if (Result.j(l10)) {
            ((Boolean) l10).booleanValue();
            List<String> e10 = httpDNSIPPools.e(a10);
            List<String> list = e10;
            if (list != null && !list.isEmpty()) {
                String A0 = CollectionsKt.A0(e10, ",", null, null, 0, null, null, 62, null);
                logger.h("HttpDNSParser", "parseHost succeed -> host=" + a10 + ",ips=" + A0);
                return new AVMDLCustomHTTPDNSParserResult(a10, A0, (int) qe.a.f65321a.value().getHttpDNSIpExpirationTime());
            }
            logger.e("HttpDNSParser", "ips is null");
        }
        Throwable g10 = Result.g(l10);
        if (g10 != null) {
            logger.e("HttpDNSParser", "parseHost exception -> " + g10.getMessage());
            String message = g10.getMessage();
            if (message == null) {
                message = "";
            }
            b(message);
        }
        return new AVMDLCustomHTTPDNSParserResult(a10, "", 60);
    }
}
