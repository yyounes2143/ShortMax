package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IShortsFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public interface IShortsFeature {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IShortsFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class FeatureType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ FeatureType[] $VALUES;
        public static final FeatureType EVENT = new FeatureType("EVENT", 0);
        public static final FeatureType CDN = new FeatureType("CDN", 1);
        public static final FeatureType PLAY_SPEED = new FeatureType("PLAY_SPEED", 2);
        public static final FeatureType PROGRESS_ADJUST_TIP = new FeatureType("PROGRESS_ADJUST_TIP", 3);
        public static final FeatureType NEXT_SHORTS_TIP = new FeatureType("NEXT_SHORTS_TIP", 4);
        public static final FeatureType AD = new FeatureType("AD", 5);
        public static final FeatureType TASK_COIN = new FeatureType("TASK_COIN", 6);
        public static final FeatureType SHORT_RATING = new FeatureType("SHORT_RATING", 7);

        private static final /* synthetic */ FeatureType[] $values() {
            return new FeatureType[]{EVENT, CDN, PLAY_SPEED, PROGRESS_ADJUST_TIP, NEXT_SHORTS_TIP, AD, TASK_COIN, SHORT_RATING};
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
    /* compiled from: IShortsFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class MessageType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ MessageType[] $VALUES;
        public static final MessageType FIRST_USER_VISIBLE = new MessageType("FIRST_USER_VISIBLE", 0);
        public static final MessageType SEEKBAR_START_TOUCH = new MessageType("SEEKBAR_START_TOUCH", 1);
        public static final MessageType SEEKBAR_STOP_TOUCH = new MessageType("SEEKBAR_STOP_TOUCH", 2);
        public static final MessageType PLAY_EPISODE_START = new MessageType("PLAY_EPISODE_START", 3);
        public static final MessageType PLAY_EPISODE_END = new MessageType("PLAY_EPISODE_END", 4);
        public static final MessageType SWITCH_EPISODE = new MessageType("SWITCH_EPISODE", 5);
        public static final MessageType PAGE_USER_DRAGGING_START = new MessageType("PAGE_USER_DRAGGING_START", 6);
        public static final MessageType PLAYER_PREPARED = new MessageType("PLAYER_PREPARED", 7);
        public static final MessageType PLAYER_PLAYING = new MessageType("PLAYER_PLAYING", 8);
        public static final MessageType PLAYER_RENDER_START = new MessageType("PLAYER_RENDER_START", 9);
        public static final MessageType PLAYER_BUFFER_START = new MessageType("PLAYER_BUFFER_START", 10);
        public static final MessageType PLAYER_BUFFER_END = new MessageType("PLAYER_BUFFER_END", 11);
        public static final MessageType PLAYER_PAUSED = new MessageType("PLAYER_PAUSED", 12);
        public static final MessageType PLAYER_COMPLETE = new MessageType("PLAYER_COMPLETE", 13);
        public static final MessageType PLAYER_ERROR = new MessageType("PLAYER_ERROR", 14);
        public static final MessageType PLAYER_ERROR_HEADERS = new MessageType("PLAYER_ERROR_HEADERS", 15);
        public static final MessageType PLAYER_TIME_CALLBACK = new MessageType("PLAYER_TIME_CALLBACK", 16);
        public static final MessageType PAGE_FIRST_LONG_CLICK = new MessageType("PAGE_FIRST_LONG_CLICK", 17);
        public static final MessageType PAGE_SECOND_LONG_CLICK = new MessageType("PAGE_SECOND_LONG_CLICK", 18);
        public static final MessageType PAGE_CANCEL_FIRST_LONG_CLICK = new MessageType("PAGE_CANCEL_FIRST_LONG_CLICK", 19);
        public static final MessageType PAGE_CANCEL_SECOND_LONG_CLICK = new MessageType("PAGE_CANCEL_SECOND_LONG_CLICK", 20);
        public static final MessageType CANCEL_LONG_CLICK_SPEED = new MessageType("CANCEL_LONG_CLICK_SPEED", 21);
        public static final MessageType PAGE_MULTI_POINTER_TOUCH = new MessageType("PAGE_MULTI_POINTER_TOUCH", 22);

        private static final /* synthetic */ MessageType[] $values() {
            return new MessageType[]{FIRST_USER_VISIBLE, SEEKBAR_START_TOUCH, SEEKBAR_STOP_TOUCH, PLAY_EPISODE_START, PLAY_EPISODE_END, SWITCH_EPISODE, PAGE_USER_DRAGGING_START, PLAYER_PREPARED, PLAYER_PLAYING, PLAYER_RENDER_START, PLAYER_BUFFER_START, PLAYER_BUFFER_END, PLAYER_PAUSED, PLAYER_COMPLETE, PLAYER_ERROR, PLAYER_ERROR_HEADERS, PLAYER_TIME_CALLBACK, PAGE_FIRST_LONG_CLICK, PAGE_SECOND_LONG_CLICK, PAGE_CANCEL_FIRST_LONG_CLICK, PAGE_CANCEL_SECOND_LONG_CLICK, CANCEL_LONG_CLICK_SPEED, PAGE_MULTI_POINTER_TOUCH};
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

    /* compiled from: IShortsFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        @Nullable
        public static ShortsEpisode a(@NotNull IShortsFeature iShortsFeature, @NotNull i message) {
            Object obj;
            Intrinsics.checkNotNullParameter(message, "message");
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj = a10.get("episode");
            } else {
                obj = null;
            }
            if (!(obj instanceof ShortsEpisode)) {
                return null;
            }
            return (ShortsEpisode) obj;
        }
    }

    void a(@NotNull i iVar);

    void release();

    @NotNull
    FeatureType type();
}
