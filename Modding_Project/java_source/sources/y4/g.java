package y4;

import android.content.Context;
import com.facebook.soloader.o;
import com.facebook.soloader.s;
import com.facebook.soloader.w;
import java.io.File;
/* compiled from: DetectDataAppMove.java */
/* loaded from: classes2.dex */
public class g implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f70651a;

    /* renamed from: b  reason: collision with root package name */
    private final a f70652b;

    /* renamed from: c  reason: collision with root package name */
    private final int f70653c;

    public g(Context context, a aVar) {
        this.f70651a = context;
        this.f70652b = aVar;
        this.f70653c = aVar.c();
    }

    private boolean b() {
        String c10 = c();
        if (new File(c10).exists() && this.f70652b.a(c10)) {
            return true;
        }
        return false;
    }

    private String c() {
        return this.f70651a.getApplicationInfo().sourceDir;
    }

    private void d(w[] wVarArr) {
        for (int i10 = 0; i10 < wVarArr.length; i10++) {
            w wVar = wVarArr[i10];
            if (wVar instanceof s) {
                wVarArr[i10] = ((s) wVar).b(this.f70651a);
            }
        }
    }

    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        if (b()) {
            d(wVarArr);
            return true;
        } else if (this.f70653c != this.f70652b.c()) {
            o.g("soloader.recovery.DetectDataAppMove", "Context was updated (perhaps by another thread)");
            return true;
        } else {
            return false;
        }
    }
}
