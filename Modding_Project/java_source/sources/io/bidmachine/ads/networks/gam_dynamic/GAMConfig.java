package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
/* loaded from: classes7.dex */
public class GAMConfig extends NetworkConfig {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    @NonNull
    public NetworkAdapter createNetworkAdapter() {
        return new GAMAdapter(getNetworkKey());
    }
}
