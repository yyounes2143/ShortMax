package com.applovin.shadow.okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dns.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Dns {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final Dns SYSTEM = new Companion.DnsSystem();

    /* compiled from: Dns.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: Dns.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class DnsSystem implements Dns {
            @Override // com.applovin.shadow.okhttp3.Dns
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
