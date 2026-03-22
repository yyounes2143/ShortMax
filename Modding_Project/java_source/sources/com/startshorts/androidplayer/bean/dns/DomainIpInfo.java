package com.startshorts.androidplayer.bean.dns;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DomainIpInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DomainIpInfo {
    @NotNull
    private final String domain;
    private final long expirationTime;
    @NotNull
    private final List<String> ips;

    public DomainIpInfo(@NotNull String domain, @NotNull List<String> ips, long j10) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(ips, "ips");
        this.domain = domain;
        this.ips = ips;
        this.expirationTime = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DomainIpInfo copy$default(DomainIpInfo domainIpInfo, String str, List list, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = domainIpInfo.domain;
        }
        if ((i10 & 2) != 0) {
            list = domainIpInfo.ips;
        }
        if ((i10 & 4) != 0) {
            j10 = domainIpInfo.expirationTime;
        }
        return domainIpInfo.copy(str, list, j10);
    }

    @NotNull
    public final String component1() {
        return this.domain;
    }

    @NotNull
    public final List<String> component2() {
        return this.ips;
    }

    public final long component3() {
        return this.expirationTime;
    }

    @NotNull
    public final DomainIpInfo copy(@NotNull String domain, @NotNull List<String> ips, long j10) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(ips, "ips");
        return new DomainIpInfo(domain, ips, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DomainIpInfo)) {
            return false;
        }
        DomainIpInfo domainIpInfo = (DomainIpInfo) obj;
        if (Intrinsics.areEqual(this.domain, domainIpInfo.domain) && Intrinsics.areEqual(this.ips, domainIpInfo.ips) && this.expirationTime == domainIpInfo.expirationTime) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDomain() {
        return this.domain;
    }

    public final long getExpirationTime() {
        return this.expirationTime;
    }

    @NotNull
    public final List<String> getIps() {
        return this.ips;
    }

    public int hashCode() {
        return (((this.domain.hashCode() * 31) + this.ips.hashCode()) * 31) + Long.hashCode(this.expirationTime);
    }

    @NotNull
    public String toString() {
        return "DomainIpInfo(domain=" + this.domain + ", ips=" + this.ips + ", expirationTime=" + this.expirationTime + ')';
    }
}
