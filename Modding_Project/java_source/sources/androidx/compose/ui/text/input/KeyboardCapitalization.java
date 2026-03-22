package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyboardCapitalization.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyboardCapitalization {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = m3843constructorimpl(0);
    private static final int Characters = m3843constructorimpl(1);
    private static final int Words = m3843constructorimpl(2);
    private static final int Sentences = m3843constructorimpl(3);

    /* compiled from: KeyboardCapitalization.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCharacters-IUNYP9k  reason: not valid java name */
        public final int m3849getCharactersIUNYP9k() {
            return KeyboardCapitalization.Characters;
        }

        /* renamed from: getNone-IUNYP9k  reason: not valid java name */
        public final int m3850getNoneIUNYP9k() {
            return KeyboardCapitalization.None;
        }

        /* renamed from: getSentences-IUNYP9k  reason: not valid java name */
        public final int m3851getSentencesIUNYP9k() {
            return KeyboardCapitalization.Sentences;
        }

        /* renamed from: getWords-IUNYP9k  reason: not valid java name */
        public final int m3852getWordsIUNYP9k() {
            return KeyboardCapitalization.Words;
        }

        private Companion() {
        }
    }

    private /* synthetic */ KeyboardCapitalization(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ KeyboardCapitalization m3842boximpl(int i10) {
        return new KeyboardCapitalization(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3844equalsimpl(int i10, Object obj) {
        if (!(obj instanceof KeyboardCapitalization) || i10 != ((KeyboardCapitalization) obj).m3848unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3845equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3846hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3847toStringimpl(int i10) {
        if (m3845equalsimpl0(i10, None)) {
            return "None";
        }
        if (m3845equalsimpl0(i10, Characters)) {
            return "Characters";
        }
        if (m3845equalsimpl0(i10, Words)) {
            return "Words";
        }
        if (m3845equalsimpl0(i10, Sentences)) {
            return "Sentences";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3844equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3846hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3847toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3848unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3843constructorimpl(int i10) {
        return i10;
    }
}
