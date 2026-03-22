package ai.turbolink.sdk;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.coroutines.InstallReferrers;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import at.p;
import gt.g;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkActivitySession.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkActivitySession {
    @Nullable
    private TurboLinkEvent.TurboLinkEventCallback callback;
    @NotNull
    private String event = "auto";
    private boolean isAutoInitialization;
    @Nullable
    private Uri uri;

    public TurboLinkActivitySession(@Nullable Activity activity) {
        Activity activity2;
        String str;
        Activity currentActivity;
        TurboLink companion = TurboLink.Companion.getInstance();
        if (activity != null) {
            if (companion != null) {
                activity2 = companion.getCurrentActivity();
            } else {
                activity2 = null;
            }
            if (activity2 != null) {
                if (companion != null && (currentActivity = companion.getCurrentActivity()) != null) {
                    str = currentActivity.getLocalClassName();
                } else {
                    str = null;
                }
                if (StringsKt.H(str, activity.getLocalClassName(), false, 2, null)) {
                    return;
                }
            }
            if (companion != null) {
                companion.setCurrentActivity(activity);
            }
        }
    }

    @NotNull
    public final TurboLinkActivitySession isAutoInitialization(boolean z10) {
        this.isAutoInitialization = z10;
        return this;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [android.content.Context, T] */
    public final void sessionInit() {
        AppPrefHelper appPrefHelper;
        TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback;
        TurboLinkLogger.v("Beginning session initialization");
        TurboLinkLogger.v("Session uri is " + this.uri);
        TurboLink.Companion companion = TurboLink.Companion;
        TurboLink companion2 = companion.getInstance();
        if (companion2 == null) {
            TurboLinkLogger.always("TurboLink is not setup properly. make sure to call autoInstance.");
            return;
        }
        TurboLink.SessionObj.INSTANCE.setAndGetSessionId();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        companion2.setSessionInitState(TurboLink.SESSION_STATE.INITIALISING);
        if (this.callback == null) {
            TurboLinkActivityLifeCycleObserver activityLifeCycleObserver = companion2.getActivityLifeCycleObserver();
            if (activityLifeCycleObserver != null) {
                turboLinkEventCallback = activityLifeCycleObserver.getInstanceEventCallback();
            } else {
                turboLinkEventCallback = null;
            }
            this.callback = turboLinkEventCallback;
        }
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = companion2.getApplicationContext();
        TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback2 = this.callback;
        TurboLink companion3 = companion.getInstance();
        if (companion3 != null && (appPrefHelper = companion3.getAppPrefHelper()) != null && appPrefHelper.isAppNewInstall()) {
            InstallReferrers.INSTANCE.googleInstallReferrer((Context) objectRef2.element, new p<Boolean, String, Long, Long, Boolean, Unit>() { // from class: ai.turbolink.sdk.TurboLinkActivitySession$sessionInit$1
                @Override // at.p
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, String str, Long l10, Long l11, Boolean bool2) {
                    invoke(bool.booleanValue(), str, l10.longValue(), l11.longValue(), bool2.booleanValue());
                    return Unit.f60915a;
                }

                public final void invoke(boolean z10, @Nullable String str, long j10, long j11, boolean z11) {
                    if (z10) {
                        TurboLink.InstallReferrerObj installReferrerObj = TurboLink.InstallReferrerObj.INSTANCE;
                        if (str == null) {
                            str = "";
                        }
                        installReferrerObj.setInstallReferrer(str);
                        installReferrerObj.setGooglePlayInstantParam(z11);
                        installReferrerObj.setInstallBeginTimestampSeconds(j11);
                        installReferrerObj.setReferrerClickTimestampSeconds(j10);
                    }
                }
            });
        }
        g.d(i.a(q0.b()), null, null, new TurboLinkActivitySession$sessionInit$2(objectRef2, this, objectRef, turboLinkEventCallback2, companion2, null), 3, null);
    }

    @NotNull
    public final TurboLinkActivitySession withCallback(@Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        this.callback = turboLinkEventCallback;
        return this;
    }

    @NotNull
    public final TurboLinkActivitySession withEvent(@NotNull String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
        return this;
    }

    @NotNull
    public final TurboLinkActivitySession withUriData(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.uri = uri;
        return this;
    }
}
