package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SetTargetFragmentUsageViolation.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SetTargetFragmentUsageViolation extends TargetFragmentUsageViolation {
    private final int requestCode;
    @NotNull
    private final Fragment targetFragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetTargetFragmentUsageViolation(@NotNull Fragment fragment, @NotNull Fragment targetFragment, int i10) {
        super(fragment, "Attempting to set target fragment " + targetFragment + " with request code " + i10 + " for fragment " + fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(targetFragment, "targetFragment");
        this.targetFragment = targetFragment;
        this.requestCode = i10;
    }

    public final int getRequestCode() {
        return this.requestCode;
    }

    @NotNull
    public final Fragment getTargetFragment() {
        return this.targetFragment;
    }
}
