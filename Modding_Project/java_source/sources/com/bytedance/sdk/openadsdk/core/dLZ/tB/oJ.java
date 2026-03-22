package com.bytedance.sdk.openadsdk.core.dLZ.tB;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class oJ {
    public static final Set<String> oJ = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.1
        {
            add("image/jpeg");
            add("image/png");
            add("image/bmp");
            add("image/gif");
            add("image/jpg");
        }
    };
    public static Set<String> ZYk = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.2
        {
            add("application/x-javascript");
        }
    };

    /* loaded from: classes3.dex */
    public enum ZYk {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public enum EnumC0210oJ {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    @NonNull
    public static Point oJ(Context context, int i10, int i11, ZYk zYk) {
        if (context == null) {
            context = si.oJ();
        }
        Point point = new Point(i10, i11);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int ZYk2 = cdg.ZYk(context, i10);
        int ZYk3 = cdg.ZYk(context, i11);
        if (ZYk2 <= width && ZYk3 <= height) {
            return point;
        }
        Point point2 = new Point();
        if (ZYk.HTML_RESOURCE == zYk) {
            point2.x = Math.min(width, ZYk2);
            point2.y = Math.min(height, ZYk3);
        } else {
            float f10 = ZYk2;
            float f11 = f10 / width;
            float f12 = ZYk3;
            float f13 = f12 / height;
            if (f11 >= f13) {
                point2.x = width;
                point2.y = (int) (f12 / f11);
            } else {
                point2.x = (int) (f10 / f13);
                point2.y = height;
            }
        }
        int i12 = point2.x;
        if (i12 >= 0 && point2.y >= 0) {
            point2.x = cdg.tB(context, i12);
            point2.y = cdg.tB(context, point2.y);
            return point2;
        }
        return point;
    }
}
