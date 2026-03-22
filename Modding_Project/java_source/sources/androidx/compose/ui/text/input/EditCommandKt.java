package androidx.compose.ui.text.input;

import kotlin.Metadata;
/* compiled from: EditCommand.kt */
@Metadata
/* loaded from: classes.dex */
public final class EditCommandKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isSurrogatePair(char c10, char c11) {
        if (Character.isHighSurrogate(c10) && Character.isLowSurrogate(c11)) {
            return true;
        }
        return false;
    }
}
