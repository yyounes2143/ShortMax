package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuildCompat.kt */
@Metadata
/* loaded from: classes.dex */
public final class BuildCompat {
    @ChecksSdkIntAtLeast(extension = TTVideoEngineInterface.PLAYER_TIME_BASE)
    public static final int AD_SERVICES_EXTENSION_INT;
    @NotNull
    public static final BuildCompat INSTANCE = new BuildCompat();
    @ChecksSdkIntAtLeast(extension = 30)
    public static final int R_EXTENSION_INT;
    @ChecksSdkIntAtLeast(extension = 31)
    public static final int S_EXTENSION_INT;
    @ChecksSdkIntAtLeast(extension = 33)
    public static final int T_EXTENSION_INT;

    /* compiled from: BuildCompat.kt */
    @RequiresApi(30)
    @Metadata
    /* loaded from: classes.dex */
    private static final class Api30Impl {
        @NotNull
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        @DoNotInline
        public final int getExtensionVersion(int i10) {
            return SdkExtensions.getExtensionVersion(i10);
        }
    }

    /* compiled from: BuildCompat.kt */
    @Retention(RetentionPolicy.CLASS)
    @Metadata
    /* loaded from: classes.dex */
    public @interface PrereleaseSdkCheck {
    }

    static {
        int i10;
        int i11;
        int i12;
        int i13 = Build.VERSION.SDK_INT;
        int i14 = 0;
        if (i13 >= 30) {
            i10 = Api30Impl.INSTANCE.getExtensionVersion(30);
        } else {
            i10 = 0;
        }
        R_EXTENSION_INT = i10;
        if (i13 >= 30) {
            i11 = Api30Impl.INSTANCE.getExtensionVersion(31);
        } else {
            i11 = 0;
        }
        S_EXTENSION_INT = i11;
        if (i13 >= 30) {
            i12 = Api30Impl.INSTANCE.getExtensionVersion(33);
        } else {
            i12 = 0;
        }
        T_EXTENSION_INT = i12;
        if (i13 >= 30) {
            i14 = Api30Impl.INSTANCE.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
        }
        AD_SERVICES_EXTENSION_INT = i14;
    }

    private BuildCompat() {
    }

    @c
    @ChecksSdkIntAtLeast(api = 24)
    public static final boolean isAtLeastN() {
        return true;
    }

    @c
    @ChecksSdkIntAtLeast(api = 25)
    public static final boolean isAtLeastNMR1() {
        if (Build.VERSION.SDK_INT >= 25) {
            return true;
        }
        return false;
    }

    @c
    @ChecksSdkIntAtLeast(api = 26)
    public static final boolean isAtLeastO() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    @c
    @ChecksSdkIntAtLeast(api = 27)
    public static final boolean isAtLeastOMR1() {
        if (Build.VERSION.SDK_INT >= 27) {
            return true;
        }
        return false;
    }

    @c
    @ChecksSdkIntAtLeast(api = 28)
    public static final boolean isAtLeastP() {
        if (Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public static final boolean isAtLeastPreReleaseCodename(@NotNull String codename, @NotNull String buildCodename) {
        Intrinsics.checkNotNullParameter(codename, "codename");
        Intrinsics.checkNotNullParameter(buildCodename, "buildCodename");
        if (Intrinsics.areEqual("REL", buildCodename)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String upperCase = buildCodename.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = codename.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        if (upperCase.compareTo(upperCase2) < 0) {
            return false;
        }
        return true;
    }

    @c
    @ChecksSdkIntAtLeast(api = 29)
    public static final boolean isAtLeastQ() {
        if (Build.VERSION.SDK_INT >= 29) {
            return true;
        }
        return false;
    }

    @c
    @ChecksSdkIntAtLeast(api = 30)
    public static final boolean isAtLeastR() {
        if (Build.VERSION.SDK_INT >= 30) {
            return true;
        }
        return false;
    }

    @c
    @ChecksSdkIntAtLeast(api = 31, codename = ExifInterface.LATITUDE_SOUTH)
    public static final boolean isAtLeastS() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 31) {
            if (i10 >= 30) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (isAtLeastPreReleaseCodename(ExifInterface.LATITUDE_SOUTH, CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    @c
    @ChecksSdkIntAtLeast(api = 32, codename = "Sv2")
    public static final boolean isAtLeastSv2() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 32) {
            if (i10 >= 31) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (isAtLeastPreReleaseCodename("Sv2", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    @c
    @ChecksSdkIntAtLeast(api = 33, codename = "Tiramisu")
    public static final boolean isAtLeastT() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33) {
            if (i10 >= 32) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (isAtLeastPreReleaseCodename("Tiramisu", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    @c
    @ChecksSdkIntAtLeast(api = 34, codename = "UpsideDownCake")
    public static final boolean isAtLeastU() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 34) {
            if (i10 >= 33) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
                if (isAtLeastPreReleaseCodename("UpsideDownCake", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    @ChecksSdkIntAtLeast(codename = "VanillaIceCream")
    @PrereleaseSdkCheck
    public static final boolean isAtLeastV() {
        if (Build.VERSION.SDK_INT >= 34) {
            String CODENAME = Build.VERSION.CODENAME;
            Intrinsics.checkNotNullExpressionValue(CODENAME, "CODENAME");
            if (isAtLeastPreReleaseCodename("VanillaIceCream", CODENAME)) {
                return true;
            }
        }
        return false;
    }
}
