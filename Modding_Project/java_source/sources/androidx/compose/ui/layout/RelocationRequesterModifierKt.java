package androidx.compose.ui.layout;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: RelocationRequesterModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class RelocationRequesterModifierKt {
    @c
    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier relocationRequester(@NotNull Modifier modifier, @NotNull Object relocationRequester) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(relocationRequester, "relocationRequester");
        return modifier;
    }
}
