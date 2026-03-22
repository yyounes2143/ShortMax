package ai.turbolink.sdk.network;

import ai.turbolink.sdk.TurboLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: NetworkInterfaceUrlConnection.kt */
@Metadata
/* loaded from: classes.dex */
public final class NetworkInterfaceUrlConnection extends NetworkInterface {
    @NotNull
    private final TurboLink turboLink;

    public NetworkInterfaceUrlConnection(@NotNull TurboLink turboLink) {
        Intrinsics.checkNotNullParameter(turboLink, "turboLink");
        this.turboLink = turboLink;
    }

    @Override // ai.turbolink.sdk.network.NetworkInterface
    public void doGet(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // ai.turbolink.sdk.network.NetworkInterface
    @NotNull
    public TurboLinkNetworkResponse doPost(@NotNull String url, @NotNull JSONObject payload) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(payload, "payload");
        return doPost(url, payload, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x026d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final ai.turbolink.sdk.network.TurboLinkNetworkResponse doPost(java.lang.String r11, org.json.JSONObject r12, int r13) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.network.NetworkInterfaceUrlConnection.doPost(java.lang.String, org.json.JSONObject, int):ai.turbolink.sdk.network.TurboLinkNetworkResponse");
    }
}
