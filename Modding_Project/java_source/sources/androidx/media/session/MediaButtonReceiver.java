package androidx.media.session;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;
/* loaded from: classes2.dex */
public class MediaButtonReceiver extends BroadcastReceiver {
    private static final String TAG = "MediaButtonReceiver";

    @RequiresApi(31)
    /* loaded from: classes2.dex */
    private static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static ForegroundServiceStartNotAllowedException castToForegroundServiceStartNotAllowedException(IllegalStateException illegalStateException) {
            return b.a(illegalStateException);
        }

        @DoNotInline
        public static boolean instanceOfForegroundServiceStartNotAllowedException(IllegalStateException illegalStateException) {
            return c.a(illegalStateException);
        }
    }

    /* loaded from: classes2.dex */
    private static class MediaButtonConnectionCallback extends MediaBrowserCompat.c {
        private final Context mContext;
        private final Intent mIntent;
        private MediaBrowserCompat mMediaBrowser;
        private final BroadcastReceiver.PendingResult mPendingResult;

        MediaButtonConnectionCallback(Context context, Intent intent, BroadcastReceiver.PendingResult pendingResult) {
            this.mContext = context;
            this.mIntent = intent;
            this.mPendingResult = pendingResult;
        }

        private void finish() {
            this.mMediaBrowser.b();
            this.mPendingResult.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void onConnected() {
            new MediaControllerCompat(this.mContext, this.mMediaBrowser.c()).a((KeyEvent) this.mIntent.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void onConnectionFailed() {
            finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c
        public void onConnectionSuspended() {
            finish();
        }

        void setMediaBrowser(MediaBrowserCompat mediaBrowserCompat) {
            this.mMediaBrowser = mediaBrowserCompat;
        }
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, long j10) {
        ComponentName mediaButtonReceiverComponent = getMediaButtonReceiverComponent(context);
        if (mediaButtonReceiverComponent == null) {
            Log.w(TAG, "A unique media button receiver could not be found in the given context, so couldn't build a pending intent.");
            return null;
        }
        return buildMediaButtonPendingIntent(context, mediaButtonReceiverComponent, j10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static ComponentName getMediaButtonReceiverComponent(Context context) {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        } else if (queryBroadcastReceivers.size() > 1) {
            Log.w(TAG, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            return null;
        } else {
            return null;
        }
    }

    private static ComponentName getServiceComponentByAction(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        } else if (queryIntentServices.isEmpty()) {
            return null;
        } else {
            throw new IllegalStateException("Expected 1 service that handles " + str + ", found " + queryIntentServices.size());
        }
    }

    public static KeyEvent handleIntent(MediaSessionCompat mediaSessionCompat, Intent intent) {
        if (mediaSessionCompat != null && intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            mediaSessionCompat.b().a(keyEvent);
            return keyEvent;
        }
        return null;
    }

    @RequiresApi(31)
    protected void onForegroundServiceStartNotAllowedException(@NonNull Intent intent, @NonNull ForegroundServiceStartNotAllowedException foregroundServiceStartNotAllowedException) {
        String message;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("caught exception when trying to start a foreground service from the background: ");
        message = foregroundServiceStartNotAllowedException.getMessage();
        sb2.append(message);
        Log.e(TAG, sb2.toString());
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            ComponentName serviceComponentByAction = getServiceComponentByAction(context, "android.intent.action.MEDIA_BUTTON");
            if (serviceComponentByAction != null) {
                intent.setComponent(serviceComponentByAction);
                try {
                    ContextCompat.startForegroundService(context, intent);
                    return;
                } catch (IllegalStateException e10) {
                    if (Build.VERSION.SDK_INT >= 31 && Api31.instanceOfForegroundServiceStartNotAllowedException(e10)) {
                        onForegroundServiceStartNotAllowedException(intent, Api31.castToForegroundServiceStartNotAllowedException(e10));
                        return;
                    }
                    throw e10;
                }
            }
            ComponentName serviceComponentByAction2 = getServiceComponentByAction(context, MediaBrowserServiceCompat.SERVICE_INTERFACE);
            if (serviceComponentByAction2 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(applicationContext, intent, goAsync);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, serviceComponentByAction2, mediaButtonConnectionCallback, null);
                mediaButtonConnectionCallback.setMediaBrowser(mediaBrowserCompat);
                mediaBrowserCompat.a();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        Log.d(TAG, "Ignore unsupported intent: " + intent);
    }

    public static PendingIntent buildMediaButtonPendingIntent(Context context, ComponentName componentName, long j10) {
        if (componentName == null) {
            Log.w(TAG, "The component name of media button receiver should be provided.");
            return null;
        }
        int b10 = PlaybackStateCompat.b(j10);
        if (b10 == 0) {
            Log.w(TAG, "Cannot build a media button pending intent with the given action: " + j10);
            return null;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, b10));
        int i10 = Build.VERSION.SDK_INT;
        intent.addFlags(268435456);
        return PendingIntent.getBroadcast(context, b10, intent, i10 >= 31 ? 33554432 : 0);
    }
}
