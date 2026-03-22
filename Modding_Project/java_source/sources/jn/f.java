package jn;

import en.g;
import java.util.Map;
import kn.i;
import kn.j;
/* compiled from: DashUtil.java */
/* loaded from: classes8.dex */
public final class f {
    public static en.g a(j jVar, String str, i iVar, int i10, Map<String, String> map) {
        return new g.b().i(iVar.b(str)).h(iVar.f60851a).g(iVar.f60852b).f(b(jVar, iVar)).b(i10).e(map).a();
    }

    public static String b(j jVar, i iVar) {
        String j10 = jVar.j();
        if (j10 == null) {
            return iVar.b(jVar.f60857c.get(0).f60801a).toString();
        }
        return j10;
    }
}
