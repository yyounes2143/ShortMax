package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MethodCallsLogger.jvm.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public class MethodCallsLogger {
    @NotNull
    private final Map<String, Integer> calledMethods = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean approveCall(@NotNull String name, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = this.calledMethods.get(name);
        boolean z10 = false;
        if (num != null) {
            i11 = num.intValue();
        } else {
            i11 = 0;
        }
        if ((i11 & i10) != 0) {
            z10 = true;
        }
        this.calledMethods.put(name, Integer.valueOf(i10 | i11));
        return !z10;
    }
}
