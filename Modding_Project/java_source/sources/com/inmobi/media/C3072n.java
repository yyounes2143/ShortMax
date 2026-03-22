package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.n  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3072n extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(str, "android.media.VOLUME_CHANGED_ACTION")) {
            C3151s.c();
        }
    }
}
