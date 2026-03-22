package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyboardType.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyboardType {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Text = m3854constructorimpl(1);
    private static final int Ascii = m3854constructorimpl(2);
    private static final int Number = m3854constructorimpl(3);
    private static final int Phone = m3854constructorimpl(4);
    private static final int Uri = m3854constructorimpl(5);
    private static final int Email = m3854constructorimpl(6);
    private static final int Password = m3854constructorimpl(7);
    private static final int NumberPassword = m3854constructorimpl(8);
    private static final int Decimal = m3854constructorimpl(9);

    /* compiled from: KeyboardType.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAscii-PjHm6EE  reason: not valid java name */
        public final int m3860getAsciiPjHm6EE() {
            return KeyboardType.Ascii;
        }

        /* renamed from: getDecimal-PjHm6EE  reason: not valid java name */
        public final int m3861getDecimalPjHm6EE() {
            return KeyboardType.Decimal;
        }

        /* renamed from: getEmail-PjHm6EE  reason: not valid java name */
        public final int m3862getEmailPjHm6EE() {
            return KeyboardType.Email;
        }

        /* renamed from: getNumber-PjHm6EE  reason: not valid java name */
        public final int m3863getNumberPjHm6EE() {
            return KeyboardType.Number;
        }

        /* renamed from: getNumberPassword-PjHm6EE  reason: not valid java name */
        public final int m3864getNumberPasswordPjHm6EE() {
            return KeyboardType.NumberPassword;
        }

        /* renamed from: getPassword-PjHm6EE  reason: not valid java name */
        public final int m3865getPasswordPjHm6EE() {
            return KeyboardType.Password;
        }

        /* renamed from: getPhone-PjHm6EE  reason: not valid java name */
        public final int m3866getPhonePjHm6EE() {
            return KeyboardType.Phone;
        }

        /* renamed from: getText-PjHm6EE  reason: not valid java name */
        public final int m3867getTextPjHm6EE() {
            return KeyboardType.Text;
        }

        /* renamed from: getUri-PjHm6EE  reason: not valid java name */
        public final int m3868getUriPjHm6EE() {
            return KeyboardType.Uri;
        }

        private Companion() {
        }
    }

    private /* synthetic */ KeyboardType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ KeyboardType m3853boximpl(int i10) {
        return new KeyboardType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3855equalsimpl(int i10, Object obj) {
        if (!(obj instanceof KeyboardType) || i10 != ((KeyboardType) obj).m3859unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3856equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3857hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3858toStringimpl(int i10) {
        if (m3856equalsimpl0(i10, Text)) {
            return "Text";
        }
        if (m3856equalsimpl0(i10, Ascii)) {
            return "Ascii";
        }
        if (m3856equalsimpl0(i10, Number)) {
            return "Number";
        }
        if (m3856equalsimpl0(i10, Phone)) {
            return "Phone";
        }
        if (m3856equalsimpl0(i10, Uri)) {
            return "Uri";
        }
        if (m3856equalsimpl0(i10, Email)) {
            return "Email";
        }
        if (m3856equalsimpl0(i10, Password)) {
            return "Password";
        }
        if (m3856equalsimpl0(i10, NumberPassword)) {
            return "NumberPassword";
        }
        if (m3856equalsimpl0(i10, Decimal)) {
            return "Decimal";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3855equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3857hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3858toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3859unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3854constructorimpl(int i10) {
        return i10;
    }
}
