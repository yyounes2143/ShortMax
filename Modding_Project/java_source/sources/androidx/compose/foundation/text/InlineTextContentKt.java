package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InlineTextContent.kt */
@Metadata
/* loaded from: classes.dex */
public final class InlineTextContentKt {
    @NotNull
    public static final String INLINE_CONTENT_TAG = "androidx.compose.foundation.text.inlineContent";
    @NotNull
    private static final String REPLACEMENT_CHAR = "�";

    public static final void appendInlineContent(@NotNull AnnotatedString.Builder builder, @NotNull String id2, @NotNull String alternateText) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(alternateText, "alternateText");
        if (alternateText.length() > 0) {
            builder.pushStringAnnotation(INLINE_CONTENT_TAG, id2);
            builder.append(alternateText);
            builder.pop();
            return;
        }
        throw new IllegalArgumentException("alternateText can't be an empty string.");
    }

    public static /* synthetic */ void appendInlineContent$default(AnnotatedString.Builder builder, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = REPLACEMENT_CHAR;
        }
        appendInlineContent(builder, str, str2);
    }
}
