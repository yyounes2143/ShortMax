package androidx.work.impl.constraints;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NetworkState.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NetworkState {
    private final boolean isConnected;
    private final boolean isMetered;
    private final boolean isNotRoaming;
    private final boolean isValidated;

    public NetworkState(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.isConnected = z10;
        this.isValidated = z11;
        this.isMetered = z12;
        this.isNotRoaming = z13;
    }

    public static /* synthetic */ NetworkState copy$default(NetworkState networkState, boolean z10, boolean z11, boolean z12, boolean z13, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = networkState.isConnected;
        }
        if ((i10 & 2) != 0) {
            z11 = networkState.isValidated;
        }
        if ((i10 & 4) != 0) {
            z12 = networkState.isMetered;
        }
        if ((i10 & 8) != 0) {
            z13 = networkState.isNotRoaming;
        }
        return networkState.copy(z10, z11, z12, z13);
    }

    public final boolean component1() {
        return this.isConnected;
    }

    public final boolean component2() {
        return this.isValidated;
    }

    public final boolean component3() {
        return this.isMetered;
    }

    public final boolean component4() {
        return this.isNotRoaming;
    }

    @NotNull
    public final NetworkState copy(boolean z10, boolean z11, boolean z12, boolean z13) {
        return new NetworkState(z10, z11, z12, z13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkState)) {
            return false;
        }
        NetworkState networkState = (NetworkState) obj;
        if (this.isConnected == networkState.isConnected && this.isValidated == networkState.isValidated && this.isMetered == networkState.isMetered && this.isNotRoaming == networkState.isNotRoaming) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    public int hashCode() {
        boolean z10 = this.isConnected;
        int i10 = 1;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i11 = r02 * 31;
        ?? r22 = this.isValidated;
        int i12 = r22;
        if (r22 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        ?? r23 = this.isMetered;
        int i14 = r23;
        if (r23 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        boolean z11 = this.isNotRoaming;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return i15 + i10;
    }

    public final boolean isConnected() {
        return this.isConnected;
    }

    public final boolean isMetered() {
        return this.isMetered;
    }

    public final boolean isNotRoaming() {
        return this.isNotRoaming;
    }

    public final boolean isValidated() {
        return this.isValidated;
    }

    @NotNull
    public String toString() {
        return "NetworkState(isConnected=" + this.isConnected + ", isValidated=" + this.isValidated + ", isMetered=" + this.isMetered + ", isNotRoaming=" + this.isNotRoaming + ')';
    }
}
