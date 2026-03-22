package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.navigation.NavDestination;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes2.dex */
public abstract class Navigator<D extends NavDestination> {

    /* loaded from: classes2.dex */
    public interface Extras {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface Name {
        String value();
    }

    @NonNull
    public abstract D createDestination();

    @Nullable
    public abstract NavDestination navigate(@NonNull D d10, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Extras extras);

    @Nullable
    public Bundle onSaveState() {
        return null;
    }

    public abstract boolean popBackStack();

    public void onRestoreState(@NonNull Bundle bundle) {
    }
}
