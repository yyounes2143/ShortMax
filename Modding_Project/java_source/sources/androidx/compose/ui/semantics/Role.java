package androidx.compose.ui.semantics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsProperties.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Role {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Button = m3589constructorimpl(0);
    private static final int Checkbox = m3589constructorimpl(1);
    private static final int Switch = m3589constructorimpl(2);
    private static final int RadioButton = m3589constructorimpl(3);
    private static final int Tab = m3589constructorimpl(4);
    private static final int Image = m3589constructorimpl(5);

    /* compiled from: SemanticsProperties.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getButton-o7Vup1c  reason: not valid java name */
        public final int m3595getButtono7Vup1c() {
            return Role.Button;
        }

        /* renamed from: getCheckbox-o7Vup1c  reason: not valid java name */
        public final int m3596getCheckboxo7Vup1c() {
            return Role.Checkbox;
        }

        /* renamed from: getImage-o7Vup1c  reason: not valid java name */
        public final int m3597getImageo7Vup1c() {
            return Role.Image;
        }

        /* renamed from: getRadioButton-o7Vup1c  reason: not valid java name */
        public final int m3598getRadioButtono7Vup1c() {
            return Role.RadioButton;
        }

        /* renamed from: getSwitch-o7Vup1c  reason: not valid java name */
        public final int m3599getSwitcho7Vup1c() {
            return Role.Switch;
        }

        /* renamed from: getTab-o7Vup1c  reason: not valid java name */
        public final int m3600getTabo7Vup1c() {
            return Role.Tab;
        }

        private Companion() {
        }
    }

    private /* synthetic */ Role(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Role m3588boximpl(int i10) {
        return new Role(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3590equalsimpl(int i10, Object obj) {
        if (!(obj instanceof Role) || i10 != ((Role) obj).m3594unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3591equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3592hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3593toStringimpl(int i10) {
        if (m3591equalsimpl0(i10, Button)) {
            return "Button";
        }
        if (m3591equalsimpl0(i10, Checkbox)) {
            return "Checkbox";
        }
        if (m3591equalsimpl0(i10, Switch)) {
            return "Switch";
        }
        if (m3591equalsimpl0(i10, RadioButton)) {
            return "RadioButton";
        }
        if (m3591equalsimpl0(i10, Tab)) {
            return "Tab";
        }
        if (m3591equalsimpl0(i10, Image)) {
            return "Image";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m3590equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3592hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3593toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3594unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m3589constructorimpl(int i10) {
        return i10;
    }
}
