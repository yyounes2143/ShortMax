package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: NestedScrollModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollSource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Drag = m3102constructorimpl(1);
    private static final int Fling = m3102constructorimpl(2);
    private static final int Relocate = m3102constructorimpl(3);
    private final int value;

    /* compiled from: NestedScrollModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDrag-WNlRxjI  reason: not valid java name */
        public final int m3109getDragWNlRxjI() {
            return NestedScrollSource.Drag;
        }

        /* renamed from: getFling-WNlRxjI  reason: not valid java name */
        public final int m3110getFlingWNlRxjI() {
            return NestedScrollSource.Fling;
        }

        /* renamed from: getRelocate-WNlRxjI  reason: not valid java name */
        public final int m3111getRelocateWNlRxjI() {
            return NestedScrollSource.Relocate;
        }

        private Companion() {
        }

        @c
        @ExperimentalComposeUiApi
        /* renamed from: getRelocate-WNlRxjI$annotations  reason: not valid java name */
        public static /* synthetic */ void m3108getRelocateWNlRxjI$annotations() {
        }
    }

    private /* synthetic */ NestedScrollSource(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ NestedScrollSource m3101boximpl(int i10) {
        return new NestedScrollSource(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3103equalsimpl(int i10, Object obj) {
        if (!(obj instanceof NestedScrollSource) || i10 != ((NestedScrollSource) obj).m3107unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3104equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3105hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3106toStringimpl(int i10) {
        if (m3104equalsimpl0(i10, Drag)) {
            return "Drag";
        }
        if (m3104equalsimpl0(i10, Fling)) {
            return "Fling";
        }
        if (m3104equalsimpl0(i10, Relocate)) {
            return "Relocate";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3103equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3105hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3106toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3107unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3102constructorimpl(int i10) {
        return i10;
    }
}
