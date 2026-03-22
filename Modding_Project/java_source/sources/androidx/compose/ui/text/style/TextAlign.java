package androidx.compose.ui.text.style;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextAlign.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextAlign {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Left = m3951constructorimpl(1);
    private static final int Right = m3951constructorimpl(2);
    private static final int Center = m3951constructorimpl(3);
    private static final int Justify = m3951constructorimpl(4);
    private static final int Start = m3951constructorimpl(5);
    private static final int End = m3951constructorimpl(6);

    /* compiled from: TextAlign.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCenter-e0LSkKk  reason: not valid java name */
        public final int m3957getCentere0LSkKk() {
            return TextAlign.Center;
        }

        /* renamed from: getEnd-e0LSkKk  reason: not valid java name */
        public final int m3958getEnde0LSkKk() {
            return TextAlign.End;
        }

        /* renamed from: getJustify-e0LSkKk  reason: not valid java name */
        public final int m3959getJustifye0LSkKk() {
            return TextAlign.Justify;
        }

        /* renamed from: getLeft-e0LSkKk  reason: not valid java name */
        public final int m3960getLefte0LSkKk() {
            return TextAlign.Left;
        }

        /* renamed from: getRight-e0LSkKk  reason: not valid java name */
        public final int m3961getRighte0LSkKk() {
            return TextAlign.Right;
        }

        /* renamed from: getStart-e0LSkKk  reason: not valid java name */
        public final int m3962getStarte0LSkKk() {
            return TextAlign.Start;
        }

        @NotNull
        public final List<TextAlign> values() {
            return CollectionsKt.q(TextAlign.m3950boximpl(m3960getLefte0LSkKk()), TextAlign.m3950boximpl(m3961getRighte0LSkKk()), TextAlign.m3950boximpl(m3957getCentere0LSkKk()), TextAlign.m3950boximpl(m3959getJustifye0LSkKk()), TextAlign.m3950boximpl(m3962getStarte0LSkKk()), TextAlign.m3950boximpl(m3958getEnde0LSkKk()));
        }

        private Companion() {
        }
    }

    private /* synthetic */ TextAlign(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextAlign m3950boximpl(int i10) {
        return new TextAlign(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3952equalsimpl(int i10, Object obj) {
        if (!(obj instanceof TextAlign) || i10 != ((TextAlign) obj).m3956unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3953equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3954hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3955toStringimpl(int i10) {
        if (m3953equalsimpl0(i10, Left)) {
            return "Left";
        }
        if (m3953equalsimpl0(i10, Right)) {
            return "Right";
        }
        if (m3953equalsimpl0(i10, Center)) {
            return "Center";
        }
        if (m3953equalsimpl0(i10, Justify)) {
            return "Justify";
        }
        if (m3953equalsimpl0(i10, Start)) {
            return "Start";
        }
        if (m3953equalsimpl0(i10, End)) {
            return "End";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3952equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3954hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3955toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3956unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3951constructorimpl(int i10) {
        return i10;
    }
}
