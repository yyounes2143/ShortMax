package com.facebook.fresco.middleware;

import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import com.facebook.fresco.ui.common.ControllerListener2;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MiddlewareUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class MiddlewareUtils {
    @NotNull
    public static final MiddlewareUtils INSTANCE = new MiddlewareUtils();

    private MiddlewareUtils() {
    }

    @NotNull
    public static final ControllerListener2.Extras obtainExtras(@NotNull Map<String, ? extends Object> componentAttribution, @NotNull Map<String, ? extends Object> shortcutAttribution, @Nullable Map<String, ? extends Object> map, @Nullable Map<String, ? extends Object> map2, @Nullable Rect rect, @Nullable String str, @Nullable PointF pointF, @Nullable Map<String, ? extends Object> map3, @Nullable Object obj, boolean z10, @Nullable Uri uri) {
        Intrinsics.checkNotNullParameter(componentAttribution, "componentAttribution");
        Intrinsics.checkNotNullParameter(shortcutAttribution, "shortcutAttribution");
        ControllerListener2.Extras extras = new ControllerListener2.Extras();
        if (rect != null) {
            extras.viewportWidth = rect.width();
            extras.viewportHeight = rect.height();
        }
        extras.scaleType = str;
        if (pointF != null) {
            extras.focusX = Float.valueOf(pointF.x);
            extras.focusY = Float.valueOf(pointF.y);
        }
        extras.callerContext = obj;
        extras.logWithHighSamplingRate = z10;
        extras.mainUri = uri;
        extras.datasourceExtras = map;
        extras.imageExtras = map3;
        extras.shortcutExtras = shortcutAttribution;
        extras.componentExtras = componentAttribution;
        extras.imageSourceExtras = map2;
        return extras;
    }

    public static /* synthetic */ ControllerListener2.Extras obtainExtras$default(Map map, Map map2, Map map3, Map map4, Rect rect, String str, PointF pointF, Map map5, Object obj, boolean z10, Uri uri, int i10, Object obj2) {
        boolean z11;
        if ((i10 & 512) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        return obtainExtras(map, map2, map3, map4, rect, str, pointF, map5, obj, z11, uri);
    }
}
