package androidx.compose.ui.text.android.selection;

import androidx.compose.ui.text.android.InternalPlatformTextApi;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WordBoundary.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class WordBoundary {
    @NotNull
    private final WordIterator wordIterator;

    public WordBoundary(@NotNull Locale locale, @NotNull CharSequence text) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(text, "text");
        this.wordIterator = new WordIterator(text, 0, text.length(), locale);
    }

    public final int getWordEnd(int i10) {
        int nextWordEndOnTwoWordBoundary;
        if (this.wordIterator.isAfterPunctuation(this.wordIterator.nextBoundary(i10))) {
            nextWordEndOnTwoWordBoundary = this.wordIterator.getPunctuationEnd(i10);
        } else {
            nextWordEndOnTwoWordBoundary = this.wordIterator.getNextWordEndOnTwoWordBoundary(i10);
        }
        if (nextWordEndOnTwoWordBoundary != -1) {
            return nextWordEndOnTwoWordBoundary;
        }
        return i10;
    }

    public final int getWordStart(int i10) {
        int prevWordBeginningOnTwoWordsBoundary;
        if (this.wordIterator.isOnPunctuation(this.wordIterator.prevBoundary(i10))) {
            prevWordBeginningOnTwoWordsBoundary = this.wordIterator.getPunctuationBeginning(i10);
        } else {
            prevWordBeginningOnTwoWordsBoundary = this.wordIterator.getPrevWordBeginningOnTwoWordsBoundary(i10);
        }
        if (prevWordBeginningOnTwoWordsBoundary != -1) {
            return prevWordBeginningOnTwoWordsBoundary;
        }
        return i10;
    }
}
