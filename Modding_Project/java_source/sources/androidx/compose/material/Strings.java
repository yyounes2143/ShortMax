package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Strings.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Strings {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int NavigationMenu = m1184constructorimpl(0);
    private static final int CloseDrawer = m1184constructorimpl(1);
    private static final int CloseSheet = m1184constructorimpl(2);
    private static final int DefaultErrorMessage = m1184constructorimpl(3);
    private static final int ExposedDropdownMenu = m1184constructorimpl(4);
    private static final int SliderRangeStart = m1184constructorimpl(5);
    private static final int SliderRangeEnd = m1184constructorimpl(6);

    /* compiled from: Strings.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCloseDrawer-UdPEhr4  reason: not valid java name */
        public final int m1190getCloseDrawerUdPEhr4() {
            return Strings.CloseDrawer;
        }

        /* renamed from: getCloseSheet-UdPEhr4  reason: not valid java name */
        public final int m1191getCloseSheetUdPEhr4() {
            return Strings.CloseSheet;
        }

        /* renamed from: getDefaultErrorMessage-UdPEhr4  reason: not valid java name */
        public final int m1192getDefaultErrorMessageUdPEhr4() {
            return Strings.DefaultErrorMessage;
        }

        /* renamed from: getExposedDropdownMenu-UdPEhr4  reason: not valid java name */
        public final int m1193getExposedDropdownMenuUdPEhr4() {
            return Strings.ExposedDropdownMenu;
        }

        /* renamed from: getNavigationMenu-UdPEhr4  reason: not valid java name */
        public final int m1194getNavigationMenuUdPEhr4() {
            return Strings.NavigationMenu;
        }

        /* renamed from: getSliderRangeEnd-UdPEhr4  reason: not valid java name */
        public final int m1195getSliderRangeEndUdPEhr4() {
            return Strings.SliderRangeEnd;
        }

        /* renamed from: getSliderRangeStart-UdPEhr4  reason: not valid java name */
        public final int m1196getSliderRangeStartUdPEhr4() {
            return Strings.SliderRangeStart;
        }

        private Companion() {
        }
    }

    private /* synthetic */ Strings(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Strings m1183boximpl(int i10) {
        return new Strings(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1185equalsimpl(int i10, Object obj) {
        if (!(obj instanceof Strings) || i10 != ((Strings) obj).m1189unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1186equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1187hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1188toStringimpl(int i10) {
        return "Strings(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m1185equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1187hashCodeimpl(this.value);
    }

    public String toString() {
        return m1188toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1189unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m1184constructorimpl(int i10) {
        return i10;
    }
}
