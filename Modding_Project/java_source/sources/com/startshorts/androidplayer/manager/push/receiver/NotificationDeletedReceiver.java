package com.startshorts.androidplayer.manager.push.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NotificationDeletedReceiver.kt */
@Metadata
/* loaded from: classes6.dex */
public final class NotificationDeletedReceiver extends BroadcastReceiver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42893a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static String f42894b = DeviceUtil.f48146a.B() + ".Notification.Deleted";

    /* compiled from: NotificationDeletedReceiver.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String a() {
            return NotificationDeletedReceiver.f42894b;
        }

        private a() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @Nullable Intent intent) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onReceive -> action(");
        String str2 = null;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append("})");
        logger.h("NotificationDeletedReceiver", sb2.toString());
        if (intent != null) {
            str2 = intent.getAction();
        }
        if (Intrinsics.areEqual(str2, f42894b)) {
            PushUtil.f42895a.X();
        }
    }
}
