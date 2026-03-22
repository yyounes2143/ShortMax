package com.vungle.ads.internal.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewUtility.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ViewUtility {
    @NotNull
    public static final ViewUtility INSTANCE = new ViewUtility();

    private ViewUtility() {
    }

    public final int dpToPixels(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((i10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @NotNull
    public final Pair<Integer, Integer> getDeviceWidthAndHeightWithOrientation(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getApplicationContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int i11 = resources.getConfiguration().orientation;
        if (i10 == 0) {
            i10 = i11;
        }
        if (i10 == i11) {
            return new Pair<>(Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density)));
        }
        return new Pair<>(Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)));
    }

    @NotNull
    public final WebView getWebView(@NotNull Context context) throws InstantiationException {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            return new WebView(context);
        } catch (Resources.NotFoundException e10) {
            throw new InstantiationException("Cannot instantiate WebView due to Resources.NotFoundException: " + e10 + ".message");
        } catch (Exception e11) {
            throw new InstantiationException(e11.getMessage());
        }
    }
}
