package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontLoadingStrategy.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontLoadingStrategy {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Blocking = m3760constructorimpl(0);
    private static final int OptionalLocal = m3760constructorimpl(1);
    private static final int Async = m3760constructorimpl(2);

    /* compiled from: FontLoadingStrategy.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAsync-PKNRLFQ  reason: not valid java name */
        public final int m3766getAsyncPKNRLFQ() {
            return FontLoadingStrategy.Async;
        }

        /* renamed from: getBlocking-PKNRLFQ  reason: not valid java name */
        public final int m3767getBlockingPKNRLFQ() {
            return FontLoadingStrategy.Blocking;
        }

        /* renamed from: getOptionalLocal-PKNRLFQ  reason: not valid java name */
        public final int m3768getOptionalLocalPKNRLFQ() {
            return FontLoadingStrategy.OptionalLocal;
        }

        private Companion() {
        }
    }

    private /* synthetic */ FontLoadingStrategy(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FontLoadingStrategy m3759boximpl(int i10) {
        return new FontLoadingStrategy(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3761equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FontLoadingStrategy) || i10 != ((FontLoadingStrategy) obj).m3765unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3762equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3763hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3764toStringimpl(int i10) {
        if (m3762equalsimpl0(i10, Blocking)) {
            return "Blocking";
        }
        if (m3762equalsimpl0(i10, OptionalLocal)) {
            return "Optional";
        }
        if (m3762equalsimpl0(i10, Async)) {
            return "Async";
        }
        return "Invalid(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m3761equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m3763hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3764toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3765unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m3760constructorimpl(int i10) {
        return i10;
    }
}
