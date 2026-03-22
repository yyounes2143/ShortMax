package com.moloco.sdk.internal.services;

import android.content.Context;
import android.media.AudioManager;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.content.ContextCompat;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c0 implements b0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final AudioManager f33335a;

    public c0(@NotNull Context context) {
        AudioManager audioManager;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            audioManager = (AudioManager) ContextCompat.getSystemService(context.getApplicationContext(), AudioManager.class);
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "AudioService", "couldn't get android.media.AudioManager service", e10, false, 8, null);
            audioManager = null;
        }
        this.f33335a = audioManager;
    }

    @Override // com.moloco.sdk.internal.services.b0
    @NotNull
    public z a() {
        Integer num;
        AudioManager audioManager = this.f33335a;
        if (audioManager != null) {
            num = Integer.valueOf(audioManager.getRingerMode());
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 0) {
            return z.f33543a;
        }
        if (num != null && num.intValue() == 1) {
            return z.f33544b;
        }
        if (num != null && num.intValue() == 2) {
            return z.f33545c;
        }
        return z.f33545c;
    }

    @Override // com.moloco.sdk.internal.services.b0
    public int b() {
        AudioManager audioManager = this.f33335a;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return 0;
    }
}
