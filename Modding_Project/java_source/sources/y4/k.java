package y4;

import com.facebook.soloader.SoLoaderDSONotFoundError;
import com.facebook.soloader.SoLoaderULError;
import com.facebook.soloader.o;
import com.facebook.soloader.w;
import com.facebook.soloader.y;
/* compiled from: ReunpackNonBackupSoSources.java */
/* loaded from: classes2.dex */
public class k implements h {
    @Override // y4.h
    public boolean a(UnsatisfiedLinkError unsatisfiedLinkError, w[] wVarArr) {
        String str;
        if (!(unsatisfiedLinkError instanceof SoLoaderULError) || (unsatisfiedLinkError instanceof SoLoaderDSONotFoundError)) {
            return false;
        }
        String b10 = ((SoLoaderULError) unsatisfiedLinkError).b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Reunpacking NonApk UnpackingSoSources due to ");
        sb2.append(unsatisfiedLinkError);
        if (b10 == null) {
            str = "";
        } else {
            str = ", retrying for specific library " + b10;
        }
        sb2.append(str);
        o.b("SoLoader", sb2.toString());
        for (w wVar : wVarArr) {
            if (wVar instanceof y) {
                y yVar = (y) wVar;
                if (yVar instanceof com.facebook.soloader.c) {
                    continue;
                } else {
                    try {
                        o.b("SoLoader", "Runpacking " + yVar.c());
                        yVar.e(2);
                    } catch (Exception e10) {
                        o.c("SoLoader", "Encountered an exception while reunpacking " + yVar.c() + " for library " + b10 + ": ", e10);
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
