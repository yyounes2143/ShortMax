package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaselineShift.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class BaselineShift {
    private final float multiplier;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float Superscript = m3907constructorimpl(0.5f);
    private static final float Subscript = m3907constructorimpl(-0.5f);
    private static final float None = m3907constructorimpl(0.0f);

    /* compiled from: BaselineShift.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getNone-y9eOQZs  reason: not valid java name */
        public final float m3916getNoney9eOQZs() {
            return BaselineShift.None;
        }

        /* renamed from: getSubscript-y9eOQZs  reason: not valid java name */
        public final float m3917getSubscripty9eOQZs() {
            return BaselineShift.Subscript;
        }

        /* renamed from: getSuperscript-y9eOQZs  reason: not valid java name */
        public final float m3918getSuperscripty9eOQZs() {
            return BaselineShift.Superscript;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getNone-y9eOQZs$annotations  reason: not valid java name */
        public static /* synthetic */ void m3913getNoney9eOQZs$annotations() {
        }

        @Stable
        /* renamed from: getSubscript-y9eOQZs$annotations  reason: not valid java name */
        public static /* synthetic */ void m3914getSubscripty9eOQZs$annotations() {
        }

        @Stable
        /* renamed from: getSuperscript-y9eOQZs$annotations  reason: not valid java name */
        public static /* synthetic */ void m3915getSuperscripty9eOQZs$annotations() {
        }
    }

    private /* synthetic */ BaselineShift(float f10) {
        this.multiplier = f10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ BaselineShift m3906boximpl(float f10) {
        return new BaselineShift(f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3908equalsimpl(float f10, Object obj) {
        if (!(obj instanceof BaselineShift)) {
            return false;
        }
        if (!Intrinsics.areEqual((Object) Float.valueOf(f10), (Object) Float.valueOf(((BaselineShift) obj).m3912unboximpl()))) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3909equalsimpl0(float f10, float f11) {
        return Intrinsics.areEqual((Object) Float.valueOf(f10), (Object) Float.valueOf(f11));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3910hashCodeimpl(float f10) {
        return Float.hashCode(f10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3911toStringimpl(float f10) {
        return "BaselineShift(multiplier=" + f10 + ')';
    }

    public boolean equals(Object obj) {
        return m3908equalsimpl(this.multiplier, obj);
    }

    public final float getMultiplier() {
        return this.multiplier;
    }

    public int hashCode() {
        return m3910hashCodeimpl(this.multiplier);
    }

    public String toString() {
        return m3911toStringimpl(this.multiplier);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ float m3912unboximpl() {
        return this.multiplier;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static float m3907constructorimpl(float f10) {
        return f10;
    }
}
