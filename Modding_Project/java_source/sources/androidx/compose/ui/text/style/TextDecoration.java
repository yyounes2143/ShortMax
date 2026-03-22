package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.TempListUtilsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextDecoration.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextDecoration {
    private final int mask;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final TextDecoration None = new TextDecoration(0);
    @NotNull
    private static final TextDecoration Underline = new TextDecoration(1);
    @NotNull
    private static final TextDecoration LineThrough = new TextDecoration(2);

    /* compiled from: TextDecoration.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextDecoration combine(@NotNull List<TextDecoration> decorations) {
            Intrinsics.checkNotNullParameter(decorations, "decorations");
            Integer num = 0;
            int size = decorations.size();
            for (int i10 = 0; i10 < size; i10++) {
                num = Integer.valueOf(num.intValue() | decorations.get(i10).getMask());
            }
            return new TextDecoration(num.intValue());
        }

        @NotNull
        public final TextDecoration getLineThrough() {
            return TextDecoration.LineThrough;
        }

        @NotNull
        public final TextDecoration getNone() {
            return TextDecoration.None;
        }

        @NotNull
        public final TextDecoration getUnderline() {
            return TextDecoration.Underline;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getLineThrough$annotations() {
        }

        @Stable
        public static /* synthetic */ void getNone$annotations() {
        }

        @Stable
        public static /* synthetic */ void getUnderline$annotations() {
        }
    }

    public TextDecoration(int i10) {
        this.mask = i10;
    }

    public final boolean contains(@NotNull TextDecoration other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i10 = this.mask;
        if ((other.mask | i10) == i10) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof TextDecoration) && this.mask == ((TextDecoration) obj).mask) {
            return true;
        }
        return false;
    }

    public final int getMask() {
        return this.mask;
    }

    public int hashCode() {
        return this.mask;
    }

    @NotNull
    public final TextDecoration plus(@NotNull TextDecoration decoration) {
        Intrinsics.checkNotNullParameter(decoration, "decoration");
        return new TextDecoration(decoration.mask | this.mask);
    }

    @NotNull
    public String toString() {
        if (this.mask == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((this.mask & Underline.mask) != 0) {
            arrayList.add("Underline");
        }
        if ((this.mask & LineThrough.mask) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + ((String) arrayList.get(0));
        }
        return "TextDecoration[" + TempListUtilsKt.fastJoinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
