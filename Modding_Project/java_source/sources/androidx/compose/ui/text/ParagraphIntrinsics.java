package androidx.compose.ui.text;

import kotlin.Metadata;
/* compiled from: ParagraphIntrinsics.kt */
@Metadata
/* loaded from: classes.dex */
public interface ParagraphIntrinsics {
    default boolean getHasStaleResolvedFonts() {
        return false;
    }

    float getMaxIntrinsicWidth();

    float getMinIntrinsicWidth();
}
