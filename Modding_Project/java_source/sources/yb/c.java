package yb;

import bc.e;
import com.jiuzhou.cdn.CdnHelper;
import java.net.InetAddress;
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
/* loaded from: classes5.dex */
public final class c implements Dns {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f70768c = new a(null);

    /* compiled from: OkHttpDns.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final List<InetAddress> a(String str) {
        try {
            List<String> h10 = CdnHelper.f25532a.h(str);
            e.a aVar = e.f2600a;
            aVar.e("OkHttpDns", "lookup -> hostName(" + str + ") HttpDNSIps(" + h10 + ')');
            List<String> list = h10;
            if (list != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (String str2 : h10) {
                    InetAddress[] allByName = InetAddress.getAllByName(str2);
                    arrayList.addAll(CollectionsKt.q(Arrays.copyOf(allByName, allByName.length)));
                }
                return arrayList;
            }
            return null;
        } catch (Exception e10) {
            e.a aVar2 = e.f2600a;
            aVar2.b("OkHttpDns", "tryHttpDNSLookUp failed -> " + e10.getMessage());
            return null;
        }
    }

    @Override // okhttp3.Dns
    @NotNull
    public List<InetAddress> lookup(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        List<InetAddress> a10 = a(hostname);
        List<InetAddress> list = a10;
        if (list == null || list.isEmpty()) {
            return Dns.f63435b.lookup(hostname);
        }
        return a10;
    }
}
