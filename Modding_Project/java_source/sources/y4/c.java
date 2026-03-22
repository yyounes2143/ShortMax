package y4;

import android.content.Context;
import com.facebook.soloader.SoLoaderULError;
import com.facebook.soloader.o;
import com.facebook.soloader.w;
import com.facebook.soloader.y;
import java.io.File;
import java.util.ArrayList;
/* compiled from: CheckOnDiskStateDataApp.java */
/* loaded from: classes2.dex */
public class c implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f70645a;

    public c(Context context) {
        this.f70645a = context;
    }

    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        y.c[] o10;
        if (!(unsatisfiedLinkError instanceof SoLoaderULError)) {
            return false;
        }
        o.b("SoLoader", "Checking /data/app missing libraries.");
        File file = new File(this.f70645a.getApplicationInfo().nativeLibraryDir);
        if (!file.exists()) {
            o.b("SoLoader", "Native library directory " + file + " does not exist, exiting /data/app recovery.");
            return false;
        }
        ArrayList arrayList = new ArrayList();
        int length = wVarArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            w wVar = wVarArr[i10];
            if (!(wVar instanceof com.facebook.soloader.c)) {
                i10++;
            } else {
                com.facebook.soloader.c cVar = (com.facebook.soloader.c) wVar;
                try {
                    for (y.c cVar2 : cVar.o()) {
                        if (!new File(file, cVar2.f16882a).exists()) {
                            arrayList.add(cVar2.f16882a);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        o.b("SoLoader", "No libraries missing from " + file);
                        return false;
                    }
                    o.b("SoLoader", "Missing libraries from " + file + ": " + arrayList.toString() + ", will run prepare on tbe backup so source");
                    cVar.e(0);
                } catch (Exception e10) {
                    o.c("SoLoader", "Encountered an exception while recovering from /data/app failure ", e10);
                    return false;
                }
            }
        }
        for (w wVar2 : wVarArr) {
            if ((wVar2 instanceof com.facebook.soloader.f) && !(wVar2 instanceof com.facebook.soloader.c)) {
                ((com.facebook.soloader.f) wVar2).h();
            }
        }
        o.b("SoLoader", "Successfully recovered from /data/app disk failure.");
        return true;
    }
}
