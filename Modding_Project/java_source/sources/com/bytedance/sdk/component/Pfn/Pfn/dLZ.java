package com.bytedance.sdk.component.Pfn.Pfn;
/* loaded from: classes3.dex */
public class dLZ extends oJ {
    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public void oJ(final com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        final com.bytedance.sdk.component.Pfn.tB.ba Ry = tBVar.Ry();
        com.bytedance.sdk.component.Pfn.ex ex = Ry.ex();
        tBVar.oJ(false);
        try {
            com.bytedance.sdk.component.Pfn.ba oJ = ex.oJ(new com.bytedance.sdk.component.Pfn.ZYk.ZYk(tBVar.oJ(), tBVar.PiB(), tBVar.WcQ(), tBVar.oq()));
            int ZYk = oJ.ZYk();
            tBVar.oJ(oJ.oJ());
            if (oJ.ZYk() == 200) {
                final byte[] bArr = (byte[]) oJ.tB();
                tBVar.oJ(new ZYk(bArr, oJ));
                final String jFA = tBVar.jFA();
                final com.bytedance.sdk.component.Pfn.ZYk RZ = tBVar.RZ();
                if (RZ.Pfn()) {
                    Ry.ZYk(tBVar.RZ()).oJ(jFA, bArr);
                }
                Ry.cFZ().submit(new Runnable() { // from class: com.bytedance.sdk.component.Pfn.Pfn.dLZ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (RZ.cFZ()) {
                            Ry.tB(tBVar.RZ()).oJ(jFA, bArr);
                        }
                    }
                });
                return;
            }
            String.valueOf(oJ);
            Object tB = oJ.tB();
            oJ(ZYk, oJ.ex(), tB instanceof Throwable ? (Throwable) tB : null, tBVar);
        } catch (Throwable th2) {
            oJ(1004, "net request failed!", th2, tBVar);
        }
    }

    private void oJ(int i10, String str, Throwable th2, com.bytedance.sdk.component.Pfn.tB.tB tBVar) {
        tBVar.oJ(new so(i10, str, th2));
    }

    @Override // com.bytedance.sdk.component.Pfn.Pfn.jFA
    public String oJ() {
        return "net_request";
    }
}
