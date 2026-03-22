package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetaInstallReferrer.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MetaInstallReferrer {
    private final long actualTimestamp;
    @NotNull
    private final String installReferrer;
    private final int isCT;

    public MetaInstallReferrer(int i10, long j10, @NotNull String installReferrer) {
        Intrinsics.checkNotNullParameter(installReferrer, "installReferrer");
        this.isCT = i10;
        this.actualTimestamp = j10;
        this.installReferrer = installReferrer;
    }

    public static /* synthetic */ MetaInstallReferrer copy$default(MetaInstallReferrer metaInstallReferrer, int i10, long j10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = metaInstallReferrer.isCT;
        }
        if ((i11 & 2) != 0) {
            j10 = metaInstallReferrer.actualTimestamp;
        }
        if ((i11 & 4) != 0) {
            str = metaInstallReferrer.installReferrer;
        }
        return metaInstallReferrer.copy(i10, j10, str);
    }

    public final int component1() {
        return this.isCT;
    }

    public final long component2() {
        return this.actualTimestamp;
    }

    @NotNull
    public final String component3() {
        return this.installReferrer;
    }

    @NotNull
    public final MetaInstallReferrer copy(int i10, long j10, @NotNull String installReferrer) {
        Intrinsics.checkNotNullParameter(installReferrer, "installReferrer");
        return new MetaInstallReferrer(i10, j10, installReferrer);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetaInstallReferrer)) {
            return false;
        }
        MetaInstallReferrer metaInstallReferrer = (MetaInstallReferrer) obj;
        if (this.isCT == metaInstallReferrer.isCT && this.actualTimestamp == metaInstallReferrer.actualTimestamp && Intrinsics.areEqual(this.installReferrer, metaInstallReferrer.installReferrer)) {
            return true;
        }
        return false;
    }

    public final long getActualTimestamp() {
        return this.actualTimestamp;
    }

    @NotNull
    public final String getInstallReferrer() {
        return this.installReferrer;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.isCT) * 31) + Long.hashCode(this.actualTimestamp)) * 31) + this.installReferrer.hashCode();
    }

    public final int isCT() {
        return this.isCT;
    }

    @NotNull
    public String toString() {
        return "MetaInstallReferrer(isCT=" + this.isCT + ", actualTimestamp=" + this.actualTimestamp + ", installReferrer=" + this.installReferrer + ')';
    }
}
