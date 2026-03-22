package androidx.compose.ui.text.input;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldValue.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextFieldValue {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<TextFieldValue, Object> Saver = SaverKt.Saver(new Function2<SaverScope, TextFieldValue, Object>() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver2, @NotNull TextFieldValue it) {
            Intrinsics.checkNotNullParameter(Saver2, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.h(SaversKt.save(it.getAnnotatedString(), SaversKt.getAnnotatedStringSaver(), Saver2), SaversKt.save(TextRange.m3685boximpl(it.m3874getSelectiond9O1mEE()), SaversKt.getSaver(TextRange.Companion), Saver2));
        }
    }, new Function1<Object, TextFieldValue>() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final TextFieldValue invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Saver<AnnotatedString, Object> annotatedStringSaver = SaversKt.getAnnotatedStringSaver();
            Boolean bool = Boolean.FALSE;
            TextRange textRange = null;
            AnnotatedString restore = (Intrinsics.areEqual(obj, bool) || obj == null) ? null : annotatedStringSaver.restore(obj);
            Intrinsics.checkNotNull(restore);
            Object obj2 = list.get(1);
            Saver<TextRange, Object> saver = SaversKt.getSaver(TextRange.Companion);
            if (!Intrinsics.areEqual(obj2, bool) && obj2 != null) {
                textRange = saver.restore(obj2);
            }
            Intrinsics.checkNotNull(textRange);
            return new TextFieldValue(restore, textRange.m3701unboximpl(), (TextRange) null, 4, (DefaultConstructorMarker) null);
        }
    });
    @NotNull
    private final AnnotatedString annotatedString;
    @Nullable
    private final TextRange composition;
    private final long selection;

    /* compiled from: TextFieldValue.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<TextFieldValue, Object> getSaver() {
            return TextFieldValue.Saver;
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j10, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j10, textRange);
    }

    /* renamed from: copy-3r_uNRQ$default  reason: not valid java name */
    public static /* synthetic */ TextFieldValue m3869copy3r_uNRQ$default(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j10, TextRange textRange, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            annotatedString = textFieldValue.annotatedString;
        }
        if ((i10 & 2) != 0) {
            j10 = textFieldValue.selection;
        }
        if ((i10 & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.m3871copy3r_uNRQ(annotatedString, j10, textRange);
    }

    @NotNull
    /* renamed from: copy-3r_uNRQ  reason: not valid java name */
    public final TextFieldValue m3871copy3r_uNRQ(@NotNull AnnotatedString annotatedString, long j10, @Nullable TextRange textRange) {
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        return new TextFieldValue(annotatedString, j10, textRange, (DefaultConstructorMarker) null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        if (TextRange.m3690equalsimpl0(this.selection, textFieldValue.selection) && Intrinsics.areEqual(this.composition, textFieldValue.composition) && Intrinsics.areEqual(this.annotatedString, textFieldValue.annotatedString)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    @Nullable
    /* renamed from: getComposition-MzsxiRA  reason: not valid java name */
    public final TextRange m3873getCompositionMzsxiRA() {
        return this.composition;
    }

    /* renamed from: getSelection-d9O1mEE  reason: not valid java name */
    public final long m3874getSelectiond9O1mEE() {
        return this.selection;
    }

    @NotNull
    public final String getText() {
        return this.annotatedString.getText();
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.annotatedString.hashCode() * 31) + TextRange.m3698hashCodeimpl(this.selection)) * 31;
        TextRange textRange = this.composition;
        if (textRange != null) {
            i10 = TextRange.m3698hashCodeimpl(textRange.m3701unboximpl());
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.annotatedString) + "', selection=" + ((Object) TextRange.m3700toStringimpl(this.selection)) + ", composition=" + this.composition + ')';
    }

    public /* synthetic */ TextFieldValue(String str, long j10, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, textRange);
    }

    @NotNull
    /* renamed from: copy-3r_uNRQ  reason: not valid java name */
    public final TextFieldValue m3872copy3r_uNRQ(@NotNull String text, long j10, @Nullable TextRange textRange) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new TextFieldValue(new AnnotatedString(text, null, null, 6, null), j10, textRange, (DefaultConstructorMarker) null);
    }

    private TextFieldValue(AnnotatedString annotatedString, long j10, TextRange textRange) {
        this.annotatedString = annotatedString;
        this.selection = TextRangeKt.m3703constrain8ffj60Q(j10, 0, getText().length());
        this.composition = textRange != null ? TextRange.m3685boximpl(TextRangeKt.m3703constrain8ffj60Q(textRange.m3701unboximpl(), 0, getText().length())) : null;
    }

    /* renamed from: copy-3r_uNRQ$default  reason: not valid java name */
    public static /* synthetic */ TextFieldValue m3870copy3r_uNRQ$default(TextFieldValue textFieldValue, String str, long j10, TextRange textRange, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = textFieldValue.selection;
        }
        if ((i10 & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.m3872copy3r_uNRQ(str, j10, textRange);
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j10, TextRange textRange, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, (i10 & 2) != 0 ? TextRange.Companion.m3702getZerod9O1mEE() : j10, (i10 & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j10, TextRange textRange, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? TextRange.Companion.m3702getZerod9O1mEE() : j10, (i10 & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    private TextFieldValue(String str, long j10, TextRange textRange) {
        this(new AnnotatedString(str, null, null, 6, null), j10, textRange, (DefaultConstructorMarker) null);
    }
}
