package com.moloco.sdk.internal.unity_bridge;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.unity_bridge.internal.g;
import com.moloco.sdk.publisher.Initialization;
import com.moloco.sdk.publisher.MediationInfo;
import com.moloco.sdk.publisher.Moloco;
import com.moloco.sdk.publisher.MolocoInitStatus;
import com.moloco.sdk.publisher.MolocoInitializationListener;
import com.moloco.sdk.publisher.init.MolocoInitParams;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.i;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class MolocoUnityPlugin {
    @NotNull
    private static final String TAG = "MolocoUnityPlugin";
    @NotNull
    public static final MolocoUnityPlugin INSTANCE = new MolocoUnityPlugin();
    @NotNull
    private static final e<Boolean> initState = o.a(Boolean.FALSE);
    @NotNull
    private static final i context$delegate = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.unity_bridge.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Context context_delegate$lambda$0;
            context_delegate$lambda$0 = MolocoUnityPlugin.context_delegate$lambda$0();
            return context_delegate$lambda$0;
        }
    });
    @NotNull
    private static final i adManager$delegate = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.unity_bridge.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g adManager_delegate$lambda$1;
            adManager_delegate$lambda$1 = MolocoUnityPlugin.adManager_delegate$lambda$1();
            return adManager_delegate$lambda$1;
        }
    });
    public static final int $stable = 8;

    private MolocoUnityPlugin() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g adManager_delegate$lambda$1() {
        return new g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context context_delegate$lambda$0() {
        return com.moloco.sdk.internal.android_context.b.b(null, 1, null);
    }

    private final g getAdManager() {
        return (g) adManager$delegate.getValue();
    }

    private final Context getContext() {
        return (Context) context$delegate.getValue();
    }

    public static final void initializeSdk(@NotNull final String appKey, @NotNull final String mediationName, @NotNull final MolocoUnityInitCallback callback) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(mediationName, "mediationName");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Moloco.initialize(new MolocoInitParams(INSTANCE.getContext(), appKey, new MediationInfo(mediationName)), new MolocoInitializationListener() { // from class: com.moloco.sdk.internal.unity_bridge.a
            @Override // com.moloco.sdk.publisher.MolocoInitializationListener
            public final void onMolocoInitializationStatus(MolocoInitStatus molocoInitStatus) {
                MolocoUnityPlugin.initializeSdk$lambda$3(appKey, mediationName, callback, molocoInitStatus);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initializeSdk$lambda$3(String str, String str2, MolocoUnityInitCallback molocoUnityInitCallback, MolocoInitStatus initStatus) {
        boolean z10;
        Intrinsics.checkNotNullParameter(initStatus, "initStatus");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, TAG, "initialized " + str + ' ' + str2 + ' ' + initStatus.getInitialization(), null, false, 12, null);
        if (initStatus.getInitialization() == Initialization.SUCCESS) {
            z10 = true;
        } else {
            z10 = false;
        }
        initState.setValue(Boolean.valueOf(z10));
        molocoUnityInitCallback.onInitialized(z10);
    }

    public static final void loadInterstitial(@NotNull String mediation, @NotNull String adUnitId, @NotNull String bidResponse, @NotNull MolocoUnityLoadCallback callback) {
        Intrinsics.checkNotNullParameter(mediation, "mediation");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!initState.getValue().booleanValue()) {
            INSTANCE.logUninitializedAccessError("loadInterstitial");
        } else {
            INSTANCE.getAdManager().i(StringsKt.v1(mediation).toString(), StringsKt.v1(adUnitId).toString(), bidResponse, callback);
        }
    }

    private final void logUninitializedAccessError(String str) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.error$default(molocoLogger, TAG, "ERROR: Failed to execute " + str + "() - please ensure the Moloco Unity Plugin has been initialized by calling 'MolocoSdk.InitializeSdk();'!", null, false, 12, null);
    }

    public static final void showInterstitial(@NotNull String adUnitId, @NotNull MolocoUnityShowCallback callback) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!initState.getValue().booleanValue()) {
            INSTANCE.logUninitializedAccessError("showInterstitial");
        } else {
            INSTANCE.getAdManager().h(StringsKt.v1(adUnitId).toString(), callback);
        }
    }
}
