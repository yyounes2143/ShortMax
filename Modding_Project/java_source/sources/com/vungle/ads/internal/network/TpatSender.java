package com.vungle.ads.internal.network;

import androidx.annotation.VisibleForTesting;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.model.ErrorInfo;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Regex;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: TpatSender.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TpatSender {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String FAILED_TPATS = "FAILED_TPATS";
    @NotNull
    private static final String TAG = "TpatSender";
    @NotNull
    private final Executor jobExecutor;
    @Nullable
    private final SignalManager signalManager;
    @NotNull
    private final FilePreferences tpatFilePreferences;
    @NotNull
    private final Object tpatLock;
    @NotNull
    private final VungleApiClient vungleApiClient;

    /* compiled from: TpatSender.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public TpatSender(@NotNull VungleApiClient vungleApiClient, @NotNull Executor ioExecutor, @NotNull Executor jobExecutor, @NotNull PathProvider pathProvider, @Nullable SignalManager signalManager) {
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(ioExecutor, "ioExecutor");
        Intrinsics.checkNotNullParameter(jobExecutor, "jobExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.vungleApiClient = vungleApiClient;
        this.jobExecutor = jobExecutor;
        this.signalManager = signalManager;
        this.tpatFilePreferences = FilePreferences.Companion.get(ioExecutor, pathProvider, FilePreferences.TPAT_FAILED_FILENAME);
        this.tpatLock = new Object();
    }

    private final Map<String, FailedTpat> getStoredTpats() {
        Object d10;
        String string = this.tpatFilePreferences.getString(FAILED_TPATS);
        if (string != null) {
            try {
                Result.a aVar = Result.f60901b;
                a.C0857a c0857a = kotlinx.serialization.json.a.f61939d;
                xt.a serializersModule = c0857a.getSerializersModule();
                KTypeProjection.Companion companion = KTypeProjection.Companion;
                KSerializer<Object> c10 = t.c(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion.invariant(Reflection.typeOf(String.class)), companion.invariant(Reflection.typeOf(FailedTpat.class)))));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                d10 = Result.d((Map) c0857a.b(c10, string));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            Throwable g10 = Result.g(d10);
            if (g10 != null) {
                Logger.Companion companion2 = Logger.Companion;
                companion2.e(TAG, "Failed to decode stored tpats: " + g10);
            }
            if (Result.g(d10) != null) {
                d10 = new LinkedHashMap();
            }
            Map<String, FailedTpat> map = (Map) d10;
            if (map != null) {
                return map;
            }
        }
        return new LinkedHashMap();
    }

    private final boolean isPriorityTpat(String str) {
        if (!Intrinsics.areEqual(str, Constants.CHECKPOINT_0) && !Intrinsics.areEqual(str, Constants.CLICK_URL) && !Intrinsics.areEqual(str, "impression") && !Intrinsics.areEqual(str, Constants.LOAD_AD)) {
            return false;
        }
        return true;
    }

    private final void logTpatError(TpatRequest tpatRequest, String str, ErrorInfo errorInfo, Sdk.SDKError.Reason reason) {
        String str2 = "tpat key: " + tpatRequest.getTpatKey() + ", error: " + errorInfo.getDescription() + ", errorIsTerminal: " + errorInfo.getErrorIsTerminal() + " url: " + str;
        Logger.Companion.e(TAG, str2);
        new TpatError(reason, str2).setLogEntry$vungle_ads_release(tpatRequest.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0051, code lost:
        if (r2 < r11.getPriorityRetryCount()) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0053, code lost:
        r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_RETRY_FAILED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0056, code lost:
        r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0058, code lost:
        logTpatError(r11, r12, r1, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.vungle.ads.internal.model.ErrorInfo performPriorityRetry(com.vungle.ads.internal.network.TpatRequest r11, java.lang.String r12) {
        /*
            r10 = this;
            java.lang.Boolean r0 = r11.getPriorityRetry()
            if (r0 == 0) goto Lb
            boolean r0 = r0.booleanValue()
            goto L13
        Lb:
            java.lang.String r0 = r11.getTpatKey()
            boolean r0 = r10.isPriorityTpat(r0)
        L13:
            com.vungle.ads.internal.ConfigManager r1 = com.vungle.ads.internal.ConfigManager.INSTANCE
            boolean r1 = r1.retryPriorityTPATs()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L21
            if (r0 == 0) goto L21
            r0 = r3
            goto L22
        L21:
            r0 = r2
        L22:
            com.vungle.ads.internal.network.VungleApiClient r4 = r10.vungleApiClient
            java.util.Map r6 = r11.getHeaders()
            java.lang.String r7 = r11.getBody()
            com.vungle.ads.internal.network.HttpMethod r8 = r11.getMethod()
            com.vungle.ads.internal.util.LogEntry r9 = r11.getLogEntry()
            r5 = r12
            com.vungle.ads.internal.model.ErrorInfo r1 = r4.pingTPAT(r5, r6, r7, r8, r9)
            if (r0 == 0) goto L4b
            if (r1 == 0) goto L4b
            boolean r4 = r1.isRetryCode()
            if (r4 != r3) goto L4b
            int r2 = r2 + 1
            int r4 = r11.getPriorityRetryCount()
            if (r2 < r4) goto L22
        L4b:
            if (r1 == 0) goto L5b
            int r0 = r11.getPriorityRetryCount()
            if (r2 < r0) goto L56
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_RETRY_FAILED
            goto L58
        L56:
            com.vungle.ads.internal.protos.Sdk$SDKError$Reason r0 = com.vungle.ads.internal.protos.Sdk.SDKError.Reason.TPAT_ERROR
        L58:
            r10.logTpatError(r11, r12, r1, r0)
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.TpatSender.performPriorityRetry(com.vungle.ads.internal.network.TpatRequest, java.lang.String):com.vungle.ads.internal.model.ErrorInfo");
    }

    private final void saveStoredTpats(Map<String, FailedTpat> map) {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            FilePreferences filePreferences = this.tpatFilePreferences;
            a.C0857a c0857a = kotlinx.serialization.json.a.f61939d;
            xt.a serializersModule = c0857a.getSerializersModule();
            KTypeProjection.Companion companion = KTypeProjection.Companion;
            KSerializer<Object> c10 = t.c(serializersModule, Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion.invariant(Reflection.typeOf(String.class)), companion.invariant(Reflection.typeOf(FailedTpat.class)))));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            filePreferences.put(FAILED_TPATS, c0857a.a(c10, map)).apply();
            d10 = Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (Result.g(d10) != null) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Failed to encode the about to storing tpats: " + map);
        }
    }

    public static /* synthetic */ void sendTpat$default(TpatSender tpatSender, TpatRequest tpatRequest, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        tpatSender.sendTpat(tpatRequest, z10);
    }

    /* renamed from: sendTpat$lambda-1 */
    public static final void m4813sendTpat$lambda1(TpatSender this$0, TpatRequest request, String urlWithSessionId, boolean z10) {
        int i10;
        FailedTpat failedTpat;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(urlWithSessionId, "$urlWithSessionId");
        ErrorInfo performPriorityRetry = this$0.performPriorityRetry(request, urlWithSessionId);
        if (!request.getRegularRetry()) {
            return;
        }
        if (performPriorityRetry != null && performPriorityRetry.getErrorIsTerminal()) {
            return;
        }
        if (performPriorityRetry == null && !z10) {
            return;
        }
        synchronized (this$0.tpatLock) {
            try {
                Map<String, FailedTpat> storedTpats = this$0.getStoredTpats();
                FailedTpat failedTpat2 = storedTpats.get(request.getUrl());
                if (failedTpat2 != null) {
                    i10 = failedTpat2.getRetryAttempt();
                } else {
                    i10 = 0;
                }
                if (performPriorityRetry == null && i10 > 0) {
                    storedTpats.remove(request.getUrl());
                    this$0.saveStoredTpats(storedTpats);
                } else if (performPriorityRetry != null && i10 >= request.getRegularRetryCount()) {
                    storedTpats.remove(request.getUrl());
                    this$0.saveStoredTpats(storedTpats);
                    this$0.logTpatError(request, urlWithSessionId, performPriorityRetry, Sdk.SDKError.Reason.TPAT_RETRY_FAILED);
                } else if (performPriorityRetry != null) {
                    FailedTpat failedTpat3 = storedTpats.get(request.getUrl());
                    if (failedTpat3 == null || (failedTpat = FailedTpat.copy$default(failedTpat3, null, null, null, i10 + 1, 0, null, 55, null)) == null) {
                        failedTpat = new FailedTpat(request.getMethod(), request.getHeaders(), request.getBody(), 1, request.getRegularRetryCount(), request.getTpatKey());
                    }
                    storedTpats.put(request.getUrl(), failedTpat);
                    this$0.saveStoredTpats(storedTpats);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final Executor getJobExecutor() {
        return this.jobExecutor;
    }

    @Nullable
    public final SignalManager getSignalManager() {
        return this.signalManager;
    }

    @NotNull
    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    @VisibleForTesting
    @NotNull
    public final String injectSessionIdToUrl(@NotNull String url) {
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        SignalManager signalManager = this.signalManager;
        if (signalManager != null) {
            str = signalManager.getUuid();
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        if (str.length() > 0) {
            String quote = Pattern.quote(Constants.SESSION_ID);
            Intrinsics.checkNotNullExpressionValue(quote, "quote(Constants.SESSION_ID)");
            return new Regex(quote).replace(url, str);
        }
        return url;
    }

    public final void resendStoredTpats$vungle_ads_release() {
        for (Map.Entry<String, FailedTpat> entry : getStoredTpats().entrySet()) {
            FailedTpat value = entry.getValue();
            sendTpat(new TpatRequest.Builder(entry.getKey()).regularRetry(true).priorityRetry(false).headers(value.getHeaders()).body(value.getBody()).regularRetryCount(value.getRetryCount()).method(value.getMethod()).tpatKey(value.getTpatKey()).build(), true);
        }
    }

    public final void sendTpat(@NotNull final TpatRequest request, final boolean z10) {
        Intrinsics.checkNotNullParameter(request, "request");
        final String injectSessionIdToUrl = injectSessionIdToUrl(request.getUrl());
        this.jobExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.a
            @Override // java.lang.Runnable
            public final void run() {
                TpatSender.m4813sendTpat$lambda1(TpatSender.this, request, injectSessionIdToUrl, z10);
            }
        });
    }

    public /* synthetic */ TpatSender(VungleApiClient vungleApiClient, Executor executor, Executor executor2, PathProvider pathProvider, SignalManager signalManager, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(vungleApiClient, executor, executor2, pathProvider, (i10 & 16) != 0 ? null : signalManager);
    }
}
