package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeyondBoundsLayout.kt */
@Metadata
/* loaded from: classes.dex */
public interface BeyondBoundsLayout {

    /* compiled from: BeyondBoundsLayout.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface BeyondBoundsScope {
        boolean getHasMoreContent();
    }

    @Nullable
    /* renamed from: layout-o7g1Pn8 */
    <T> T mo557layouto7g1Pn8(int i10, @NotNull Function1<? super BeyondBoundsScope, ? extends T> function1);

    /* compiled from: BeyondBoundsLayout.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class LayoutDirection {
        private final int value;
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Before = m3313constructorimpl(1);
        private static final int After = m3313constructorimpl(2);
        private static final int Left = m3313constructorimpl(3);
        private static final int Right = m3313constructorimpl(4);
        private static final int Above = m3313constructorimpl(5);
        private static final int Below = m3313constructorimpl(6);

        /* compiled from: BeyondBoundsLayout.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: getAbove-hoxUOeE  reason: not valid java name */
            public final int m3319getAbovehoxUOeE() {
                return LayoutDirection.Above;
            }

            /* renamed from: getAfter-hoxUOeE  reason: not valid java name */
            public final int m3320getAfterhoxUOeE() {
                return LayoutDirection.After;
            }

            /* renamed from: getBefore-hoxUOeE  reason: not valid java name */
            public final int m3321getBeforehoxUOeE() {
                return LayoutDirection.Before;
            }

            /* renamed from: getBelow-hoxUOeE  reason: not valid java name */
            public final int m3322getBelowhoxUOeE() {
                return LayoutDirection.Below;
            }

            /* renamed from: getLeft-hoxUOeE  reason: not valid java name */
            public final int m3323getLefthoxUOeE() {
                return LayoutDirection.Left;
            }

            /* renamed from: getRight-hoxUOeE  reason: not valid java name */
            public final int m3324getRighthoxUOeE() {
                return LayoutDirection.Right;
            }

            private Companion() {
            }
        }

        private /* synthetic */ LayoutDirection(int i10) {
            this.value = i10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ LayoutDirection m3312boximpl(int i10) {
            return new LayoutDirection(i10);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m3314equalsimpl(int i10, Object obj) {
            if (!(obj instanceof LayoutDirection) || i10 != ((LayoutDirection) obj).m3318unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m3315equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m3316hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        @NotNull
        /* renamed from: toString-impl  reason: not valid java name */
        public static String m3317toStringimpl(int i10) {
            if (m3315equalsimpl0(i10, Before)) {
                return "Before";
            }
            if (m3315equalsimpl0(i10, After)) {
                return "After";
            }
            if (m3315equalsimpl0(i10, Left)) {
                return "Left";
            }
            if (m3315equalsimpl0(i10, Right)) {
                return "Right";
            }
            if (m3315equalsimpl0(i10, Above)) {
                return "Above";
            }
            if (m3315equalsimpl0(i10, Below)) {
                return "Below";
            }
            return "invalid LayoutDirection";
        }

        public boolean equals(Object obj) {
            return m3314equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m3316hashCodeimpl(this.value);
        }

        @NotNull
        public String toString() {
            return m3317toStringimpl(this.value);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ int m3318unboximpl() {
            return this.value;
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        public static int m3313constructorimpl(int i10) {
            return i10;
        }
    }
}
