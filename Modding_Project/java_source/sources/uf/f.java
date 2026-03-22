package uf;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification;
import com.startshorts.androidplayer.bean.notification.CheckInNotification;
import com.startshorts.androidplayer.bean.notification.CustomNotification;
import com.startshorts.androidplayer.bean.notification.MissCheckInNotification;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.bean.notification.RewardsNotification;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.notification.StartRechargingNotification;
import com.startshorts.androidplayer.bean.notification.SubsBonusNotification;
import com.startshorts.androidplayer.receiver.DismissNotificationBroadcastReceiver;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import fk.y;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: RemoteViewsUtil.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f68421a = new f();

    private f() {
    }

    private final Context k() {
        WeakReference<IDActivity> d10;
        IDActivity iDActivity;
        Context b10 = u.f51776a.b();
        if (y.f51785a.c(b10) && (d10 = aa.a.f321a.d()) != null && (iDActivity = d10.get()) != null) {
            return iDActivity;
        }
        return b10;
    }

    @NotNull
    public final RemoteViews a(int i10, @NotNull BonusWillExpiredNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        if (notification.getBitmap() != null) {
            remoteViews.setImageViewBitmap(R$id.iv_icon, notification.getBitmap());
        } else {
            remoteViews.setImageViewResource(R$id.iv_icon, R$drawable.ntf_coin_icon);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.check_in_button, k10.getString(R$string.claim_now));
        return remoteViews;
    }

    @NotNull
    public final RemoteViews b(int i10, @NotNull CheckInNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        if (notification.getBitmap() != null) {
            remoteViews.setImageViewBitmap(R$id.iv_icon, notification.getBitmap());
        } else {
            remoteViews.setImageViewResource(R$id.iv_icon, R$drawable.ntf_check_in_icon);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.check_in_button, k10.getString(R$string.claim_now));
        return remoteViews;
    }

    @NotNull
    public final RemoteViews c(int i10, @NotNull ShortPlayNotification notification) {
        int i11;
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.tv_continue, k10.getString(R$string.common_continue));
        remoteViews.setTextViewText(R$id.enter_button, k10.getString(R$string.continue_watching));
        remoteViews.setTextViewText(R$id.tv_drama_content, k10.getString(R$string.now_playing));
        Integer dramaNum = notification.getDramaNum();
        if (dramaNum != null) {
            i11 = dramaNum.intValue();
        } else {
            i11 = 0;
        }
        if (i11 > 0) {
            remoteViews.setViewVisibility(R$id.tv_drama_num, 0);
            int i12 = R$id.tv_drama_num;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = k10.getString(R$string.common_current_ep);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String format = String.format(string, Arrays.copyOf(new Object[]{String.valueOf(i11)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            remoteViews.setTextViewText(i12, format);
        } else {
            Integer videoType = notification.getVideoType();
            if (videoType != null && videoType.intValue() == 4) {
                remoteViews.setViewVisibility(R$id.tv_drama_num, 0);
                remoteViews.setTextViewText(R$id.tv_drama_num, k10.getString(R$string.shorts_fragment_trailer));
            } else {
                remoteViews.setViewVisibility(R$id.tv_drama_num, 8);
            }
        }
        if (notification.getBitmap() != null) {
            remoteViews.setImageViewBitmap(R$id.custom_icon, notification.getBitmap());
        } else {
            remoteViews.setImageViewResource(R$id.custom_icon, R$drawable.ic_cover_placeholder);
        }
        try {
            remoteViews.setOnClickPendingIntent(R$id.iv_ntf_close, PendingIntent.getBroadcast(k10, 10086, new Intent(k10, DismissNotificationBroadcastReceiver.class), 67108864));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return remoteViews;
    }

    @NotNull
    public final RemoteViews d(int i10, @NotNull CustomNotification notification, boolean z10) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        remoteViews.setTextViewText(R$id.title_tv, notification.getPush().getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getPush().getContent());
        remoteViews.setImageViewBitmap(R$id.custom_icon, notification.getCover());
        if (z10) {
            remoteViews.setTextViewText(R$id.enter_button, k10.getString(R$string.notification_watch_now));
        } else {
            remoteViews.setTextViewText(R$id.enter_button, k10.getString(R$string.notification_go_now));
        }
        return remoteViews;
    }

    @NotNull
    public final RemoteViews e(int i10, @NotNull NewShortsNotification notification) {
        String summary;
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        Bitmap cover = notification.getCover();
        if (cover != null) {
            remoteViews.setImageViewBitmap(R$id.cover_iv, cover);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.watch_button, k10.getString(R$string.notification_watch_now));
        int i11 = R$id.content_tv;
        String recommendation = notification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = notification.getRecommendation();
        } else {
            summary = notification.getSummary();
        }
        remoteViews.setTextViewText(i11, summary);
        return remoteViews;
    }

    @NotNull
    public final RemoteViews f(int i10, @NotNull MissCheckInNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        if (notification.getBitmap() != null) {
            remoteViews.setImageViewBitmap(R$id.iv_icon, notification.getBitmap());
        } else {
            remoteViews.setImageViewResource(R$id.iv_icon, R$drawable.ntf_missing_check_in);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.check_in_button, k10.getString(R$string.claim_now));
        return remoteViews;
    }

    @NotNull
    public final RemoteViews g(int i10, @NotNull RecommendShortsNotification notification) {
        String summary;
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        Bitmap cover = notification.getCover();
        if (cover != null) {
            remoteViews.setImageViewBitmap(R$id.cover_iv, cover);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.watch_button, k10.getString(R$string.notification_watch_now));
        int i11 = R$id.content_tv;
        String recommendation = notification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = notification.getRecommendation();
        } else {
            summary = notification.getSummary();
        }
        remoteViews.setTextViewText(i11, summary);
        return remoteViews;
    }

    @NotNull
    public final RemoteViews h(int i10, @NotNull RewardsNotification notification) {
        int i11;
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        int i12 = R$id.iv_icon;
        Integer bonusIconResource = notification.getBonusIconResource();
        if (bonusIconResource != null) {
            i11 = bonusIconResource.intValue();
        } else {
            i11 = R$drawable.ic_push_msg_rewards_gift;
        }
        remoteViews.setImageViewResource(i12, i11);
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.check_in_button, k10.getString(R$string.claim_now));
        return remoteViews;
    }

    @NotNull
    public final RemoteViews i(int i10, @NotNull StartRechargingNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        Bitmap cover = notification.getCover();
        if (cover != null) {
            remoteViews.setImageViewBitmap(R$id.cover_iv, cover);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.watch_button, k10.getString(R$string.notification_watch_now));
        return remoteViews;
    }

    @NotNull
    public final RemoteViews j(int i10, @NotNull SubsBonusNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Context k10 = k();
        RemoteViews remoteViews = new RemoteViews(DeviceUtil.f48146a.B(), i10);
        if (notification.getBitmap() != null) {
            remoteViews.setImageViewBitmap(R$id.iv_icon, notification.getBitmap());
        } else {
            remoteViews.setImageViewResource(R$id.iv_icon, R$drawable.ntf_subscribe_icon);
        }
        remoteViews.setTextViewText(R$id.title_tv, notification.getTitle());
        remoteViews.setTextViewText(R$id.content_tv, notification.getContent());
        remoteViews.setTextViewText(R$id.subs_bonus_button, k10.getString(R$string.claim_now));
        return remoteViews;
    }
}
