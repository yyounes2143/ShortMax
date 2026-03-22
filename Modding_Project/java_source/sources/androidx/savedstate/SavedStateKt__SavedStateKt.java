package androidx.savedstate;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedState.kt */
@Metadata
/* loaded from: classes2.dex */
final /* synthetic */ class SavedStateKt__SavedStateKt {
    public static final <T> T read(@NotNull Bundle bundle, @NotNull Function1<? super SavedStateReader, ? extends T> block) {
        Intrinsics.checkNotNullParameter(bundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(SavedStateReader.m4337boximpl(SavedStateReader.m4338constructorimpl(bundle)));
    }

    public static final <T> T write(@NotNull Bundle bundle, @NotNull Function1<? super SavedStateWriter, ? extends T> block) {
        Intrinsics.checkNotNullParameter(bundle, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(SavedStateWriter.m4422boximpl(SavedStateWriter.m4424constructorimpl(bundle)));
    }
}
