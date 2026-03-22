package androidx.media.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.media.R;
/* loaded from: classes2.dex */
public class NotificationCompat {

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(15)
    /* loaded from: classes2.dex */
    public static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static void setContentDescription(RemoteViews remoteViews, int i10, CharSequence charSequence) {
            remoteViews.setContentDescription(i10, charSequence);
        }
    }

    @RequiresApi(21)
    /* loaded from: classes2.dex */
    private static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static Notification.MediaStyle createMediaStyle() {
            return new Notification.MediaStyle();
        }

        @DoNotInline
        static Notification.MediaStyle fillInMediaStyle(Notification.MediaStyle mediaStyle, int[] iArr, MediaSessionCompat.Token token) {
            if (iArr != null) {
                setShowActionsInCompactView(mediaStyle, iArr);
            }
            if (token != null) {
                setMediaSession(mediaStyle, (MediaSession.Token) token.d());
            }
            return mediaStyle;
        }

        @DoNotInline
        static void setMediaSession(Notification.MediaStyle mediaStyle, MediaSession.Token token) {
            mediaStyle.setMediaSession(token);
        }

        @DoNotInline
        static void setMediaStyle(Notification.Builder builder, Notification.MediaStyle mediaStyle) {
            builder.setStyle(mediaStyle);
        }

        @DoNotInline
        static void setShowActionsInCompactView(Notification.MediaStyle mediaStyle, int... iArr) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
    }

    @RequiresApi(24)
    /* loaded from: classes2.dex */
    private static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static Notification.MediaStyle createDecoratedMediaCustomViewStyle() {
            return new Notification.DecoratedMediaCustomViewStyle();
        }
    }

    @RequiresApi(34)
    /* loaded from: classes2.dex */
    private static class Api34Impl {
        private Api34Impl() {
        }

        @DoNotInline
        @SuppressLint({"MissingPermission"})
        static Notification.MediaStyle setRemotePlaybackInfo(Notification.MediaStyle mediaStyle, @NonNull CharSequence charSequence, @DrawableRes int i10, @Nullable PendingIntent pendingIntent, Boolean bool) {
            if (bool.booleanValue()) {
                mediaStyle.setRemotePlaybackInfo(charSequence, i10, pendingIntent);
            }
            return mediaStyle;
        }
    }

    /* loaded from: classes2.dex */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        private void setBackgroundColor(RemoteViews remoteViews) {
            int color;
            if (this.mBuilder.getColor() != 0) {
                color = this.mBuilder.getColor();
            } else {
                color = this.mBuilder.mContext.getResources().getColor(R.color.notification_material_background_media_default_color);
            }
            remoteViews.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", color);
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 34) {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api34Impl.setRemotePlaybackInfo(Api24Impl.createDecoratedMediaCustomViewStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
            } else {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api24Impl.createDecoratedMediaCustomViewStyle(), this.mActionsToShowInCompact, this.mToken));
            }
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int getBigContentViewLayoutResource(int i10) {
            if (i10 <= 3) {
                return R.layout.notification_template_big_media_narrow_custom;
            }
            return R.layout.notification_template_big_media_custom;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        int getContentViewLayoutResource() {
            if (this.mBuilder.getContentView() != null) {
                return R.layout.notification_template_media_custom;
            }
            return super.getContentViewLayoutResource();
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }
    }

    private NotificationCompat() {
    }

    /* loaded from: classes2.dex */
    public static class MediaStyle extends NotificationCompat.Style {
        private static final int MAX_MEDIA_BUTTONS = 5;
        private static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
        PendingIntent mCancelButtonIntent;
        int mDeviceIcon;
        PendingIntent mDeviceIntent;
        CharSequence mDeviceName;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;
        int[] mActionsToShowInCompact = null;
        boolean mShowRemotePlaybackInfo = false;

        public MediaStyle() {
        }

        private RemoteViews generateMediaActionButton(NotificationCompat.Action action) {
            boolean z10;
            if (action.getActionIntent() == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), R.layout.notification_media_action);
            remoteViews.setImageViewResource(R.id.action0, action.getIcon());
            if (!z10) {
                remoteViews.setOnClickPendingIntent(R.id.action0, action.getActionIntent());
            }
            Api15Impl.setContentDescription(remoteViews, R.id.action0, action.getTitle());
            return remoteViews;
        }

        public static MediaSessionCompat.Token getMediaSession(Notification notification) {
            Parcelable parcelable;
            Bundle extras = androidx.core.app.NotificationCompat.getExtras(notification);
            if (extras != null && (parcelable = extras.getParcelable(androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION)) != null) {
                return MediaSessionCompat.Token.a(parcelable);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 34) {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api34Impl.setRemotePlaybackInfo(Api21Impl.createMediaStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
            } else {
                Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), Api21Impl.fillInMediaStyle(Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
            }
        }

        RemoteViews generateBigContentView() {
            int min = Math.min(this.mBuilder.mActions.size(), 5);
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(min), false);
            applyStandardTemplate.removeAllViews(R.id.media_actions);
            if (min > 0) {
                for (int i10 = 0; i10 < min; i10++) {
                    applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(i10)));
                }
            }
            if (this.mShowCancelButton) {
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
                applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
                applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, this.mCancelButtonIntent);
            } else {
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        RemoteViews generateContentView() {
            int min;
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
            int size = this.mBuilder.mActions.size();
            int[] iArr = this.mActionsToShowInCompact;
            if (iArr == null) {
                min = 0;
            } else {
                min = Math.min(iArr.length, 3);
            }
            applyStandardTemplate.removeAllViews(R.id.media_actions);
            if (min > 0) {
                for (int i10 = 0; i10 < min; i10++) {
                    if (i10 < size) {
                        applyStandardTemplate.addView(R.id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i10])));
                    } else {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i10), Integer.valueOf(size - 1)));
                    }
                }
            }
            if (this.mShowCancelButton) {
                applyStandardTemplate.setViewVisibility(R.id.end_padder, 8);
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 0);
                applyStandardTemplate.setOnClickPendingIntent(R.id.cancel_action, this.mCancelButtonIntent);
                applyStandardTemplate.setInt(R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(R.integer.cancel_button_image_alpha));
            } else {
                applyStandardTemplate.setViewVisibility(R.id.end_padder, 0);
                applyStandardTemplate.setViewVisibility(R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        int getBigContentViewLayoutResource(int i10) {
            if (i10 <= 3) {
                return R.layout.notification_template_big_media_narrow;
            }
            return R.layout.notification_template_big_media;
        }

        int getContentViewLayoutResource() {
            return R.layout.notification_template_media;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.mToken = token;
            return this;
        }

        @NonNull
        @RequiresPermission("android.permission.MEDIA_CONTENT_CONTROL")
        public MediaStyle setRemotePlaybackInfo(@NonNull CharSequence charSequence, @DrawableRes int i10, @Nullable PendingIntent pendingIntent) {
            this.mDeviceName = charSequence;
            this.mDeviceIcon = i10;
            this.mDeviceIntent = pendingIntent;
            this.mShowRemotePlaybackInfo = true;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.mActionsToShowInCompact = iArr;
            return this;
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        public MediaStyle setShowCancelButton(boolean z10) {
            return this;
        }
    }
}
