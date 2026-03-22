package com.ss.ttvideoengine.strategrycenter;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public interface IPortraitService {
    public static final String FROM = "from";
    public static final String FROM_SMART = "smart";
    public static final String FROM_VIDEO = "video";
    public static final String NAME = "name";
    public static final String TYPE = "type";
    public static final String TYPE_GROUP_PORTRAITS = "group";
    public static final String TYPE_ONE_PORTRAIT = "one";
    public static final String VIDEO_ID = "video_id";

    @Nullable
    default Map<String, String> getPortraits(@NonNull Map<String, String> map) {
        return null;
    }

    default void addGroupConfig(@NonNull Map<String, String> map, @NonNull List<String> list) {
    }
}
