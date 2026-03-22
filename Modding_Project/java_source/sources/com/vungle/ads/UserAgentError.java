package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UserAgentError extends VungleError {
    public UserAgentError() {
        super(Sdk.SDKError.Reason.USER_AGENT_ERROR, "Fail to get user agent.", null);
    }
}
