package io.bidmachine.ads.networks.mraid;

import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
/* loaded from: classes7.dex */
public class MraidConfig extends NetworkConfig {
    public MraidConfig() {
        super(CampaignEx.JSON_KEY_MRAID, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    @NonNull
    public NetworkAdapter createNetworkAdapter() {
        return new MraidAdapter();
    }
}
