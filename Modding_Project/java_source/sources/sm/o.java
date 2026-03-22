package sm;

import android.content.Context;
import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public class o {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f66456a;

    public o(@NonNull Context context) {
        this.f66456a = context.getApplicationContext();
    }

    public boolean a() {
        return this.f66456a.getPackageManager().hasSystemFeature("android.hardware.telephony");
    }
}
