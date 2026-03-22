package com.startshorts.androidplayer.bean.shorts;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatingWindow.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FloatingWindow implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final float FONT_SIZE1 = 9.0f;
    public static final float FONT_SIZE2 = 12.0f;
    public static final float HEIGHT_RATIO1 = 0.24f;
    public static final float HEIGHT_RATIO2 = 0.3f;
    public static final float HEIGHT_RATIO3 = 0.37f;
    public static final float HEIGHT_RATIO4 = 0.45f;
    private float ratio = 0.24f;

    /* renamed from: x  reason: collision with root package name */
    private int f38127x;

    /* renamed from: y  reason: collision with root package name */
    private int f38128y;

    /* compiled from: FloatingWindow.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float closestRatio(float f10) {
            if (f10 <= 0.24f) {
                return 0.24f;
            }
            if (f10 >= 0.45f) {
                return 0.45f;
            }
            if (f10 == 0.3f) {
                return 0.3f;
            }
            if (f10 == 0.37f) {
                return 0.37f;
            }
            float abs = Math.abs(f10 - 0.24f);
            float abs2 = Math.abs(f10 - 0.3f);
            float abs3 = Math.abs(f10 - 0.37f);
            float abs4 = Math.abs(f10 - 0.45f);
            float min = Math.min(Math.min(Math.min(abs, abs2), abs3), abs4);
            if (min == abs) {
                return 0.24f;
            }
            if (min == abs2) {
                return 0.3f;
            }
            if (min == abs3) {
                return 0.37f;
            }
            if (min != abs4) {
                return 0.24f;
            }
            return 0.45f;
        }

        public final float fontRatio(float f10) {
            if (f10 == 0.24f || f10 == 0.3f) {
                return 9.0f;
            }
            if (f10 != 0.37f && f10 != 0.45f) {
                return 9.0f;
            }
            return 12.0f;
        }

        public final float nextRatio(float f10) {
            if (f10 != 0.24f && f10 == 0.45f) {
                return 0.24f;
            }
            return 0.45f;
        }

        private Companion() {
        }
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final int getX() {
        return this.f38127x;
    }

    public final int getY() {
        return this.f38128y;
    }

    public final void setRatio(float f10) {
        this.ratio = f10;
    }

    public final void setX(int i10) {
        this.f38127x = i10;
    }

    public final void setY(int i10) {
        this.f38128y = i10;
    }

    public final void update(float f10, int i10, int i11) {
        this.ratio = f10;
        this.f38127x = i10;
        this.f38128y = i11;
    }

    public final void update(int i10, int i11) {
        this.f38127x = i10;
        this.f38128y = i11;
    }
}
