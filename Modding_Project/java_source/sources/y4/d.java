package y4;

import com.facebook.soloader.SoLoaderULError;
import com.facebook.soloader.o;
import com.facebook.soloader.w;
import com.facebook.soloader.y;
/* compiled from: CheckOnDiskStateDataData.java */
/* loaded from: classes2.dex */
public class d implements h {
    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        y.c cVar;
        if (!(unsatisfiedLinkError instanceof SoLoaderULError)) {
            return false;
        }
        o.b("SoLoader", "Checking /data/data missing libraries.");
        boolean z10 = false;
        for (w wVar : wVarArr) {
            if ((wVar instanceof y) && !(wVar instanceof com.facebook.soloader.c)) {
                y yVar = (y) wVar;
                try {
                    y.c[] o10 = yVar.o();
                    int length = o10.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 < length) {
                            if (yVar.f(o10[i10].f16882a) == null) {
                                o.b("SoLoader", "Missing " + cVar.f16882a + " from " + yVar.c() + ", will force prepare.");
                                yVar.e(2);
                                z10 = true;
                                break;
                            }
                            i10++;
                        }
                    }
                } catch (Exception e10) {
                    o.c("SoLoader", "Encountered an exception while recovering from /data/data failure ", e10);
                    return false;
                }
            }
        }
        if (z10) {
            o.b("SoLoader", "Successfully recovered from /data/data disk failure.");
            return true;
        }
        o.b("SoLoader", "No libraries missing from unpacking so paths while recovering /data/data failure");
        return false;
    }
}
