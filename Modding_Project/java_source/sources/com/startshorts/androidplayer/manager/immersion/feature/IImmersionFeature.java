package com.startshorts.androidplayer.manager.immersion.feature;

import com.ss.ttvideoengine.Resolution;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.manager.immersion.core.ImmersionJobsManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IImmersionFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public interface IImmersionFeature {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IImmersionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class FeatureType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ FeatureType[] $VALUES;
        public static final FeatureType CAMPAIGN_SHORTS_FLOAT_VIEW = new FeatureType("CAMPAIGN_SHORTS_FLOAT_VIEW", 0);
        public static final FeatureType SEEKBAR_LOGGER = new FeatureType("SEEKBAR_LOGGER", 1);
        public static final FeatureType PROGRESS_ADJUST_TIP = new FeatureType("PROGRESS_ADJUST_TIP", 2);
        public static final FeatureType SWIPE_TO_WATCH_TIP = new FeatureType("SWIPE_TO_WATCH_TIP", 3);
        public static final FeatureType PLAY_SPEED = new FeatureType("PLAY_SPEED", 4);
        public static final FeatureType PLAY_RESOLUTION = new FeatureType("PLAY_RESOLUTION", 5);
        public static final FeatureType CATON_TOASTER = new FeatureType("CATON_TOASTER", 6);
        public static final FeatureType SWITCH_RESOLUTION_TIMEOUT = new FeatureType("SWITCH_RESOLUTION_TIMEOUT", 7);
        public static final FeatureType COLLECT_SHORTS_TIP = new FeatureType("COLLECT_SHORTS_TIP", 8);
        public static final FeatureType RECOMMEND_SHORTS = new FeatureType("RECOMMEND_SHORTS", 9);
        public static final FeatureType CONTINUE_WATCH = new FeatureType("CONTINUE_WATCH", 10);
        public static final FeatureType DISABLE_SKIP_UNLOCK_TIP = new FeatureType("DISABLE_SKIP_UNLOCK_TIP", 11);
        public static final FeatureType CDN = new FeatureType("CDN", 12);
        public static final FeatureType NEXT_SHORTS_TIP = new FeatureType("NEXT_SHORTS_TIP", 13);
        public static final FeatureType DISCOUNT_SKU = new FeatureType("DISCOUNT_SKU", 14);
        public static final FeatureType AD = new FeatureType("AD", 15);
        public static final FeatureType AD_MEDIA_VIDEO = new FeatureType("AD_MEDIA_VIDEO", 16);
        public static final FeatureType HTTP_DNS = new FeatureType("HTTP_DNS", 17);
        public static final FeatureType SUBS_PRO_RENEW = new FeatureType("SUBS_PRO_RENEW", 18);
        public static final FeatureType MINI_WINDOW = new FeatureType("MINI_WINDOW", 19);
        public static final FeatureType UNLOCK_EPISODE = new FeatureType("UNLOCK_EPISODE", 20);
        public static final FeatureType TASK_COIN = new FeatureType("TASK_COIN", 21);
        public static final FeatureType SHORT_RATING = new FeatureType("SHORT_RATING", 22);

        private static final /* synthetic */ FeatureType[] $values() {
            return new FeatureType[]{CAMPAIGN_SHORTS_FLOAT_VIEW, SEEKBAR_LOGGER, PROGRESS_ADJUST_TIP, SWIPE_TO_WATCH_TIP, PLAY_SPEED, PLAY_RESOLUTION, CATON_TOASTER, SWITCH_RESOLUTION_TIMEOUT, COLLECT_SHORTS_TIP, RECOMMEND_SHORTS, CONTINUE_WATCH, DISABLE_SKIP_UNLOCK_TIP, CDN, NEXT_SHORTS_TIP, DISCOUNT_SKU, AD, AD_MEDIA_VIDEO, HTTP_DNS, SUBS_PRO_RENEW, MINI_WINDOW, UNLOCK_EPISODE, TASK_COIN, SHORT_RATING};
        }

        static {
            FeatureType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private FeatureType(String str, int i10) {
        }

        @NotNull
        public static ss.a<FeatureType> getEntries() {
            return $ENTRIES;
        }

        public static FeatureType valueOf(String str) {
            return (FeatureType) Enum.valueOf(FeatureType.class, str);
        }

        public static FeatureType[] values() {
            return (FeatureType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IImmersionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class MessageType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ MessageType[] $VALUES;
        public static final MessageType SEEKBAR_START_TOUCH = new MessageType("SEEKBAR_START_TOUCH", 0);
        public static final MessageType SEEKBAR_STOP_TOUCH = new MessageType("SEEKBAR_STOP_TOUCH", 1);
        public static final MessageType PLAYER_PREPARED = new MessageType("PLAYER_PREPARED", 2);
        public static final MessageType PLAYER_PLAYING = new MessageType("PLAYER_PLAYING", 3);
        public static final MessageType PLAYER_RESOLUTION_CHANGED = new MessageType("PLAYER_RESOLUTION_CHANGED", 4);
        public static final MessageType PLAYER_RENDER_START = new MessageType("PLAYER_RENDER_START", 5);
        public static final MessageType PLAYER_BUFFER_START = new MessageType("PLAYER_BUFFER_START", 6);
        public static final MessageType PLAYER_BUFFER_END = new MessageType("PLAYER_BUFFER_END", 7);
        public static final MessageType PLAYER_PAUSED = new MessageType("PLAYER_PAUSED", 8);
        public static final MessageType PLAYER_COMPLETE = new MessageType("PLAYER_COMPLETE", 9);
        public static final MessageType PLAYER_ERROR = new MessageType("PLAYER_ERROR", 10);
        public static final MessageType PLAYER_ERROR_HEADERS = new MessageType("PLAYER_ERROR_HEADERS", 11);
        public static final MessageType PLAYER_TIME_CALLBACK = new MessageType("PLAYER_TIME_CALLBACK", 12);
        public static final MessageType PAGE_FIRST_LONG_CLICK = new MessageType("PAGE_FIRST_LONG_CLICK", 13);
        public static final MessageType PAGE_SECOND_LONG_CLICK = new MessageType("PAGE_SECOND_LONG_CLICK", 14);
        public static final MessageType PAGE_CANCEL_FIRST_LONG_CLICK = new MessageType("PAGE_CANCEL_FIRST_LONG_CLICK", 15);
        public static final MessageType PAGE_CANCEL_SECOND_LONG_CLICK = new MessageType("PAGE_CANCEL_SECOND_LONG_CLICK", 16);
        public static final MessageType CANCEL_LONG_CLICK_SPEED = new MessageType("CANCEL_LONG_CLICK_SPEED", 17);
        public static final MessageType PAGE_MULTI_POINTER_TOUCH = new MessageType("PAGE_MULTI_POINTER_TOUCH", 18);
        public static final MessageType PAGE_USER_DRAGGING_START = new MessageType("PAGE_USER_DRAGGING_START", 19);
        public static final MessageType START_CLEAR_SCREEN = new MessageType("START_CLEAR_SCREEN", 20);
        public static final MessageType CANCEL_CLEAR_SCREEN = new MessageType("CANCEL_CLEAR_SCREEN", 21);
        public static final MessageType ACTIVITY_ON_CREATE = new MessageType("ACTIVITY_ON_CREATE", 22);
        public static final MessageType ACTIVITY_ON_PAUSE = new MessageType("ACTIVITY_ON_PAUSE", 23);
        public static final MessageType ACTIVITY_ON_RESUME = new MessageType("ACTIVITY_ON_RESUME", 24);
        public static final MessageType ACTIVITY_FINISH = new MessageType("ACTIVITY_FINISH", 25);
        public static final MessageType ACTIVITY_ON_RELEASE = new MessageType("ACTIVITY_ON_RELEASE", 26);
        public static final MessageType PLAY_EPISODE_START = new MessageType("PLAY_EPISODE_START", 27);
        public static final MessageType PLAY_EPISODE_END = new MessageType("PLAY_EPISODE_END", 28);
        public static final MessageType EPISODE_SELECTED = new MessageType("EPISODE_SELECTED", 29);
        public static final MessageType SWITCH_EPISODE = new MessageType("SWITCH_EPISODE", 30);
        public static final MessageType SWITCH_SHORTS = new MessageType("SWITCH_SHORTS", 31);
        public static final MessageType CLICK_RESOLUTION_OF_MENU = new MessageType("CLICK_RESOLUTION_OF_MENU", 32);
        public static final MessageType CLICK_RESOLUTION_OF_MENU_DOWNLOAD = new MessageType("CLICK_RESOLUTION_OF_MENU_DOWNLOAD", 33);
        public static final MessageType CLICK_PLAY_SPEED_OF_MENU = new MessageType("CLICK_PLAY_SPEED_OF_MENU", 34);
        public static final MessageType SWITCH_RESOLUTION = new MessageType("SWITCH_RESOLUTION", 35);
        public static final MessageType SWITCH_RESOLUTION_TIMEOUT = new MessageType("SWITCH_RESOLUTION_TIMEOUT", 36);
        public static final MessageType SWITCH_RESOLUTION_SUCCESS = new MessageType("SWITCH_RESOLUTION_SUCCESS", 37);
        public static final MessageType USER_RECHARGED = new MessageType("USER_RECHARGED", 38);
        public static final MessageType USER_SUBSCRIBED = new MessageType("USER_SUBSCRIBED", 39);
        public static final MessageType SHOW_MINI_WINDOW = new MessageType("SHOW_MINI_WINDOW", 40);

        private static final /* synthetic */ MessageType[] $values() {
            return new MessageType[]{SEEKBAR_START_TOUCH, SEEKBAR_STOP_TOUCH, PLAYER_PREPARED, PLAYER_PLAYING, PLAYER_RESOLUTION_CHANGED, PLAYER_RENDER_START, PLAYER_BUFFER_START, PLAYER_BUFFER_END, PLAYER_PAUSED, PLAYER_COMPLETE, PLAYER_ERROR, PLAYER_ERROR_HEADERS, PLAYER_TIME_CALLBACK, PAGE_FIRST_LONG_CLICK, PAGE_SECOND_LONG_CLICK, PAGE_CANCEL_FIRST_LONG_CLICK, PAGE_CANCEL_SECOND_LONG_CLICK, CANCEL_LONG_CLICK_SPEED, PAGE_MULTI_POINTER_TOUCH, PAGE_USER_DRAGGING_START, START_CLEAR_SCREEN, CANCEL_CLEAR_SCREEN, ACTIVITY_ON_CREATE, ACTIVITY_ON_PAUSE, ACTIVITY_ON_RESUME, ACTIVITY_FINISH, ACTIVITY_ON_RELEASE, PLAY_EPISODE_START, PLAY_EPISODE_END, EPISODE_SELECTED, SWITCH_EPISODE, SWITCH_SHORTS, CLICK_RESOLUTION_OF_MENU, CLICK_RESOLUTION_OF_MENU_DOWNLOAD, CLICK_PLAY_SPEED_OF_MENU, SWITCH_RESOLUTION, SWITCH_RESOLUTION_TIMEOUT, SWITCH_RESOLUTION_SUCCESS, USER_RECHARGED, USER_SUBSCRIBED, SHOW_MINI_WINDOW};
        }

        static {
            MessageType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private MessageType(String str, int i10) {
        }

        @NotNull
        public static ss.a<MessageType> getEntries() {
            return $ENTRIES;
        }

        public static MessageType valueOf(String str) {
            return (MessageType) Enum.valueOf(MessageType.class, str);
        }

        public static MessageType[] values() {
            return (MessageType[]) $VALUES.clone();
        }
    }

    /* compiled from: IImmersionFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        @Nullable
        public static BaseActivity a(@NotNull IImmersionFeature iImmersionFeature, @NotNull k message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("activity");
            } else {
                obj = null;
            }
            if (!(obj instanceof BaseActivity)) {
                return null;
            }
            return (BaseActivity) obj;
        }

        @Nullable
        public static BaseEpisode b(@NotNull IImmersionFeature iImmersionFeature, @NotNull k message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("episode");
            } else {
                obj = null;
            }
            if (!(obj instanceof BaseEpisode)) {
                return null;
            }
            return (BaseEpisode) obj;
        }

        @Nullable
        public static ImmersionJobsManager c(@NotNull IImmersionFeature iImmersionFeature, @NotNull k message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("immersion_job_manager");
            } else {
                obj = null;
            }
            if (!(obj instanceof ImmersionJobsManager)) {
                return null;
            }
            return (ImmersionJobsManager) obj;
        }

        @Nullable
        public static PlayResolution d(@NotNull IImmersionFeature iImmersionFeature, @NotNull k message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("play_resolution");
            } else {
                obj = null;
            }
            if (!(obj instanceof PlayResolution)) {
                return null;
            }
            return (PlayResolution) obj;
        }

        @Nullable
        public static Resolution e(@NotNull IImmersionFeature iImmersionFeature, @NotNull k message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("player_resolution");
            } else {
                obj = null;
            }
            if (!(obj instanceof Resolution)) {
                return null;
            }
            return (Resolution) obj;
        }
    }

    void a(@NotNull k kVar);

    void release();

    @NotNull
    FeatureType type();
}
