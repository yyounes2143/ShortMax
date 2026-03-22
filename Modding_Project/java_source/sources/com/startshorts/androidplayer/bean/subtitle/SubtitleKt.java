package com.startshorts.androidplayer.bean.subtitle;

import android.graphics.Rect;
import com.startshorts.androidplayer.log.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.Nullable;
/* compiled from: Subtitle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubtitleKt {
    @Nullable
    public static final Rect coordinateStr2Rect(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            List split$default = StringsKt.split$default(str, new String[]{","}, false, 0, 6, null);
            if (split$default.size() == 4) {
                return new Rect(Integer.parseInt((String) split$default.get(2)), Integer.parseInt((String) split$default.get(0)), Integer.parseInt((String) split$default.get(3)), Integer.parseInt((String) split$default.get(1)));
            }
        } catch (Exception e10) {
            Logger.f41511a.e("subtitles", e10.getMessage());
        }
        return null;
    }
}
