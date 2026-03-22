package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.text.BreakIterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccessibilityIterators.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AccessibilityIterators {

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static abstract class AbstractTextSegmentIterator implements TextSegmentIterator {
        public static final int $stable = 8;
        @NotNull
        private final int[] segment = new int[2];
        protected String text;

        @Nullable
        protected final int[] getRange(int i10, int i11) {
            if (i10 >= 0 && i11 >= 0 && i10 != i11) {
                int[] iArr = this.segment;
                iArr[0] = i10;
                iArr[1] = i11;
                return iArr;
            }
            return null;
        }

        @NotNull
        protected final String getText() {
            String str = this.text;
            if (str != null) {
                return str;
            }
            Intrinsics.throwUninitializedPropertyAccessException(MimeTypes.BASE_TYPE_TEXT);
            return null;
        }

        public void initialize(@NotNull String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            setText(text);
        }

        protected final void setText(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.text = str;
        }
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static class CharacterTextSegmentIterator extends AbstractTextSegmentIterator {
        @Nullable
        private static CharacterTextSegmentIterator instance;
        private BreakIterator impl;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        /* compiled from: AccessibilityIterators.android.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final CharacterTextSegmentIterator getInstance(@NotNull Locale locale) {
                Intrinsics.checkNotNullParameter(locale, "locale");
                if (CharacterTextSegmentIterator.instance == null) {
                    CharacterTextSegmentIterator.instance = new CharacterTextSegmentIterator(locale, null);
                }
                CharacterTextSegmentIterator characterTextSegmentIterator = CharacterTextSegmentIterator.instance;
                if (characterTextSegmentIterator != null) {
                    return characterTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator");
            }

            private Companion() {
            }
        }

        public /* synthetic */ CharacterTextSegmentIterator(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
            this(locale);
        }

        private final void onLocaleChanged(Locale locale) {
            BreakIterator characterInstance = BreakIterator.getCharacterInstance(locale);
            Intrinsics.checkNotNullExpressionValue(characterInstance, "getCharacterInstance(locale)");
            this.impl = characterInstance;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] following(int i10) {
            int length = getText().length();
            if (length <= 0 || i10 >= length) {
                return null;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            do {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    breakIterator = null;
                }
                if (!breakIterator.isBoundary(i10)) {
                    BreakIterator breakIterator2 = this.impl;
                    if (breakIterator2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        breakIterator2 = null;
                    }
                    i10 = breakIterator2.following(i10);
                } else {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        breakIterator3 = null;
                    }
                    int following = breakIterator3.following(i10);
                    if (following == -1) {
                        return null;
                    }
                    return getRange(i10, following);
                }
            } while (i10 != -1);
            return null;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.AbstractTextSegmentIterator
        public void initialize(@NotNull String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            super.initialize(text);
            BreakIterator breakIterator = this.impl;
            if (breakIterator == null) {
                Intrinsics.throwUninitializedPropertyAccessException("impl");
                breakIterator = null;
            }
            breakIterator.setText(text);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] preceding(int i10) {
            int length = getText().length();
            if (length <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > length) {
                i10 = length;
            }
            do {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    breakIterator = null;
                }
                if (!breakIterator.isBoundary(i10)) {
                    BreakIterator breakIterator2 = this.impl;
                    if (breakIterator2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        breakIterator2 = null;
                    }
                    i10 = breakIterator2.preceding(i10);
                } else {
                    BreakIterator breakIterator3 = this.impl;
                    if (breakIterator3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("impl");
                        breakIterator3 = null;
                    }
                    int preceding = breakIterator3.preceding(i10);
                    if (preceding == -1) {
                        return null;
                    }
                    return getRange(preceding, i10);
                }
            } while (i10 != -1);
            return null;
        }

        private CharacterTextSegmentIterator(Locale locale) {
            onLocaleChanged(locale);
        }
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class LineTextSegmentIterator extends AbstractTextSegmentIterator {
        @Nullable
        private static LineTextSegmentIterator lineInstance;
        private TextLayoutResult layoutResult;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;
        @NotNull
        private static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;
        @NotNull
        private static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

        /* compiled from: AccessibilityIterators.android.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final LineTextSegmentIterator getInstance() {
                if (LineTextSegmentIterator.lineInstance == null) {
                    LineTextSegmentIterator.lineInstance = new LineTextSegmentIterator(null);
                }
                LineTextSegmentIterator lineTextSegmentIterator = LineTextSegmentIterator.lineInstance;
                if (lineTextSegmentIterator != null) {
                    return lineTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator");
            }

            private Companion() {
            }
        }

        public /* synthetic */ LineTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int getLineEdgeIndex(int i10, ResolvedTextDirection resolvedTextDirection) {
            TextLayoutResult textLayoutResult = this.layoutResult;
            TextLayoutResult textLayoutResult2 = null;
            if (textLayoutResult == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult = null;
            }
            int lineStart = textLayoutResult.getLineStart(i10);
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult3 = null;
            }
            if (resolvedTextDirection != textLayoutResult3.getParagraphDirection(lineStart)) {
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                } else {
                    textLayoutResult2 = textLayoutResult4;
                }
                return textLayoutResult2.getLineStart(i10);
            }
            TextLayoutResult textLayoutResult5 = this.layoutResult;
            if (textLayoutResult5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult5 = null;
            }
            return TextLayoutResult.getLineEnd$default(textLayoutResult5, i10, false, 2, null) - 1;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] following(int i10) {
            int i11;
            if (getText().length() <= 0 || i10 >= getText().length()) {
                return null;
            }
            if (i10 < 0) {
                TextLayoutResult textLayoutResult = this.layoutResult;
                if (textLayoutResult == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult = null;
                }
                i11 = textLayoutResult.getLineForOffset(0);
            } else {
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult2 = null;
                }
                int lineForOffset = textLayoutResult2.getLineForOffset(i10);
                if (getLineEdgeIndex(lineForOffset, DirectionStart) == i10) {
                    i11 = lineForOffset;
                } else {
                    i11 = lineForOffset + 1;
                }
            }
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult3 = null;
            }
            if (i11 >= textLayoutResult3.getLineCount()) {
                return null;
            }
            return getRange(getLineEdgeIndex(i11, DirectionStart), getLineEdgeIndex(i11, DirectionEnd) + 1);
        }

        public final void initialize(@NotNull String text, @NotNull TextLayoutResult layoutResult) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(layoutResult, "layoutResult");
            setText(text);
            this.layoutResult = layoutResult;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] preceding(int i10) {
            int i11;
            if (getText().length() <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > getText().length()) {
                TextLayoutResult textLayoutResult = this.layoutResult;
                if (textLayoutResult == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult = null;
                }
                i11 = textLayoutResult.getLineForOffset(getText().length());
            } else {
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult2 = null;
                }
                int lineForOffset = textLayoutResult2.getLineForOffset(i10);
                if (getLineEdgeIndex(lineForOffset, DirectionEnd) + 1 == i10) {
                    i11 = lineForOffset;
                } else {
                    i11 = lineForOffset - 1;
                }
            }
            if (i11 < 0) {
                return null;
            }
            return getRange(getLineEdgeIndex(i11, DirectionStart), getLineEdgeIndex(i11, DirectionEnd) + 1);
        }

        private LineTextSegmentIterator() {
        }
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class PageTextSegmentIterator extends AbstractTextSegmentIterator {
        @Nullable
        private static PageTextSegmentIterator pageInstance;
        private TextLayoutResult layoutResult;
        private SemanticsNode node;
        @NotNull
        private Rect tempRect;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;
        @NotNull
        private static final ResolvedTextDirection DirectionStart = ResolvedTextDirection.Rtl;
        @NotNull
        private static final ResolvedTextDirection DirectionEnd = ResolvedTextDirection.Ltr;

        /* compiled from: AccessibilityIterators.android.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final PageTextSegmentIterator getInstance() {
                if (PageTextSegmentIterator.pageInstance == null) {
                    PageTextSegmentIterator.pageInstance = new PageTextSegmentIterator(null);
                }
                PageTextSegmentIterator pageTextSegmentIterator = PageTextSegmentIterator.pageInstance;
                if (pageTextSegmentIterator != null) {
                    return pageTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator");
            }

            private Companion() {
            }
        }

        public /* synthetic */ PageTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int getLineEdgeIndex(int i10, ResolvedTextDirection resolvedTextDirection) {
            TextLayoutResult textLayoutResult = this.layoutResult;
            TextLayoutResult textLayoutResult2 = null;
            if (textLayoutResult == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult = null;
            }
            int lineStart = textLayoutResult.getLineStart(i10);
            TextLayoutResult textLayoutResult3 = this.layoutResult;
            if (textLayoutResult3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult3 = null;
            }
            if (resolvedTextDirection != textLayoutResult3.getParagraphDirection(lineStart)) {
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                } else {
                    textLayoutResult2 = textLayoutResult4;
                }
                return textLayoutResult2.getLineStart(i10);
            }
            TextLayoutResult textLayoutResult5 = this.layoutResult;
            if (textLayoutResult5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                textLayoutResult5 = null;
            }
            return TextLayoutResult.getLineEnd$default(textLayoutResult5, i10, false, 2, null) - 1;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] following(int i10) {
            int lineCount;
            TextLayoutResult textLayoutResult = null;
            if (getText().length() <= 0 || i10 >= getText().length()) {
                return null;
            }
            try {
                SemanticsNode semanticsNode = this.node;
                if (semanticsNode == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("node");
                    semanticsNode = null;
                }
                int c10 = bt.a.c(semanticsNode.getBoundsInRoot().getHeight());
                int e10 = kotlin.ranges.e.e(0, i10);
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult2 = null;
                }
                int lineForOffset = textLayoutResult2.getLineForOffset(e10);
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult3 = null;
                }
                float lineTop = textLayoutResult3.getLineTop(lineForOffset) + c10;
                TextLayoutResult textLayoutResult4 = this.layoutResult;
                if (textLayoutResult4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult4 = null;
                }
                TextLayoutResult textLayoutResult5 = this.layoutResult;
                if (textLayoutResult5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult5 = null;
                }
                if (lineTop < textLayoutResult4.getLineTop(textLayoutResult5.getLineCount() - 1)) {
                    TextLayoutResult textLayoutResult6 = this.layoutResult;
                    if (textLayoutResult6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult6;
                    }
                    lineCount = textLayoutResult.getLineForVerticalPosition(lineTop);
                } else {
                    TextLayoutResult textLayoutResult7 = this.layoutResult;
                    if (textLayoutResult7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult7;
                    }
                    lineCount = textLayoutResult.getLineCount();
                }
                return getRange(e10, getLineEdgeIndex(lineCount - 1, DirectionEnd) + 1);
            } catch (IllegalStateException unused) {
                return null;
            }
        }

        public final void initialize(@NotNull String text, @NotNull TextLayoutResult layoutResult, @NotNull SemanticsNode node) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(layoutResult, "layoutResult");
            Intrinsics.checkNotNullParameter(node, "node");
            setText(text);
            this.layoutResult = layoutResult;
            this.node = node;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] preceding(int i10) {
            int i11;
            TextLayoutResult textLayoutResult = null;
            if (getText().length() <= 0 || i10 <= 0) {
                return null;
            }
            try {
                SemanticsNode semanticsNode = this.node;
                if (semanticsNode == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("node");
                    semanticsNode = null;
                }
                int c10 = bt.a.c(semanticsNode.getBoundsInRoot().getHeight());
                int j10 = kotlin.ranges.e.j(getText().length(), i10);
                TextLayoutResult textLayoutResult2 = this.layoutResult;
                if (textLayoutResult2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult2 = null;
                }
                int lineForOffset = textLayoutResult2.getLineForOffset(j10);
                TextLayoutResult textLayoutResult3 = this.layoutResult;
                if (textLayoutResult3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    textLayoutResult3 = null;
                }
                float lineTop = textLayoutResult3.getLineTop(lineForOffset) - c10;
                if (lineTop > 0.0f) {
                    TextLayoutResult textLayoutResult4 = this.layoutResult;
                    if (textLayoutResult4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("layoutResult");
                    } else {
                        textLayoutResult = textLayoutResult4;
                    }
                    i11 = textLayoutResult.getLineForVerticalPosition(lineTop);
                } else {
                    i11 = 0;
                }
                if (j10 == getText().length() && i11 < lineForOffset) {
                    i11++;
                }
                return getRange(getLineEdgeIndex(i11, DirectionStart), j10);
            } catch (IllegalStateException unused) {
                return null;
            }
        }

        private PageTextSegmentIterator() {
            this.tempRect = new Rect();
        }
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class ParagraphTextSegmentIterator extends AbstractTextSegmentIterator {
        public static final int $stable = 0;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private static ParagraphTextSegmentIterator instance;

        /* compiled from: AccessibilityIterators.android.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final ParagraphTextSegmentIterator getInstance() {
                if (ParagraphTextSegmentIterator.instance == null) {
                    ParagraphTextSegmentIterator.instance = new ParagraphTextSegmentIterator(null);
                }
                ParagraphTextSegmentIterator paragraphTextSegmentIterator = ParagraphTextSegmentIterator.instance;
                if (paragraphTextSegmentIterator != null) {
                    return paragraphTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator");
            }

            private Companion() {
            }
        }

        public /* synthetic */ ParagraphTextSegmentIterator(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean isEndBoundary(int i10) {
            if (i10 > 0 && getText().charAt(i10 - 1) != '\n' && (i10 == getText().length() || getText().charAt(i10) == '\n')) {
                return true;
            }
            return false;
        }

        private final boolean isStartBoundary(int i10) {
            if (getText().charAt(i10) != '\n' && (i10 == 0 || getText().charAt(i10 - 1) == '\n')) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
            return null;
         */
        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int[] following(int r5) {
            /*
                r4 = this;
                java.lang.String r0 = r4.getText()
                int r0 = r0.length()
                r1 = 0
                if (r0 > 0) goto Lc
                return r1
            Lc:
                if (r5 < r0) goto Lf
                return r1
            Lf:
                if (r5 >= 0) goto L12
                r5 = 0
            L12:
                if (r5 >= r0) goto L29
                java.lang.String r2 = r4.getText()
                char r2 = r2.charAt(r5)
                r3 = 10
                if (r2 != r3) goto L29
                boolean r2 = r4.isStartBoundary(r5)
                if (r2 != 0) goto L29
                int r5 = r5 + 1
                goto L12
            L29:
                if (r5 < r0) goto L2c
                return r1
            L2c:
                int r1 = r5 + 1
            L2e:
                if (r1 >= r0) goto L39
                boolean r2 = r4.isEndBoundary(r1)
                if (r2 != 0) goto L39
                int r1 = r1 + 1
                goto L2e
            L39:
                int[] r5 = r4.getRange(r5, r1)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator.following(int):int[]");
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
            return null;
         */
        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int[] preceding(int r4) {
            /*
                r3 = this;
                java.lang.String r0 = r3.getText()
                int r0 = r0.length()
                r1 = 0
                if (r0 > 0) goto Lc
                return r1
            Lc:
                if (r4 > 0) goto Lf
                return r1
            Lf:
                if (r4 <= r0) goto L12
                r4 = r0
            L12:
                if (r4 <= 0) goto L2b
                java.lang.String r0 = r3.getText()
                int r2 = r4 + (-1)
                char r0 = r0.charAt(r2)
                r2 = 10
                if (r0 != r2) goto L2b
                boolean r0 = r3.isEndBoundary(r4)
                if (r0 != 0) goto L2b
                int r4 = r4 + (-1)
                goto L12
            L2b:
                if (r4 > 0) goto L2e
                return r1
            L2e:
                int r0 = r4 + (-1)
            L30:
                if (r0 <= 0) goto L3b
                boolean r1 = r3.isStartBoundary(r0)
                if (r1 != 0) goto L3b
                int r0 = r0 + (-1)
                goto L30
            L3b:
                int[] r4 = r3.getRange(r0, r4)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator.preceding(int):int[]");
        }

        private ParagraphTextSegmentIterator() {
        }
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface TextSegmentIterator {
        @Nullable
        int[] following(int i10);

        @Nullable
        int[] preceding(int i10);
    }

    /* compiled from: AccessibilityIterators.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class WordTextSegmentIterator extends AbstractTextSegmentIterator {
        @Nullable
        private static WordTextSegmentIterator instance;
        private BreakIterator impl;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;

        /* compiled from: AccessibilityIterators.android.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final WordTextSegmentIterator getInstance(@NotNull Locale locale) {
                Intrinsics.checkNotNullParameter(locale, "locale");
                if (WordTextSegmentIterator.instance == null) {
                    WordTextSegmentIterator.instance = new WordTextSegmentIterator(locale, null);
                }
                WordTextSegmentIterator wordTextSegmentIterator = WordTextSegmentIterator.instance;
                if (wordTextSegmentIterator != null) {
                    return wordTextSegmentIterator;
                }
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator");
            }

            private Companion() {
            }
        }

        public /* synthetic */ WordTextSegmentIterator(Locale locale, DefaultConstructorMarker defaultConstructorMarker) {
            this(locale);
        }

        private final boolean isEndBoundary(int i10) {
            if (i10 > 0 && isLetterOrDigit(i10 - 1) && (i10 == getText().length() || !isLetterOrDigit(i10))) {
                return true;
            }
            return false;
        }

        private final boolean isLetterOrDigit(int i10) {
            if (i10 >= 0 && i10 < getText().length()) {
                return Character.isLetterOrDigit(getText().codePointAt(i10));
            }
            return false;
        }

        private final boolean isStartBoundary(int i10) {
            if (isLetterOrDigit(i10) && (i10 == 0 || !isLetterOrDigit(i10 - 1))) {
                return true;
            }
            return false;
        }

        private final void onLocaleChanged(Locale locale) {
            BreakIterator wordInstance = BreakIterator.getWordInstance(locale);
            Intrinsics.checkNotNullExpressionValue(wordInstance, "getWordInstance(locale)");
            this.impl = wordInstance;
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] following(int i10) {
            if (getText().length() <= 0 || i10 >= getText().length()) {
                return null;
            }
            if (i10 < 0) {
                i10 = 0;
            }
            while (!isLetterOrDigit(i10) && !isStartBoundary(i10)) {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    breakIterator = null;
                }
                i10 = breakIterator.following(i10);
                if (i10 == -1) {
                    return null;
                }
            }
            BreakIterator breakIterator2 = this.impl;
            if (breakIterator2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("impl");
                breakIterator2 = null;
            }
            int following = breakIterator2.following(i10);
            if (following == -1 || !isEndBoundary(following)) {
                return null;
            }
            return getRange(i10, following);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.AbstractTextSegmentIterator
        public void initialize(@NotNull String text) {
            Intrinsics.checkNotNullParameter(text, "text");
            super.initialize(text);
            BreakIterator breakIterator = this.impl;
            if (breakIterator == null) {
                Intrinsics.throwUninitializedPropertyAccessException("impl");
                breakIterator = null;
            }
            breakIterator.setText(text);
        }

        @Override // androidx.compose.ui.platform.AccessibilityIterators.TextSegmentIterator
        @Nullable
        public int[] preceding(int i10) {
            int length = getText().length();
            if (length <= 0 || i10 <= 0) {
                return null;
            }
            if (i10 > length) {
                i10 = length;
            }
            while (i10 > 0 && !isLetterOrDigit(i10 - 1) && !isEndBoundary(i10)) {
                BreakIterator breakIterator = this.impl;
                if (breakIterator == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("impl");
                    breakIterator = null;
                }
                i10 = breakIterator.preceding(i10);
                if (i10 == -1) {
                    return null;
                }
            }
            BreakIterator breakIterator2 = this.impl;
            if (breakIterator2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("impl");
                breakIterator2 = null;
            }
            int preceding = breakIterator2.preceding(i10);
            if (preceding == -1 || !isStartBoundary(preceding)) {
                return null;
            }
            return getRange(preceding, i10);
        }

        private WordTextSegmentIterator(Locale locale) {
            onLocaleChanged(locale);
        }
    }
}
