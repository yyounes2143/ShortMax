package com.unity3d.ads.core.domain.scar;

import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import gt.g0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c;
import kt.d;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonScarEventReceiver.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonScarEventReceiver implements IEventSender {
    @NotNull
    private final d<GmaEventData> _gmaEventFlow;
    @NotNull
    private final d<String> _versionFlow;
    @NotNull
    private final f<GmaEventData> gmaEventFlow;
    @NotNull
    private final g0 scope;
    @NotNull
    private final f<String> versionFlow;

    public CommonScarEventReceiver(@NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        d<String> b10 = g.b(0, 0, null, 7, null);
        this._versionFlow = b10;
        this.versionFlow = c.c(b10);
        d<GmaEventData> b11 = g.b(0, 0, null, 7, null);
        this._gmaEventFlow = b11;
        this.gmaEventFlow = c.c(b11);
    }

    @Override // com.unity3d.services.core.webview.bridge.IEventSender
    public boolean canSend() {
        return true;
    }

    @NotNull
    public final f<GmaEventData> getGmaEventFlow() {
        return this.gmaEventFlow;
    }

    @NotNull
    public final f<String> getVersionFlow() {
        return this.versionFlow;
    }

    @Override // com.unity3d.services.core.webview.bridge.IEventSender
    public boolean sendEvent(@NotNull Enum<?> eventCategory, @NotNull Enum<?> eventId, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(eventCategory, "eventCategory");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        Intrinsics.checkNotNullParameter(params, "params");
        if (CollectionsKt.g0(y0.j(WebViewEventCategory.INIT_GMA, WebViewEventCategory.GMA, WebViewEventCategory.BANNER), eventCategory)) {
            gt.g.d(this.scope, null, null, new CommonScarEventReceiver$sendEvent$1(eventId, params, this, null), 3, null);
            return true;
        }
        return false;
    }
}
