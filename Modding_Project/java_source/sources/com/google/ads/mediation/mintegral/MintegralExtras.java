package com.google.ads.mediation.mintegral;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.applovin.mediation.AppLovinExtras;
/* loaded from: classes4.dex */
public final class MintegralExtras {

    /* loaded from: classes4.dex */
    public static class Builder {
        private boolean muteAudio;

        @NonNull
        public Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putBoolean(AppLovinExtras.Keys.MUTE_AUDIO, this.muteAudio);
            return bundle;
        }

        @NonNull
        public Builder setMuteAudio(boolean z10) {
            this.muteAudio = z10;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    static class Keys {
        static final String MUTE_AUDIO = "mute_audio";

        Keys() {
        }
    }
}
