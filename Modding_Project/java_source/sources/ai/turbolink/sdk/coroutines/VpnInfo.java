package ai.turbolink.sdk.coroutines;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VpnInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class VpnInfo {
    @NotNull
    public static final VpnInfo INSTANCE = new VpnInfo();

    private VpnInfo() {
    }

    public final boolean isVpnConnected(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities != null) {
            return networkCapabilities.hasTransport(4);
        }
        return false;
    }
}
