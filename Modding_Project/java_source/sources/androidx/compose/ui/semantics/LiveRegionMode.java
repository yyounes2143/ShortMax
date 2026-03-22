package androidx.compose.ui.semantics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsProperties.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class LiveRegionMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Polite = m3580constructorimpl(0);
    private static final int Assertive = m3580constructorimpl(1);

    /* compiled from: SemanticsProperties.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAssertive-0phEisY  reason: not valid java name */
        public final int m3586getAssertive0phEisY() {
            return LiveRegionMode.Assertive;
        }

        /* renamed from: getPolite-0phEisY  reason: not valid java name */
        public final int m3587getPolite0phEisY() {
            return LiveRegionMode.Polite;
        }

        private Companion() {
        }
    }

    private /* synthetic */ LiveRegionMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ LiveRegionMode m3579boximpl(int i10) {
        return new LiveRegionMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3581equalsimpl(int i10, Object obj) {
        if (!(obj instanceof LiveRegionMode) || i10 != ((LiveRegionMode) obj).m3585unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3582equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3583hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3584toStringimpl(int i10) {
        if (m3582equalsimpl0(i10, Polite)) {
            return "Polite";
        }
        if (m3582equalsimpl0(i10, Assertive)) {
            return "Assertive";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m3581equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3583hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3584toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3585unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m3580constructorimpl(int i10) {
        return i10;
    }
}
