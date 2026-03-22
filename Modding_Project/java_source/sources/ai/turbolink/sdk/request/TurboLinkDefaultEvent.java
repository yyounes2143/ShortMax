package ai.turbolink.sdk.request;

import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.applog.game.GameReportHelper;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServerDefines.kt */
@Metadata
/* loaded from: classes.dex */
public enum TurboLinkDefaultEvent {
    INSTALL("install"),
    OPEN(MRAIDPresenter.OPEN),
    REOPEN("reopen"),
    REGISTER(GameReportHelper.REGISTER),
    CLICK("click"),
    LOGIN(AppLovinEventTypes.USER_LOGGED_IN),
    LOGOUT("logout"),
    LOADURL("loadurl"),
    CODESEARCH("code_search"),
    ADDTOCART("tl_add_to_cart");
    
    @NotNull
    private final String event;

    TurboLinkDefaultEvent(String str) {
        this.event = str;
    }

    @NotNull
    public final String getEvent() {
        return this.event;
    }
}
