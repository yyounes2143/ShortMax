package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidAutofill.android.kt */
@RequiresApi(23)
@Metadata
/* loaded from: classes.dex */
public final class AutofillApi23Helper {
    @NotNull
    public static final AutofillApi23Helper INSTANCE = new AutofillApi23Helper();

    private AutofillApi23Helper() {
    }

    @DoNotInline
    @RequiresApi(23)
    public final int addChildCount(@NotNull ViewStructure structure, int i10) {
        Intrinsics.checkNotNullParameter(structure, "structure");
        return structure.addChildCount(i10);
    }

    @DoNotInline
    @RequiresApi(23)
    @Nullable
    public final ViewStructure newChild(@NotNull ViewStructure structure, int i10) {
        Intrinsics.checkNotNullParameter(structure, "structure");
        return structure.newChild(i10);
    }

    @DoNotInline
    @RequiresApi(23)
    public final void setDimens(@NotNull ViewStructure structure, int i10, int i11, int i12, int i13, int i14, int i15) {
        Intrinsics.checkNotNullParameter(structure, "structure");
        structure.setDimens(i10, i11, i12, i13, i14, i15);
    }

    @DoNotInline
    @RequiresApi(23)
    public final void setId(@NotNull ViewStructure structure, int i10, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(structure, "structure");
        structure.setId(i10, str, str2, str3);
    }
}
