package androidx.lifecycle;

import android.app.Application;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidViewModel.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AndroidViewModel_androidKt {
    @NotNull
    public static final Application getApplication(@NotNull AndroidViewModel androidViewModel) {
        Intrinsics.checkNotNullParameter(androidViewModel, "<this>");
        return androidViewModel.getApplication();
    }
}
