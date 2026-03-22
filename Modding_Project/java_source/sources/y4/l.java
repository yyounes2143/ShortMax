package y4;

import com.facebook.soloader.o;
import com.facebook.soloader.w;
/* compiled from: WaitForAsyncInit.java */
/* loaded from: classes2.dex */
public class l implements h {
    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        for (w wVar : wVarArr) {
            if (wVar instanceof com.facebook.soloader.b) {
                o.b("SoLoader", "Waiting on SoSource " + wVar.c());
                ((com.facebook.soloader.b) wVar).a();
            }
        }
        return true;
    }
}
