package com.moloco.sdk.internal.services;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import androidx.compose.runtime.internal.StabilityInferred;
import com.ss.texturerender.TextureRenderKeys;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e0 implements d0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33348a;

    public e0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33348a = context;
    }

    @Override // com.moloco.sdk.internal.services.d0
    public int a() {
        Intent registerReceiver = this.f33348a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return 1;
        }
        return registerReceiver.getIntExtra("status", 1);
    }

    @Override // com.moloco.sdk.internal.services.d0
    public int b() {
        Intent registerReceiver = this.f33348a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return -1;
        }
        return registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
    }

    @Override // com.moloco.sdk.internal.services.d0
    public boolean c() {
        Object systemService = this.f33348a.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode();
    }
}
