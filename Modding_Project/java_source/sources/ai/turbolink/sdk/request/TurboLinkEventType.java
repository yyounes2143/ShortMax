package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.events.TurboLinkEventExecute;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.event.EventAddtoCart;
import ai.turbolink.sdk.request.event.EventClick;
import ai.turbolink.sdk.request.event.EventCodeSearch;
import ai.turbolink.sdk.request.event.EventCustom;
import ai.turbolink.sdk.request.event.EventLoadUrl;
import ai.turbolink.sdk.request.event.EventLogin;
import ai.turbolink.sdk.request.event.EventLogout;
import ai.turbolink.sdk.request.event.EventRegister;
import ai.turbolink.sdk.request.event.EventReopen;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.content.Context;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServerDefines.kt */
@Metadata
/* loaded from: classes.dex */
public enum TurboLinkEventType {
    DEFAULT(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, new TurboLinkEventExecute() { // from class: ai.turbolink.sdk.events.TurboLinkEventDefaultExecute
        @Override // ai.turbolink.sdk.events.TurboLinkEventExecute
        public void execute(@NotNull TurboLink turboLink, @NotNull TurboLinkEvent turboLinkEvent) {
            Intrinsics.checkNotNullParameter(turboLink, "turboLink");
            Intrinsics.checkNotNullParameter(turboLinkEvent, "turboLinkEvent");
            TurboLinkEventExecute.DefaultImpls.execute(this, turboLink, turboLinkEvent);
            TurboLinkDefaultEvent turboLinkDefaultEvent = TurboLinkDefaultEvent.INSTALL;
            String event = turboLinkDefaultEvent.getEvent();
            TurboLinkDefaultEvent turboLinkDefaultEvent2 = TurboLinkDefaultEvent.OPEN;
            if (CollectionsKt.q(event, turboLinkDefaultEvent2.getEvent()).contains(turboLinkEvent.getEvent()) && turboLink.getSessionInitState() != TurboLink.SESSION_STATE.UNINITIALISED) {
                return;
            }
            String event2 = turboLinkDefaultEvent.getEvent();
            String event3 = turboLinkDefaultEvent2.getEvent();
            TurboLinkDefaultEvent turboLinkDefaultEvent3 = TurboLinkDefaultEvent.REOPEN;
            if (!CollectionsKt.q(event2, event3, turboLinkDefaultEvent3.getEvent()).contains(turboLinkEvent.getEvent())) {
                TurboLink.Companion companion = TurboLink.Companion;
                if (companion.getDisableAutoSessionInitialization() && turboLink.getSessionInitState() == TurboLink.SESSION_STATE.UNINITIALISED) {
                    companion.activitySessionBuilder(turboLinkEvent.getActivity()).sessionInit();
                }
            }
            String event4 = turboLinkEvent.getEvent();
            if (Intrinsics.areEqual(event4, turboLinkDefaultEvent.getEvent())) {
                TurboLink.Companion.activitySessionBuilder(turboLinkEvent.getActivity()).withEvent(turboLinkEvent.getEvent()).withCallback(turboLinkEvent.getCallback()).sessionInit();
            } else if (Intrinsics.areEqual(event4, turboLinkDefaultEvent2.getEvent())) {
                TurboLink.Companion.activitySessionBuilder(turboLinkEvent.getActivity()).withEvent(turboLinkEvent.getEvent()).withCallback(turboLinkEvent.getCallback()).sessionInit();
            } else if (Intrinsics.areEqual(event4, turboLinkDefaultEvent3.getEvent())) {
                turboLink.generateRequestInternal(new EventReopen(turboLink.getApplicationContext(), turboLinkEvent.getCallback()));
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.REGISTER.getEvent())) {
                Activity activity = turboLinkEvent.getActivity();
                if (activity != null) {
                    turboLink.generateRequestInternal(new EventRegister(turboLink.getApplicationContext(), turboLinkEvent.getCallback(), activity));
                } else {
                    TurboLinkLogger.e("The activity is null in call register method.");
                }
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.ADDTOCART.getEvent())) {
                turboLink.generateRequestInternal(new EventAddtoCart(turboLink.getApplicationContext(), turboLinkEvent.getCallback(), turboLinkEvent.getAddtoCartProperties()));
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.CLICK.getEvent())) {
                Context applicationContext = turboLink.getApplicationContext();
                TurboLinkEvent.TurboLinkEventCallback callback = turboLinkEvent.getCallback();
                String linkId = turboLinkEvent.getLinkId();
                if (linkId == null) {
                    linkId = "";
                }
                turboLink.generateRequestInternal(new EventClick(applicationContext, callback, linkId));
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.LOGIN.getEvent())) {
                Activity activity2 = turboLinkEvent.getActivity();
                if (activity2 != null) {
                    turboLink.generateRequestInternal(new EventLogin(turboLink.getApplicationContext(), turboLinkEvent.getCallback(), activity2, turboLinkEvent.getUserId()));
                } else {
                    TurboLinkLogger.e("The activity is null in call login method.");
                }
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.LOGOUT.getEvent())) {
                turboLink.generateRequestInternal(new EventLogout(turboLink.getApplicationContext(), turboLinkEvent.getCallback()));
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.CODESEARCH.getEvent())) {
                turboLink.generateRequestInternal(new EventCodeSearch(turboLink.getApplicationContext(), turboLinkEvent.getCallback()));
            } else if (Intrinsics.areEqual(event4, TurboLinkDefaultEvent.LOADURL.getEvent())) {
                turboLink.generateRequestInternal(new EventLoadUrl(turboLink.getApplicationContext(), turboLinkEvent.getCallback()));
            }
        }
    }),
    CUSTOM("custom", new TurboLinkEventExecute() { // from class: ai.turbolink.sdk.events.TurboLinkEventCustomExecute
        @Override // ai.turbolink.sdk.events.TurboLinkEventExecute
        public void execute(@NotNull TurboLink turboLink, @NotNull TurboLinkEvent turboLinkEvent) {
            Intrinsics.checkNotNullParameter(turboLink, "turboLink");
            Intrinsics.checkNotNullParameter(turboLinkEvent, "turboLinkEvent");
            TurboLinkEventExecute.DefaultImpls.execute(this, turboLink, turboLinkEvent);
            TurboLink.Companion companion = TurboLink.Companion;
            if (companion.getDisableAutoSessionInitialization() && turboLink.getSessionInitState() == TurboLink.SESSION_STATE.UNINITIALISED) {
                companion.activitySessionBuilder(turboLinkEvent.getActivity()).sessionInit();
            }
            turboLink.generateRequestInternal(new EventCustom(turboLinkEvent.getEvent(), turboLinkEvent.getCustomProperties(), turboLink.getApplicationContext(), turboLinkEvent.getCallback()));
        }
    });
    
    @NotNull
    private TurboLinkEventExecute handler;
    @NotNull
    private String type;

    TurboLinkEventType(String str, TurboLinkEventExecute turboLinkEventExecute) {
        this.type = str;
        this.handler = turboLinkEventExecute;
    }

    @NotNull
    public final TurboLinkEventExecute getHandler() {
        return this.handler;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setHandler(@NotNull TurboLinkEventExecute turboLinkEventExecute) {
        Intrinsics.checkNotNullParameter(turboLinkEventExecute, "<set-?>");
        this.handler = turboLinkEventExecute;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}
