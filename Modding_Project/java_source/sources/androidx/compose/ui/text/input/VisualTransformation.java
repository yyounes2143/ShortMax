package androidx.compose.ui.text.input;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.VisualTransformation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VisualTransformation.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public interface VisualTransformation {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    TransformedText filter(@NotNull AnnotatedString annotatedString);

    /* compiled from: VisualTransformation.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final VisualTransformation None = new VisualTransformation() { // from class: androidx.compose.ui.text.input.a
            @Override // androidx.compose.ui.text.input.VisualTransformation
            public final TransformedText filter(AnnotatedString annotatedString) {
                TransformedText m3877None$lambda0;
                m3877None$lambda0 = VisualTransformation.Companion.m3877None$lambda0(annotatedString);
                return m3877None$lambda0;
            }
        };

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: None$lambda-0  reason: not valid java name */
        public static final TransformedText m3877None$lambda0(AnnotatedString text) {
            Intrinsics.checkNotNullParameter(text, "text");
            return new TransformedText(text, OffsetMapping.Companion.getIdentity());
        }

        @NotNull
        public final VisualTransformation getNone() {
            return None;
        }

        @Stable
        public static /* synthetic */ void getNone$annotations() {
        }
    }
}
