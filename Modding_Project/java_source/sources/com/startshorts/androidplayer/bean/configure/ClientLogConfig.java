package com.startshorts.androidplayer.bean.configure;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClientLogConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ClientLogConfig {

    /* renamed from: id  reason: collision with root package name */
    private final int f38112id;
    private final int logStatus;
    private final int userId;

    public ClientLogConfig(int i10, int i11, int i12) {
        this.f38112id = i10;
        this.userId = i11;
        this.logStatus = i12;
    }

    public static /* synthetic */ ClientLogConfig copy$default(ClientLogConfig clientLogConfig, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = clientLogConfig.f38112id;
        }
        if ((i13 & 2) != 0) {
            i11 = clientLogConfig.userId;
        }
        if ((i13 & 4) != 0) {
            i12 = clientLogConfig.logStatus;
        }
        return clientLogConfig.copy(i10, i11, i12);
    }

    public final boolean allowReport() {
        if (this.logStatus == 1) {
            return true;
        }
        return false;
    }

    public final int component1() {
        return this.f38112id;
    }

    public final int component2() {
        return this.userId;
    }

    public final int component3() {
        return this.logStatus;
    }

    @NotNull
    public final ClientLogConfig copy(int i10, int i11, int i12) {
        return new ClientLogConfig(i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientLogConfig)) {
            return false;
        }
        ClientLogConfig clientLogConfig = (ClientLogConfig) obj;
        if (this.f38112id == clientLogConfig.f38112id && this.userId == clientLogConfig.userId && this.logStatus == clientLogConfig.logStatus) {
            return true;
        }
        return false;
    }

    public final int getId() {
        return this.f38112id;
    }

    public final int getLogStatus() {
        return this.logStatus;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.f38112id) * 31) + Integer.hashCode(this.userId)) * 31) + Integer.hashCode(this.logStatus);
    }

    @NotNull
    public String toString() {
        return "ClientLogConfig(id=" + this.f38112id + ", userId=" + this.userId + ", logStatus=" + this.logStatus + ')';
    }
}
