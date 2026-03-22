package com.startshorts.androidplayer.bean.account;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClientIpInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ClientIpInfo {
    @NotNull

    /* renamed from: ip  reason: collision with root package name */
    private final String f38109ip;
    @NotNull
    private final String ipSource;

    public ClientIpInfo(@NotNull String ip2, @NotNull String ipSource) {
        Intrinsics.checkNotNullParameter(ip2, "ip");
        Intrinsics.checkNotNullParameter(ipSource, "ipSource");
        this.f38109ip = ip2;
        this.ipSource = ipSource;
    }

    public static /* synthetic */ ClientIpInfo copy$default(ClientIpInfo clientIpInfo, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = clientIpInfo.f38109ip;
        }
        if ((i10 & 2) != 0) {
            str2 = clientIpInfo.ipSource;
        }
        return clientIpInfo.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.f38109ip;
    }

    @NotNull
    public final String component2() {
        return this.ipSource;
    }

    @NotNull
    public final ClientIpInfo copy(@NotNull String ip2, @NotNull String ipSource) {
        Intrinsics.checkNotNullParameter(ip2, "ip");
        Intrinsics.checkNotNullParameter(ipSource, "ipSource");
        return new ClientIpInfo(ip2, ipSource);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientIpInfo)) {
            return false;
        }
        ClientIpInfo clientIpInfo = (ClientIpInfo) obj;
        if (Intrinsics.areEqual(this.f38109ip, clientIpInfo.f38109ip) && Intrinsics.areEqual(this.ipSource, clientIpInfo.ipSource)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getIp() {
        return this.f38109ip;
    }

    @NotNull
    public final String getIpSource() {
        return this.ipSource;
    }

    public int hashCode() {
        return (this.f38109ip.hashCode() * 31) + this.ipSource.hashCode();
    }

    @NotNull
    public String toString() {
        return "ClientIpInfo(ip=" + this.f38109ip + ", ipSource=" + this.ipSource + ')';
    }
}
