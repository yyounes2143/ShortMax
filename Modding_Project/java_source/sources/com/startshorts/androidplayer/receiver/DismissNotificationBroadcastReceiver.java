package com.startshorts.androidplayer.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.startshorts.androidplayer.manager.push.PushManager;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: DismissNotificationBroadcastReceiver.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DismissNotificationBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        PushManager.f42838a.c();
    }
}
