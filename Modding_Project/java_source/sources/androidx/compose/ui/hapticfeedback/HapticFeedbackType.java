package androidx.compose.ui.hapticfeedback;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: HapticFeedbackType.kt */
@Metadata
/* loaded from: classes.dex */
public final class HapticFeedbackType {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int value;

    /* compiled from: HapticFeedbackType.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getLongPress-5zf0vsI  reason: not valid java name */
        public final int m2462getLongPress5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m2464getLongPress5zf0vsI();
        }

        /* renamed from: getTextHandleMove-5zf0vsI  reason: not valid java name */
        public final int m2463getTextHandleMove5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m2465getTextHandleMove5zf0vsI();
        }

        @NotNull
        public final List<HapticFeedbackType> values() {
            return CollectionsKt.q(HapticFeedbackType.m2455boximpl(m2462getLongPress5zf0vsI()), HapticFeedbackType.m2455boximpl(m2463getTextHandleMove5zf0vsI()));
        }

        private Companion() {
        }
    }

    private /* synthetic */ HapticFeedbackType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ HapticFeedbackType m2455boximpl(int i10) {
        return new HapticFeedbackType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2457equalsimpl(int i10, Object obj) {
        if (!(obj instanceof HapticFeedbackType) || i10 != ((HapticFeedbackType) obj).m2461unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2458equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2459hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2460toStringimpl(int i10) {
        Companion companion = Companion;
        if (m2458equalsimpl0(i10, companion.m2462getLongPress5zf0vsI())) {
            return "LongPress";
        }
        if (m2458equalsimpl0(i10, companion.m2463getTextHandleMove5zf0vsI())) {
            return "TextHandleMove";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m2457equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2459hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2460toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2461unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2456constructorimpl(int i10) {
        return i10;
    }
}
