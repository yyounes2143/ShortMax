package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Violation.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class Violation extends RuntimeException {
    @NotNull
    private final Fragment fragment;

    public /* synthetic */ Violation(Fragment fragment, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, (i10 & 2) != 0 ? null : str);
    }

    @NotNull
    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(@NotNull Fragment fragment, @Nullable String str) {
        super(str);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.fragment = fragment;
    }
}
