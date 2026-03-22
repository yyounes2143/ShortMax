package com.vungle.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
/* compiled from: RingerModeReceiver.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RingerModeReceiver extends BroadcastReceiver {
    @Nullable
    private VungleWebClient webClient;

    @Nullable
    public final VungleWebClient getWebClient() {
        return this.webClient;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String action;
        VungleWebClient vungleWebClient;
        if (intent != null) {
            try {
                action = intent.getAction();
            } catch (Exception e10) {
                String localizedMessage = e10.getLocalizedMessage();
                if (localizedMessage != null) {
                    Logger.Companion.e("RingerModeReceiver", localizedMessage);
                    return;
                }
                return;
            }
        } else {
            action = null;
        }
        if (Intrinsics.areEqual(action, "android.media.RINGER_MODE_CHANGED")) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", -1);
            Logger.Companion companion = Logger.Companion;
            companion.d("RingerModeReceiver", "receive ringermode: " + intExtra);
            if (intExtra != 0) {
                if (intExtra != 1) {
                    if (intExtra == 2 && (vungleWebClient = this.webClient) != null) {
                        vungleWebClient.notifySilentModeChange(false);
                        return;
                    }
                    return;
                }
                VungleWebClient vungleWebClient2 = this.webClient;
                if (vungleWebClient2 != null) {
                    vungleWebClient2.notifySilentModeChange(true);
                    return;
                }
                return;
            }
            VungleWebClient vungleWebClient3 = this.webClient;
            if (vungleWebClient3 != null) {
                vungleWebClient3.notifySilentModeChange(true);
            }
        }
    }

    public final void setWebClient(@Nullable VungleWebClient vungleWebClient) {
        this.webClient = vungleWebClient;
    }
}
