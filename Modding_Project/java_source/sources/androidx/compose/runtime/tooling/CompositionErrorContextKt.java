package androidx.compose.runtime.tooling;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionErrorContext.kt */
@Metadata
/* loaded from: classes.dex */
public final class CompositionErrorContextKt {
    @NotNull
    private static final CompositionLocal<CompositionErrorContext> LocalCompositionErrorContext = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: androidx.compose.runtime.tooling.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CompositionErrorContext LocalCompositionErrorContext$lambda$0;
            LocalCompositionErrorContext$lambda$0 = CompositionErrorContextKt.LocalCompositionErrorContext$lambda$0();
            return LocalCompositionErrorContext$lambda$0;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final CompositionErrorContext LocalCompositionErrorContext$lambda$0() {
        return null;
    }

    @NotNull
    public static final CompositionLocal<CompositionErrorContext> getLocalCompositionErrorContext() {
        return LocalCompositionErrorContext;
    }
}
