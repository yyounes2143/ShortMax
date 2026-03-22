package com.appsflyer.internal;

import com.appsflyer.internal.platform_extension.Plugin;
import com.appsflyer.internal.platform_extension.PluginInfo;
import java.util.Map;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes2.dex */
public final class AFi1iSDK implements AFi1kSDK {
    @NotNull
    private PluginInfo getMediationNetwork = new PluginInfo(Plugin.NATIVE, "6.17.5", null, 4, null);

    @Override // com.appsflyer.internal.AFi1kSDK
    @NotNull
    public final Map<String, Object> getCurrencyIso4217Code() {
        Map<String, Object> o10 = p0.o(ms.k.a("platform", this.getMediationNetwork.getPlugin().getPluginName()), ms.k.a("version", this.getMediationNetwork.getVersion()));
        if (!this.getMediationNetwork.getAdditionalParams().isEmpty()) {
            o10.put("extras", this.getMediationNetwork.getAdditionalParams());
        }
        return o10;
    }

    @Override // com.appsflyer.internal.AFi1kSDK
    public final void getRevenue(@NotNull PluginInfo pluginInfo) {
        Intrinsics.checkNotNullParameter(pluginInfo, "");
        this.getMediationNetwork = pluginInfo;
    }
}
