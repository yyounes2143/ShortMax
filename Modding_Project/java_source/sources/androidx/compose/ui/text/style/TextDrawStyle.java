package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextDrawStyle.kt */
@Metadata
/* loaded from: classes.dex */
public interface TextDrawStyle {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: TextDrawStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        public final TextDrawStyle from(@Nullable Brush brush) {
            if (brush == null) {
                return Unspecified.INSTANCE;
            }
            if (brush instanceof SolidColor) {
                return m3975from8_81llA(((SolidColor) brush).m2128getValue0d7_KjU());
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush);
            }
            throw new NoWhenBranchMatchedException();
        }

        @NotNull
        /* renamed from: from-8_81llA  reason: not valid java name */
        public final TextDrawStyle m3975from8_81llA(long j10) {
            if (j10 != Color.Companion.m1878getUnspecified0d7_KjU()) {
                return new ColorStyle(j10, null);
            }
            return Unspecified.INSTANCE;
        }
    }

    /* compiled from: TextDrawStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Unspecified implements TextDrawStyle {
        @NotNull
        public static final Unspecified INSTANCE = new Unspecified();

        private Unspecified() {
        }

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        @Nullable
        public Brush getBrush() {
            return null;
        }

        @Override // androidx.compose.ui.text.style.TextDrawStyle
        /* renamed from: getColor-0d7_KjU */
        public long mo3920getColor0d7_KjU() {
            return Color.Companion.m1878getUnspecified0d7_KjU();
        }
    }

    @Nullable
    Brush getBrush();

    /* renamed from: getColor-0d7_KjU */
    long mo3920getColor0d7_KjU();

    @NotNull
    default TextDrawStyle merge(@NotNull TextDrawStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (other.getBrush() == null) {
            if (getBrush() != null) {
                return this;
            }
            return other.takeOrElse(new Function0<TextDrawStyle>() { // from class: androidx.compose.ui.text.style.TextDrawStyle$merge$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final TextDrawStyle invoke() {
                    return TextDrawStyle.this;
                }
            });
        }
        return other;
    }

    @NotNull
    default TextDrawStyle takeOrElse(@NotNull Function0<? extends TextDrawStyle> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(this, Unspecified.INSTANCE)) {
            return this;
        }
        return other.invoke();
    }
}
