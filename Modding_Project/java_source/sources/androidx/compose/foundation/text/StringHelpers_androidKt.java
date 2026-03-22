package androidx.compose.foundation.text;

import java.text.BreakIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringHelpers.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class StringHelpers_androidKt {
    public static final int findFollowingBreak(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.following(i10);
    }

    public static final int findPrecedingBreak(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.preceding(i10);
    }
}
