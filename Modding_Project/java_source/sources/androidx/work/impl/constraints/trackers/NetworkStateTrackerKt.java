package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import androidx.annotation.RestrictTo;
import androidx.core.net.ConnectivityManagerCompat;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi21;
import androidx.work.impl.utils.NetworkApi23;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NetworkStateTracker.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NetworkStateTrackerKt {
    @NotNull
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("NetworkStateTracker");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"NetworkStateTracker\")");
        TAG = tagWithPrefix;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final ConstraintTracker<NetworkState> NetworkStateTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        return new NetworkStateTracker24(context, taskExecutor);
    }

    @NotNull
    public static final NetworkState getActiveNetworkState(@NotNull ConnectivityManager connectivityManager) {
        boolean z10;
        Intrinsics.checkNotNullParameter(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z11 = false;
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean isActiveNetworkValidated = isActiveNetworkValidated(connectivityManager);
        boolean isActiveNetworkMetered = ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager);
        if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
            z11 = true;
        }
        return new NetworkState(z10, isActiveNetworkValidated, isActiveNetworkMetered, z11);
    }

    public static final boolean isActiveNetworkValidated(@NotNull ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "<this>");
        try {
            NetworkCapabilities networkCapabilitiesCompat = NetworkApi21.getNetworkCapabilitiesCompat(connectivityManager, NetworkApi23.getActiveNetworkCompat(connectivityManager));
            if (networkCapabilitiesCompat == null) {
                return false;
            }
            return NetworkApi21.hasCapabilityCompat(networkCapabilitiesCompat, 16);
        } catch (SecurityException e10) {
            Logger.get().error(TAG, "Unable to validate active network", e10);
            return false;
        }
    }

    public static /* synthetic */ void getActiveNetworkState$annotations(ConnectivityManager connectivityManager) {
    }
}
