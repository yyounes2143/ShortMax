package androidx.activity;

import android.content.res.Resources;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EdgeToEdge.kt */
@Metadata
/* loaded from: classes.dex */
public final class SystemBarStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int darkScrim;
    @NotNull
    private final Function1<Resources, Boolean> detectDarkMode;
    private final int lightScrim;
    private final int nightMode;

    /* compiled from: EdgeToEdge.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SystemBarStyle auto$default(Companion companion, int i10, int i11, Function1 function1, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                function1 = new Function1<Resources, Boolean>() { // from class: androidx.activity.SystemBarStyle$Companion$auto$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull Resources resources) {
                        Intrinsics.checkNotNullParameter(resources, "resources");
                        return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
                    }
                };
            }
            return companion.auto(i10, i11, function1);
        }

        @NotNull
        public final SystemBarStyle auto(@ColorInt int i10, @ColorInt int i11) {
            return auto$default(this, i10, i11, null, 4, null);
        }

        @NotNull
        public final SystemBarStyle dark(@ColorInt int i10) {
            return new SystemBarStyle(i10, i10, 2, new Function1<Resources, Boolean>() { // from class: androidx.activity.SystemBarStyle$Companion$dark$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Resources resources) {
                    Intrinsics.checkNotNullParameter(resources, "<anonymous parameter 0>");
                    return Boolean.TRUE;
                }
            }, null);
        }

        @NotNull
        public final SystemBarStyle light(@ColorInt int i10, @ColorInt int i11) {
            return new SystemBarStyle(i10, i11, 1, new Function1<Resources, Boolean>() { // from class: androidx.activity.SystemBarStyle$Companion$light$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Resources resources) {
                    Intrinsics.checkNotNullParameter(resources, "<anonymous parameter 0>");
                    return Boolean.FALSE;
                }
            }, null);
        }

        private Companion() {
        }

        @NotNull
        public final SystemBarStyle auto(@ColorInt int i10, @ColorInt int i11, @NotNull Function1<? super Resources, Boolean> detectDarkMode) {
            Intrinsics.checkNotNullParameter(detectDarkMode, "detectDarkMode");
            return new SystemBarStyle(i10, i11, 0, detectDarkMode, null);
        }
    }

    public /* synthetic */ SystemBarStyle(int i10, int i11, int i12, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, function1);
    }

    @NotNull
    public static final SystemBarStyle auto(@ColorInt int i10, @ColorInt int i11) {
        return Companion.auto(i10, i11);
    }

    @NotNull
    public static final SystemBarStyle dark(@ColorInt int i10) {
        return Companion.dark(i10);
    }

    @NotNull
    public static final SystemBarStyle light(@ColorInt int i10, @ColorInt int i11) {
        return Companion.light(i10, i11);
    }

    public final int getDarkScrim$activity_release() {
        return this.darkScrim;
    }

    @NotNull
    public final Function1<Resources, Boolean> getDetectDarkMode$activity_release() {
        return this.detectDarkMode;
    }

    public final int getNightMode$activity_release() {
        return this.nightMode;
    }

    public final int getScrim$activity_release(boolean z10) {
        if (z10) {
            return this.darkScrim;
        }
        return this.lightScrim;
    }

    public final int getScrimWithEnforcedContrast$activity_release(boolean z10) {
        if (this.nightMode == 0) {
            return 0;
        }
        if (z10) {
            return this.darkScrim;
        }
        return this.lightScrim;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SystemBarStyle(int i10, int i11, int i12, Function1<? super Resources, Boolean> function1) {
        this.lightScrim = i10;
        this.darkScrim = i11;
        this.nightMode = i12;
        this.detectDarkMode = function1;
    }

    @NotNull
    public static final SystemBarStyle auto(@ColorInt int i10, @ColorInt int i11, @NotNull Function1<? super Resources, Boolean> function1) {
        return Companion.auto(i10, i11, function1);
    }
}
