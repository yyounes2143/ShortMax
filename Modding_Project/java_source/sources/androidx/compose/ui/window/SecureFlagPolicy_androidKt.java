package androidx.compose.ui.window;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SecureFlagPolicy.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SecureFlagPolicy_androidKt {

    /* compiled from: SecureFlagPolicy.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SecureFlagPolicy.values().length];
            iArr[SecureFlagPolicy.SecureOff.ordinal()] = 1;
            iArr[SecureFlagPolicy.SecureOn.ordinal()] = 2;
            iArr[SecureFlagPolicy.Inherit.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean shouldApplySecureFlag(@NotNull SecureFlagPolicy secureFlagPolicy, boolean z10) {
        Intrinsics.checkNotNullParameter(secureFlagPolicy, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[secureFlagPolicy.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return true;
            }
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return z10;
        }
        return false;
    }
}
