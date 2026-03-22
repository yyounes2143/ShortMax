package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class ex {

    /* loaded from: classes3.dex */
    private static class oJ implements View.OnLayoutChangeListener {
        private int ZYk;
        private final Drawable oJ;
        private int tB;

        public oJ(Drawable drawable) {
            this.oJ = drawable;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            int i18 = i12 - i10;
            int i19 = i13 - i11;
            if (i18 == this.ZYk && i19 == this.tB) {
                return;
            }
            this.ZYk = i18;
            this.tB = i19;
            this.oJ.setBounds(0, 0, i18, i19);
        }
    }

    public static void oJ(ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (viewGroup == null || cYVar == null || TextUtils.isEmpty(cYVar.jr())) {
            return;
        }
        try {
            int i10 = eZI.zUb;
            if (viewGroup.getTag(i10) != null) {
                return;
            }
            viewGroup.setTag(i10, Integer.valueOf(i10));
            Drawable oJ2 = oJ(viewGroup.getResources(), cYVar);
            if (oJ2 == null) {
                return;
            }
            viewGroup.setForeground(oJ2);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("add overlay fail", th2.getMessage());
        }
    }

    public static void oJ(Activity activity, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (activity == null || cYVar == null || TextUtils.isEmpty(cYVar.jr())) {
            return;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int i10 = eZI.zUb;
            if (decorView.getTag(i10) != null) {
                return;
            }
            activity.getWindow().getDecorView().setTag(i10, Integer.valueOf(i10));
            Drawable oJ2 = oJ(activity.getResources(), cYVar);
            if (oJ2 == null) {
                return;
            }
            activity.getWindow().getDecorView().setForeground(oJ2);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("add overlay fail", th2.getMessage());
        }
    }

    @Nullable
    private static Drawable oJ(Resources resources, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        try {
            String jr2 = cYVar.jr();
            if (TextUtils.isEmpty(jr2)) {
                return null;
            }
            byte[] decode = Base64.decode(jr2, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
            return bitmapDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }
}
