package yq;

import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f71123a = new b();

    private b() {
    }

    @NotNull
    public static final String a() {
        String ID = Build.ID;
        Intrinsics.checkNotNullExpressionValue(ID, "ID");
        return ID;
    }

    @NotNull
    public static final String b() {
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        return MANUFACTURER;
    }

    @NotNull
    public static final String c() {
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        return MODEL;
    }

    @NotNull
    public static final String d() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    @Nullable
    public static final String e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c.c(context);
    }

    @Nullable
    public static final String f(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c.d(context);
    }

    public static final float g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c.e(context);
    }

    public static final boolean h(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (c.a(context).smallestScreenWidthDp >= 600) {
            return true;
        }
        return false;
    }
}
