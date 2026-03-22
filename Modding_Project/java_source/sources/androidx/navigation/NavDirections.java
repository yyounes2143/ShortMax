package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public interface NavDirections {
    @IdRes
    int getActionId();

    @NonNull
    Bundle getArguments();
}
