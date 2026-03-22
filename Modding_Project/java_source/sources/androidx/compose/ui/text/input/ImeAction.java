package androidx.compose.ui.text.input;

import androidx.webkit.Profile;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImeAction.kt */
@Metadata
/* loaded from: classes.dex */
public final class ImeAction {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Default = m3821constructorimpl(1);
    private static final int None = m3821constructorimpl(0);
    private static final int Go = m3821constructorimpl(2);
    private static final int Search = m3821constructorimpl(3);
    private static final int Send = m3821constructorimpl(4);
    private static final int Previous = m3821constructorimpl(5);
    private static final int Next = m3821constructorimpl(6);
    private static final int Done = m3821constructorimpl(7);

    /* compiled from: ImeAction.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDefault-eUduSuo  reason: not valid java name */
        public final int m3827getDefaulteUduSuo() {
            return ImeAction.Default;
        }

        /* renamed from: getDone-eUduSuo  reason: not valid java name */
        public final int m3828getDoneeUduSuo() {
            return ImeAction.Done;
        }

        /* renamed from: getGo-eUduSuo  reason: not valid java name */
        public final int m3829getGoeUduSuo() {
            return ImeAction.Go;
        }

        /* renamed from: getNext-eUduSuo  reason: not valid java name */
        public final int m3830getNexteUduSuo() {
            return ImeAction.Next;
        }

        /* renamed from: getNone-eUduSuo  reason: not valid java name */
        public final int m3831getNoneeUduSuo() {
            return ImeAction.None;
        }

        /* renamed from: getPrevious-eUduSuo  reason: not valid java name */
        public final int m3832getPreviouseUduSuo() {
            return ImeAction.Previous;
        }

        /* renamed from: getSearch-eUduSuo  reason: not valid java name */
        public final int m3833getSearcheUduSuo() {
            return ImeAction.Search;
        }

        /* renamed from: getSend-eUduSuo  reason: not valid java name */
        public final int m3834getSendeUduSuo() {
            return ImeAction.Send;
        }

        private Companion() {
        }
    }

    private /* synthetic */ ImeAction(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ImeAction m3820boximpl(int i10) {
        return new ImeAction(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3822equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ImeAction) || i10 != ((ImeAction) obj).m3826unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3823equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3824hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3825toStringimpl(int i10) {
        if (m3823equalsimpl0(i10, None)) {
            return "None";
        }
        if (m3823equalsimpl0(i10, Default)) {
            return Profile.DEFAULT_PROFILE_NAME;
        }
        if (m3823equalsimpl0(i10, Go)) {
            return "Go";
        }
        if (m3823equalsimpl0(i10, Search)) {
            return "Search";
        }
        if (m3823equalsimpl0(i10, Send)) {
            return "Send";
        }
        if (m3823equalsimpl0(i10, Previous)) {
            return "Previous";
        }
        if (m3823equalsimpl0(i10, Next)) {
            return "Next";
        }
        if (m3823equalsimpl0(i10, Done)) {
            return "Done";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3822equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3824hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3825toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3826unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3821constructorimpl(int i10) {
        return i10;
    }
}
