package androidx.compose.material;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Scaffold.kt */
@Metadata
/* loaded from: classes.dex */
public final class FabPosition {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Center = m1084constructorimpl(0);
    private static final int End = m1084constructorimpl(1);

    /* compiled from: Scaffold.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCenter-5ygKITE  reason: not valid java name */
        public final int m1090getCenter5ygKITE() {
            return FabPosition.Center;
        }

        /* renamed from: getEnd-5ygKITE  reason: not valid java name */
        public final int m1091getEnd5ygKITE() {
            return FabPosition.End;
        }

        private Companion() {
        }
    }

    private /* synthetic */ FabPosition(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FabPosition m1083boximpl(int i10) {
        return new FabPosition(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1085equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FabPosition) || i10 != ((FabPosition) obj).m1089unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1086equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1087hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1088toStringimpl(int i10) {
        if (m1086equalsimpl0(i10, Center)) {
            return "FabPosition.Center";
        }
        return "FabPosition.End";
    }

    public boolean equals(Object obj) {
        return m1085equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1087hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1088toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1089unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1084constructorimpl(int i10) {
        return i10;
    }
}
