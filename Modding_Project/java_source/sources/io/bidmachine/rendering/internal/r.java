package io.bidmachine.rendering.internal;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.s;
import yq.d;
@Metadata
/* loaded from: classes8.dex */
public final class r {

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d<Boolean> f58398a;

        a(d<Boolean> dVar) {
            this.f58398a = dVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            context.unregisterReceiver(this);
            sq.j.m(Boolean.TRUE, this.f58398a);
        }
    }

    private final long a(Context context, Uri uri) {
        DownloadManager h10 = yq.r.h(context);
        if (h10 != null) {
            return h10.enqueue(new DownloadManager.Request(uri).setNotificationVisibility(1));
        }
        return -1L;
    }

    public final void b(@NotNull Context context, @NotNull Uri uri, @Nullable d<Boolean> dVar) {
        long j10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        Context applicationContext = context.getApplicationContext();
        try {
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            j10 = a(applicationContext, uri);
        } catch (Exception e10) {
            s.h(e10);
            j10 = -1;
        }
        if (j10 == -1) {
            sq.j.m(Boolean.FALSE, dVar);
            return;
        }
        a aVar = new a(dVar);
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        yq.r.t(aVar, applicationContext, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }
}
