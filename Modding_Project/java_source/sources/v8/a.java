package v8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
@KeepForSdk
/* loaded from: classes5.dex */
public interface a {

    /* compiled from: com.google.firebase:firebase-iid-interop@@17.1.0 */
    @KeepForSdk
    /* renamed from: v8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0948a {
    }

    @NonNull
    @KeepForSdk
    Task<String> a();

    @KeepForSdk
    void b(InterfaceC0948a interfaceC0948a);

    @Nullable
    @KeepForSdk
    String getToken();
}
