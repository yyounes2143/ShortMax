package com.startshorts.androidplayer.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StartMainProcessReceiver.kt */
@Metadata
/* loaded from: classes6.dex */
public final class StartMainProcessReceiver extends BroadcastReceiver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42995a = new a(null);

    /* compiled from: StartMainProcessReceiver.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@Nullable Context context, @Nullable Intent intent) {
        String str;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onReceive -> ");
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        sb2.append(str);
        logger.h("StartMainProcessReceiver", sb2.toString());
    }
}
