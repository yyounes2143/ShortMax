package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.v0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class z implements y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f36590a;

    public z(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f36590a = context;
    }

    public final DisplayMetrics a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @RequiresApi(30)
    public final DisplayMetrics b(WindowManager windowManager) {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        WindowMetrics currentWindowMetrics2;
        Rect bounds2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.density = this.f36590a.getResources().getDisplayMetrics().density;
        displayMetrics.densityDpi = this.f36590a.getResources().getDisplayMetrics().densityDpi;
        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
        bounds = currentWindowMetrics.getBounds();
        displayMetrics.widthPixels = bounds.width();
        currentWindowMetrics2 = windowManager.getCurrentWindowMetrics();
        bounds2 = currentWindowMetrics2.getBounds();
        displayMetrics.heightPixels = bounds2.height();
        return displayMetrics;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.y
    @NotNull
    public com.moloco.sdk.common_adapter_internal.b invoke() {
        DisplayMetrics a10;
        WindowManager windowManager = (WindowManager) ContextCompat.getSystemService(this.f36590a, WindowManager.class);
        if (windowManager == null) {
            return new com.moloco.sdk.common_adapter_internal.b(0, 0, 0.0f, 0.0f, 0, 0.0f);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            a10 = b(windowManager);
        } else {
            a10 = a(windowManager);
        }
        int i10 = a10.widthPixels;
        return new com.moloco.sdk.common_adapter_internal.b(i10, a10.heightPixels, v0.a(i10, a10.density), v0.a(a10.heightPixels, a10.density), a10.densityDpi, a10.density);
    }
}
