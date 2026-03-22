package hb;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.UserManager;
/* loaded from: classes5.dex */
public class w0 {

    /* renamed from: c  reason: collision with root package name */
    private static w0 f52781c = new w0();

    /* renamed from: a  reason: collision with root package name */
    private boolean f52782a = false;

    /* renamed from: b  reason: collision with root package name */
    private Context f52783b = v0.q();

    private w0() {
    }

    public static w0 b() {
        return f52781c;
    }

    @TargetApi(24)
    public boolean a() {
        if (!this.f52782a) {
            Context context = this.f52783b;
            if (context == null) {
                return false;
            }
            UserManager userManager = (UserManager) context.getSystemService("user");
            if (userManager != null) {
                this.f52782a = userManager.isUserUnlocked();
            } else {
                this.f52782a = false;
            }
        }
        return this.f52782a;
    }
}
