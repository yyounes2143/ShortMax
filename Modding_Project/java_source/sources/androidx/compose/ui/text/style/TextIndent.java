package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextIndent.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextIndent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final TextIndent None = new TextIndent(0, 0, 3, null);
    private final long firstLine;
    private final long restLine;

    /* compiled from: TextIndent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextIndent getNone() {
            return TextIndent.None;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getNone$annotations() {
        }
    }

    public /* synthetic */ TextIndent(long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11);
    }

    /* renamed from: copy-NB67dxo$default  reason: not valid java name */
    public static /* synthetic */ TextIndent m3976copyNB67dxo$default(TextIndent textIndent, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = textIndent.firstLine;
        }
        if ((i10 & 2) != 0) {
            j11 = textIndent.restLine;
        }
        return textIndent.m3977copyNB67dxo(j10, j11);
    }

    @NotNull
    /* renamed from: copy-NB67dxo  reason: not valid java name */
    public final TextIndent m3977copyNB67dxo(long j10, long j11) {
        return new TextIndent(j10, j11, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextIndent)) {
            return false;
        }
        TextIndent textIndent = (TextIndent) obj;
        if (TextUnit.m4227equalsimpl0(this.firstLine, textIndent.firstLine) && TextUnit.m4227equalsimpl0(this.restLine, textIndent.restLine)) {
            return true;
        }
        return false;
    }

    /* renamed from: getFirstLine-XSAIIZE  reason: not valid java name */
    public final long m3978getFirstLineXSAIIZE() {
        return this.firstLine;
    }

    /* renamed from: getRestLine-XSAIIZE  reason: not valid java name */
    public final long m3979getRestLineXSAIIZE() {
        return this.restLine;
    }

    public int hashCode() {
        return (TextUnit.m4231hashCodeimpl(this.firstLine) * 31) + TextUnit.m4231hashCodeimpl(this.restLine);
    }

    @NotNull
    public String toString() {
        return "TextIndent(firstLine=" + ((Object) TextUnit.m4237toStringimpl(this.firstLine)) + ", restLine=" + ((Object) TextUnit.m4237toStringimpl(this.restLine)) + ')';
    }

    private TextIndent(long j10, long j11) {
        this.firstLine = j10;
        this.restLine = j11;
    }

    public /* synthetic */ TextIndent(long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? TextUnitKt.getSp(0) : j10, (i10 & 2) != 0 ? TextUnitKt.getSp(0) : j11, null);
    }
}
