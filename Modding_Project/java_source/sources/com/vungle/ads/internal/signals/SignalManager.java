package com.vungle.ads.internal.signals;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.UnclosedAd;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.session.UnclosedAdDetector;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: SignalManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SignalManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String SESSION_COUNT_KEY = "vungle_signal_session_count";
    private static final int SESSION_COUNT_NOT_SET = -1;
    @NotNull
    public static final String SESSION_TIME_KEY = "vungle_signal_session_creation_time";
    public static final int SIGNAL_VERSION = 1;
    @NotNull
    private static final String TAG = "SignalManager";
    public static final long TWENTY_FOUR_HOURS_MILLIS = 86400000;
    @NotNull
    private final Context context;
    @NotNull
    private SessionData currentSession;
    private long enterBackgroundTime;
    private long enterForegroundTime;
    @NotNull
    private final i filePreferences$delegate;
    @NotNull
    private final a json;
    @NotNull
    private ConcurrentHashMap<String, Long> mapOfLastLoadTimes;
    private int sessionCount;
    private long sessionDuration;
    private long sessionSeriesCreatedTime;
    @NotNull
    private UnclosedAdDetector unclosedAdDetector;

    /* compiled from: SignalManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SignalManager(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.json = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.signals.SignalManager$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
                invoke2(cVar);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull c Json) {
                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.enterForegroundTime = System.currentTimeMillis();
        this.sessionCount = -1;
        this.mapOfLastLoadTimes = new ConcurrentHashMap<>();
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.filePreferences$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        });
        registerNotifications();
        this.sessionSeriesCreatedTime = getFilePreferences().getLong(SESSION_TIME_KEY, -1L);
        updateSessionCount();
        this.currentSession = new SessionData(this.sessionCount);
        UnclosedAdDetector unclosedAdDetector = new UnclosedAdDetector(context, this.currentSession.getSessionId(), m4831_init_$lambda0(kotlin.c.a(lazyThreadSafetyMode, new Function0<Executors>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.executor.Executors] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Executors invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Executors.class);
            }
        })), m4832_init_$lambda1(kotlin.c.a(lazyThreadSafetyMode, new Function0<PathProvider>() { // from class: com.vungle.ads.internal.signals.SignalManager$special$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(PathProvider.class);
            }
        })));
        this.unclosedAdDetector = unclosedAdDetector;
        this.currentSession.setUnclosedAd(unclosedAdDetector.retrieveUnclosedAd());
    }

    /* renamed from: _init_$lambda-0  reason: not valid java name */
    private static final Executors m4831_init_$lambda0(i<? extends Executors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: _init_$lambda-1  reason: not valid java name */
    private static final PathProvider m4832_init_$lambda1(i<PathProvider> iVar) {
        return iVar.getValue();
    }

    private final void registerNotifications() {
        ActivityManager.Companion.addLifecycleListener(new ActivityManager.LifeCycleCallback() { // from class: com.vungle.ads.internal.signals.SignalManager$registerNotifications$1
            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onBackground() {
                Logger.Companion.d("SignalManager", "SignalManager#onBackground()");
                SignalManager.this.setEnterBackgroundTime(System.currentTimeMillis());
                SignalManager signalManager = SignalManager.this;
                signalManager.setSessionDuration(signalManager.getSessionDuration() + (SignalManager.this.getEnterBackgroundTime() - SignalManager.this.getEnterForegroundTime()));
            }

            @Override // com.vungle.ads.internal.util.ActivityManager.LifeCycleCallback
            public void onForeground() {
                Logger.Companion.d("SignalManager", "SignalManager#onForeground()");
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - SignalManager.this.getEnterBackgroundTime() > ConfigManager.INSTANCE.getSignalsSessionTimeout()) {
                    SignalManager.this.createNewSessionData();
                }
                SignalManager.this.setEnterForegroundTime(currentTimeMillis);
                SignalManager.this.setEnterBackgroundTime(0L);
            }
        });
    }

    private final void updateSessionCount() {
        if (this.sessionCount == -1) {
            this.sessionCount = getFilePreferences().getInt(SESSION_COUNT_KEY, 0);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = this.sessionSeriesCreatedTime;
        long j11 = currentTimeMillis - j10;
        if (j10 >= 0 && j11 < TWENTY_FOUR_HOURS_MILLIS) {
            this.sessionCount++;
        } else {
            this.sessionCount = 1;
            getFilePreferences().put(SESSION_TIME_KEY, currentTimeMillis);
            this.sessionSeriesCreatedTime = currentTimeMillis;
        }
        getFilePreferences().put(SESSION_COUNT_KEY, this.sessionCount);
        getFilePreferences().apply();
    }

    private final void updateSessionDuration() {
        this.currentSession.setSessionDuration((this.sessionDuration + System.currentTimeMillis()) - this.enterForegroundTime);
    }

    public final void createNewSessionData() {
        updateSessionCount();
        this.currentSession = new SessionData(this.sessionCount);
    }

    @Nullable
    public final String generateSignals() {
        updateSessionDuration();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("1:");
            a aVar = this.json;
            SessionData sessionData = this.currentSession;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(SessionData.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            sb2.append(aVar.a(c10, sessionData));
            return sb2.toString();
        } catch (Error | Exception unused) {
            return null;
        }
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final SessionData getCurrentSession$vungle_ads_release() {
        return this.currentSession;
    }

    public final long getEnterBackgroundTime() {
        return this.enterBackgroundTime;
    }

    public final long getEnterForegroundTime() {
        return this.enterForegroundTime;
    }

    @NotNull
    public final FilePreferences getFilePreferences() {
        return (FilePreferences) this.filePreferences$delegate.getValue();
    }

    @NotNull
    public final ConcurrentHashMap<String, Long> getMapOfLastLoadTimes() {
        return this.mapOfLastLoadTimes;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    public final long getSessionSeriesCreatedTime() {
        return this.sessionSeriesCreatedTime;
    }

    @NotNull
    public final synchronized SignaledAd getSignaledAd(@NotNull String placementId) {
        long currentTimeMillis;
        Long l10;
        try {
            Intrinsics.checkNotNullParameter(placementId, "placementId");
            currentTimeMillis = System.currentTimeMillis();
            if (this.mapOfLastLoadTimes.containsKey(placementId)) {
                l10 = this.mapOfLastLoadTimes.get(placementId);
            } else {
                l10 = null;
            }
            this.mapOfLastLoadTimes.put(placementId, Long.valueOf(currentTimeMillis));
        } catch (Throwable th2) {
            throw th2;
        }
        return new SignaledAd(l10, currentTimeMillis);
    }

    @NotNull
    public final String getUuid() {
        return this.currentSession.getSessionId();
    }

    public final synchronized void increaseSessionDepthCounter() {
        SessionData sessionData = this.currentSession;
        sessionData.setSessionDepthCounter(sessionData.getSessionDepthCounter() + 1);
    }

    public final void recordUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        Intrinsics.checkNotNullParameter(unclosedAd, "unclosedAd");
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.addUnclosedAd(unclosedAd);
    }

    public final void registerSignaledAd(@Nullable Context context, @NotNull SignaledAd signaledAd) {
        Intrinsics.checkNotNullParameter(signaledAd, "signaledAd");
        this.currentSession.getSignaledAd().clear();
        this.currentSession.getSignaledAd().add(signaledAd);
        this.currentSession.getSignaledAd().get(0).setScreenOrientation(screenOrientation(context));
    }

    public final void removeUnclosedAd(@NotNull UnclosedAd unclosedAd) {
        Intrinsics.checkNotNullParameter(unclosedAd, "unclosedAd");
        if (ConfigManager.INSTANCE.signalsDisabled()) {
            return;
        }
        this.unclosedAdDetector.removeUnclosedAd(unclosedAd);
    }

    public final int screenOrientation(@Nullable Context context) {
        Integer num;
        Configuration configuration;
        if (context == null) {
            context = this.context;
        }
        Resources resources = context.getResources();
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            num = Integer.valueOf(configuration.orientation);
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 2) {
            return 2;
        }
        if (num != null && num.intValue() == 1) {
            return 1;
        }
        if (num != null && num.intValue() == 0) {
            return 0;
        }
        return -1;
    }

    public final void setCurrentSession$vungle_ads_release(@NotNull SessionData sessionData) {
        Intrinsics.checkNotNullParameter(sessionData, "<set-?>");
        this.currentSession = sessionData;
    }

    public final void setEnterBackgroundTime(long j10) {
        this.enterBackgroundTime = j10;
    }

    public final void setEnterForegroundTime(long j10) {
        this.enterForegroundTime = j10;
    }

    public final void setMapOfLastLoadTimes(@NotNull ConcurrentHashMap<String, Long> concurrentHashMap) {
        Intrinsics.checkNotNullParameter(concurrentHashMap, "<set-?>");
        this.mapOfLastLoadTimes = concurrentHashMap;
    }

    public final void setSessionCount(int i10) {
        this.sessionCount = i10;
    }

    public final void setSessionDuration(long j10) {
        this.sessionDuration = j10;
    }

    public final void setSessionSeriesCreatedTime(long j10) {
        this.sessionSeriesCreatedTime = j10;
    }

    public final void updateTemplateSignals(@Nullable String str) {
        if (str != null && str.length() != 0 && !this.currentSession.getSignaledAd().isEmpty()) {
            this.currentSession.getSignaledAd().get(0).setTemplateSignals(str);
        }
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getCurrentSession$vungle_ads_release$annotations() {
    }
}
