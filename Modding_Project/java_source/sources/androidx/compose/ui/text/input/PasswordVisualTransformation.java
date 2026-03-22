package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VisualTransformation.kt */
@Metadata
/* loaded from: classes.dex */
public final class PasswordVisualTransformation implements VisualTransformation {
    private final char mask;

    public PasswordVisualTransformation() {
        this((char) 0, 1, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof PasswordVisualTransformation) && this.mask == ((PasswordVisualTransformation) obj).mask) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    @NotNull
    public TransformedText filter(@NotNull AnnotatedString text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new TransformedText(new AnnotatedString(StringsKt.L(String.valueOf(this.mask), text.getText().length()), null, null, 6, null), OffsetMapping.Companion.getIdentity());
    }

    public final char getMask() {
        return this.mask;
    }

    public int hashCode() {
        return Character.hashCode(this.mask);
    }

    public PasswordVisualTransformation(char c10) {
        this.mask = c10;
    }

    public /* synthetic */ PasswordVisualTransformation(char c10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? (char) 8226 : c10);
    }
}
