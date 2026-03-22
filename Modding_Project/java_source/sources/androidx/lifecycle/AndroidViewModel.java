package androidx.lifecycle;

import android.app.Application;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidViewModel.android.kt */
@Metadata
/* loaded from: classes2.dex */
public class AndroidViewModel extends ViewModel {
    @NotNull
    private final Application application;

    public AndroidViewModel(@NotNull Application application) {
        Intrinsics.checkNotNullParameter(application, "application");
        this.application = application;
    }

    @NotNull
    public <T extends Application> T getApplication() {
        T t10 = (T) this.application;
        Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication");
        return t10;
    }
}
