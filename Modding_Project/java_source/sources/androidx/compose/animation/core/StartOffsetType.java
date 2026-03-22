package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public final class StartOffsetType {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Delay = m167constructorimpl(-1);
    private static final int FastForward = m167constructorimpl(1);
    private final int value;

    /* compiled from: AnimationSpec.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDelay-Eo1U57Q  reason: not valid java name */
        public final int m173getDelayEo1U57Q() {
            return StartOffsetType.Delay;
        }

        /* renamed from: getFastForward-Eo1U57Q  reason: not valid java name */
        public final int m174getFastForwardEo1U57Q() {
            return StartOffsetType.FastForward;
        }

        private Companion() {
        }
    }

    private /* synthetic */ StartOffsetType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ StartOffsetType m166boximpl(int i10) {
        return new StartOffsetType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m168equalsimpl(int i10, Object obj) {
        if (!(obj instanceof StartOffsetType) || i10 != ((StartOffsetType) obj).m172unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m169equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m170hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m171toStringimpl(int i10) {
        return "StartOffsetType(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m168equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m170hashCodeimpl(this.value);
    }

    public String toString() {
        return m171toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m172unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m167constructorimpl(int i10) {
        return i10;
    }
}
