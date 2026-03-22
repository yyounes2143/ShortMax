package z7;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DevelopmentPlatformProvider.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f71512a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f71513b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DevelopmentPlatformProvider.java */
    /* loaded from: classes5.dex */
    public class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f71514a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f71515b;

        private b() {
            int p10 = CommonUtils.p(f.this.f71512a, "com.google.firebase.crashlytics.unity_version", TypedValues.Custom.S_STRING);
            if (p10 == 0) {
                if (f.this.c("flutter_assets/NOTICES.Z")) {
                    this.f71514a = "Flutter";
                    this.f71515b = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
                this.f71514a = null;
                this.f71515b = null;
                return;
            }
            this.f71514a = "Unity";
            String string = f.this.f71512a.getResources().getString(p10);
            this.f71515b = string;
            g f10 = g.f();
            f10.i("Unity Editor version is: " + string);
        }
    }

    public f(Context context) {
        this.f71512a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (this.f71512a.getAssets() == null) {
            return false;
        }
        try {
            InputStream open = this.f71512a.getAssets().open(str);
            if (open != null) {
                open.close();
                return true;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.f71513b == null) {
            this.f71513b = new b();
        }
        return this.f71513b;
    }

    public static boolean g(Context context) {
        if (CommonUtils.p(context, "com.google.firebase.crashlytics.unity_version", TypedValues.Custom.S_STRING) != 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public String d() {
        return f().f71514a;
    }

    @Nullable
    public String e() {
        return f().f71515b;
    }
}
