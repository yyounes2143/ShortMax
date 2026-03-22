package ee;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Dns;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkHttpDns.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d implements Dns {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f51341c = new a(null);

    /* compiled from: OkHttpDns.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final List<InetAddress> a(String str) {
        if (qe.a.f65321a.value().getHttpDNSApiEnable()) {
            try {
                List<String> e10 = HttpDNSIPPools.f41818a.e(str);
                Logger logger = Logger.f41511a;
                logger.h("OkHttpDns", "lookup -> hostName(" + str + ") HttpDNSIps(" + e10 + ')');
                List<String> list = e10;
                if (list != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : e10) {
                        InetAddress[] allByName = InetAddress.getAllByName(str2);
                        arrayList.addAll(CollectionsKt.q(Arrays.copyOf(allByName, allByName.length)));
                    }
                    return arrayList;
                }
                return null;
            } catch (Exception e11) {
                Logger logger2 = Logger.f41511a;
                logger2.e("OkHttpDns", "tryHttpDNSLookUp failed -> " + e11.getMessage());
                return null;
            }
        }
        return null;
    }

    @Override // okhttp3.Dns
    @NotNull
    public List<InetAddress> lookup(@NotNull String hostname) {
        List<InetAddress> list;
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        List<InetAddress> a10 = a(hostname);
        List<InetAddress> list2 = a10;
        if (list2 != null && !list2.isEmpty()) {
            return a10;
        }
        if (qe.a.f65321a.value().getHttpDNSLookupAgainIfLocalFailed()) {
            try {
                list = Dns.f63435b.lookup(hostname);
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("OkHttpDns", "Dns.SYSTEM.lookup failed -> " + e10.getMessage());
                list = null;
            }
            List<InetAddress> list3 = list;
            if (list3 == null || list3.isEmpty()) {
                list = a(hostname);
                List<InetAddress> list4 = list;
                if (list4 == null || list4.isEmpty()) {
                    throw new UnknownHostException("OkHttpDns lookup " + hostname + " failed");
                }
            }
            return list;
        }
        List<InetAddress> lookup = Dns.f63435b.lookup(hostname);
        Logger logger2 = Logger.f41511a;
        logger2.h("OkHttpDns", "ip -> " + lookup);
        return lookup;
    }
}
