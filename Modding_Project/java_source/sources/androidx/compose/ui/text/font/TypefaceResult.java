package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontFamilyResolver.kt */
@Metadata
/* loaded from: classes.dex */
public interface TypefaceResult extends State<Object> {

    /* compiled from: FontFamilyResolver.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Async implements TypefaceResult, State<Object> {
        @NotNull
        private final AsyncFontListLoader current;

        public Async(@NotNull AsyncFontListLoader current) {
            Intrinsics.checkNotNullParameter(current, "current");
            this.current = current;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean getCacheable() {
            return this.current.getCacheable$ui_text_release();
        }

        @NotNull
        public final AsyncFontListLoader getCurrent$ui_text_release() {
            return this.current;
        }

        @Override // androidx.compose.runtime.State
        @NotNull
        public Object getValue() {
            return this.current.getValue();
        }
    }

    boolean getCacheable();

    /* compiled from: FontFamilyResolver.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Immutable implements TypefaceResult {
        private final boolean cacheable;
        @NotNull
        private final Object value;

        public Immutable(@NotNull Object value, boolean z10) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
            this.cacheable = z10;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public boolean getCacheable() {
            return this.cacheable;
        }

        @Override // androidx.compose.runtime.State
        @NotNull
        public Object getValue() {
            return this.value;
        }

        public /* synthetic */ Immutable(Object obj, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i10 & 2) != 0 ? true : z10);
        }
    }
}
