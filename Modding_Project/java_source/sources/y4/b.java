package y4;

import android.content.Context;
import com.facebook.soloader.NoBaseApkException;
import com.facebook.soloader.o;
import com.facebook.soloader.w;
import java.io.File;
/* compiled from: CheckBaseApkExists.java */
/* loaded from: classes2.dex */
public class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f70643a;

    /* renamed from: b  reason: collision with root package name */
    private final a f70644b;

    public b(Context context, a aVar) {
        this.f70643a = context;
        this.f70644b = aVar;
    }

    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        String str = this.f70643a.getApplicationInfo().sourceDir;
        if (new File(str).exists()) {
            o.g("soloader.recovery.CheckBaseApkExists", "Base apk exists: " + str);
            return false;
        }
        StringBuilder sb2 = new StringBuilder("Base apk does not exist: ");
        sb2.append(str);
        sb2.append(". ");
        this.f70644b.b(sb2);
        throw new NoBaseApkException(sb2.toString(), unsatisfiedLinkError);
    }
}
