package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FacebookBroadcastReceiver.kt */
@Metadata
/* loaded from: classes3.dex */
public class FacebookBroadcastReceiver extends BroadcastReceiver {
    protected void a(@NotNull String appCallId, @NotNull String action, @NotNull Bundle extras) {
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    protected void b(@NotNull String appCallId, @NotNull String action, @NotNull Bundle extras) {
        Intrinsics.checkNotNullParameter(appCallId, "appCallId");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        String stringExtra2 = intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
        Bundle extras = intent.getExtras();
        if (stringExtra != null && stringExtra2 != null && extras != null) {
            if (com.facebook.internal.l0.x(intent)) {
                a(stringExtra, stringExtra2, extras);
            } else {
                b(stringExtra, stringExtra2, extras);
            }
        }
    }
}
