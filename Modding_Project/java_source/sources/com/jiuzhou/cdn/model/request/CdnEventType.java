package com.jiuzhou.cdn.model.request;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CdnEventType.kt */
@Metadata
/* loaded from: classes5.dex */
public final class CdnEventType {
    @NotNull
    public static final CdnEventType INSTANCE = new CdnEventType();
    @NotNull
    public static final String TYPE_CDN_DETECT_TIME = "EVENT_VIDEO_ELAPSED_TIME";
    @NotNull
    public static final String TYPE_VIDEO_BUFFER_END = "EVENT_VIDEO_PLAY_BLOCK_END";
    @NotNull
    public static final String TYPE_VIDEO_BUFFER_START = "EVENT_VIDEO_PLAY_BLOCK_START";
    @NotNull
    public static final String TYPE_VIDEO_FIRST_FRAME = "EVENT_FIRST_FRAME";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_COMPLETE = "EVENT_VIDEO_PLAY_COMPLETE";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_END = "EVENT_VIDEO_PLAY_END";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_FAILED = "EVENT_VIDEO_PLAY_FAIL";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_REAL_FAILED = "EVENT_VIDEO_PLAY_REAL_FAIL";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_RETRY = "EVENT_VIDEO_PLAY_INTERRUPT";
    @NotNull
    public static final String TYPE_VIDEO_PLAY_START = "EVENT_VIDEO_PLAY_START";
    @NotNull
    public static final String TYPE_VIDEO_SEEK = "EVENT_VIDEO_SEEK";

    private CdnEventType() {
    }
}
