package androidx.privacysandbox.ads.adservices.signals;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtectedSignalsManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class ProtectedSignalsManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "ProtectedSignalsManager";

    /* compiled from: ProtectedSignalsManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi"})
        @ExperimentalFeatures.Ext12OptIn
        @Nullable
        public final ProtectedSignalsManager obtain(@NotNull Context context) {
            android.adservices.signals.ProtectedSignalsManager protectedSignalsManager;
            Intrinsics.checkNotNullParameter(context, "context");
            if (AdServicesInfo.INSTANCE.adServicesVersion() >= 12) {
                Log.d(ProtectedSignalsManager.TAG, "Adservices version 12 detected, obtaining ProtectedSignalsManagerImpl.");
                protectedSignalsManager = android.adservices.signals.ProtectedSignalsManager.get(context);
                Intrinsics.checkNotNullExpressionValue(protectedSignalsManager, "get(context)");
                return new ProtectedSignalsManagerImpl(protectedSignalsManager);
            }
            Log.d(ProtectedSignalsManager.TAG, "Adservices less than 12, returning null for ProtectedSignalsManager.obtain.");
            return null;
        }

        private Companion() {
        }
    }

    @SuppressLint({"NewApi"})
    @ExperimentalFeatures.Ext12OptIn
    @Nullable
    public static final ProtectedSignalsManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS")
    @ExperimentalFeatures.Ext12OptIn
    @Nullable
    public abstract Object updateSignals(@NotNull UpdateSignalsRequest updateSignalsRequest, @NotNull rs.c<? super Unit> cVar);
}
