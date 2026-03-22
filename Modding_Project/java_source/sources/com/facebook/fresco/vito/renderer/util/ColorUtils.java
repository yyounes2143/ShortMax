package com.facebook.fresco.vito.renderer.util;

import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ColorUtils {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: ColorUtils.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int multiplyColorAlpha(int i10, int i11) {
            if (i11 != 0) {
                if (i11 != 255) {
                    int i12 = i11 + (i11 >> 7);
                    return (i10 & ViewCompat.MEASURED_SIZE_MASK) | ((((i10 >>> 24) * i12) >> 8) << 24);
                }
                return i10;
            }
            return i10 & ViewCompat.MEASURED_SIZE_MASK;
        }

        private Companion() {
        }
    }
}
