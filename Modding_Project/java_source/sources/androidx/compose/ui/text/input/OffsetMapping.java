package androidx.compose.ui.text.input;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OffsetMapping.kt */
@Metadata
/* loaded from: classes.dex */
public interface OffsetMapping {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: OffsetMapping.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final OffsetMapping Identity = new OffsetMapping() { // from class: androidx.compose.ui.text.input.OffsetMapping$Companion$Identity$1
            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int originalToTransformed(int i10) {
                return i10;
            }

            @Override // androidx.compose.ui.text.input.OffsetMapping
            public int transformedToOriginal(int i10) {
                return i10;
            }
        };

        private Companion() {
        }

        @NotNull
        public final OffsetMapping getIdentity() {
            return Identity;
        }
    }

    int originalToTransformed(int i10);

    int transformedToOriginal(int i10);
}
