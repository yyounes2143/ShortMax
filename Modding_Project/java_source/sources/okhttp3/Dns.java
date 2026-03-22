package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dns.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Dns {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f63434a = Companion.f63436a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Dns f63435b = new Companion.DnsSystem();

    /* compiled from: Dns.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f63436a = new Companion();

        /* compiled from: Dns.kt */
        @Metadata
        /* loaded from: classes8.dex */
        private static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            @NotNull
            public List<InetAddress> lookup(@NotNull String hostname) {
                Intrinsics.checkNotNullParameter(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    Intrinsics.checkNotNullExpressionValue(allByName, "getAllByName(hostname)");
                    return n.x1(allByName);
                } catch (NullPointerException e10) {
                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + hostname);
                    unknownHostException.initCause(e10);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }
    }

    @NotNull
    List<InetAddress> lookup(@NotNull String str) throws UnknownHostException;
}
