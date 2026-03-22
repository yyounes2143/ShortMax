package androidx.core.text;

import java.nio.CharBuffer;
import java.util.Locale;
/* loaded from: classes.dex */
public final class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicInternal(null, true);
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;

    /* loaded from: classes.dex */
    private static class AnyStrong implements TextDirectionAlgorithm {
        static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
        private final boolean mLookForRtl;

        private AnyStrong(boolean z10) {
            this.mLookForRtl = z10;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z10 = false;
            while (i10 < i12) {
                int isRtlText = TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i10)));
                if (isRtlText != 0) {
                    if (isRtlText == 1) {
                        if (!this.mLookForRtl) {
                            return 1;
                        }
                    } else {
                        continue;
                        i10++;
                        z10 = z10;
                    }
                } else if (this.mLookForRtl) {
                    return 0;
                }
                z10 = true;
                i10++;
                z10 = z10;
            }
            if (z10) {
                return this.mLookForRtl ? 1 : 0;
            }
            return 2;
        }
    }

    /* loaded from: classes.dex */
    private static class FirstStrong implements TextDirectionAlgorithm {
        static final FirstStrong INSTANCE = new FirstStrong();

        private FirstStrong() {
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int i13 = 2;
            while (i10 < i12 && i13 == 2) {
                i13 = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return i13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface TextDirectionAlgorithm {
        int checkRtl(CharSequence charSequence, int i10, int i11);
    }

    /* loaded from: classes.dex */
    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        private boolean doCheck(CharSequence charSequence, int i10, int i11) {
            int checkRtl = this.mAlgorithm.checkRtl(charSequence, i10, i11);
            if (checkRtl == 0) {
                return true;
            }
            if (checkRtl != 1) {
                return defaultIsRtl();
            }
            return false;
        }

        protected abstract boolean defaultIsRtl();

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i10, int i11) {
            return isRtl(CharBuffer.wrap(cArr), i10, i11);
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i10, int i11) {
            if (charSequence != null && i10 >= 0 && i11 >= 0 && charSequence.length() - i11 >= i10) {
                if (this.mAlgorithm == null) {
                    return defaultIsRtl();
                }
                return doCheck(charSequence, i10, i11);
            }
            throw new IllegalArgumentException();
        }
    }

    /* loaded from: classes.dex */
    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z10) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z10;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }
    }

    /* loaded from: classes.dex */
    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean defaultIsRtl() {
            if (TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                return true;
            }
            return false;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.INSTANCE;
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(firstStrong, false);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(firstStrong, true);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false);
        LOCALE = TextDirectionHeuristicLocale.INSTANCE;
    }

    private TextDirectionHeuristicsCompat() {
    }

    static int isRtlText(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 != 1 && i10 != 2) {
            return 2;
        }
        return 0;
    }

    static int isRtlTextOrFormat(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
