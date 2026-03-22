package com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk;

import android.content.Context;
import com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ZYk {
    private File Pfn;
    private com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB ZYk;
    private File ex;
    private Context oJ;
    private volatile boolean tB = false;

    /* renamed from: ba  reason: collision with root package name */
    private final List<oJ.InterfaceC0133oJ> f10998ba = new ArrayList();
    private volatile boolean cFZ = false;

    public ZYk(Context context, com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        this.ex = null;
        this.Pfn = null;
        this.oJ = context;
        this.ZYk = tBVar;
        this.ex = com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.ZYk(tBVar.Pfn(), tBVar.si());
        this.Pfn = com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.tB(tBVar.Pfn(), tBVar.si());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Pfn() {
        try {
            if (this.ex.renameTo(this.Pfn)) {
                return;
            }
            throw new IOException("Error renaming file " + this.ex + " to " + this.Pfn + " for completion!");
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        try {
            this.Pfn.delete();
            this.ex.delete();
        } catch (Throwable unused) {
        }
    }

    private void tB() {
        dLZ.oJ oJVar;
        if (com.bykv.vk.openvk.oJ.oJ.oJ.tB.ex() != null) {
            oJVar = com.bykv.vk.openvk.oJ.oJ.oJ.tB.ex().ZYk();
        } else {
            oJVar = new dLZ.oJ("v_preload");
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        oJVar.oJ(this.ZYk.RZ(), timeUnit).ZYk(this.ZYk.QSm(), timeUnit).tB(this.ZYk.oq(), timeUnit);
        dLZ oJ = oJVar.oJ();
        BTZ.oJ oJVar2 = new BTZ.oJ();
        final long length = this.ex.length();
        int ba2 = this.ZYk.ba();
        boolean PiB = this.ZYk.PiB();
        int ex = this.ZYk.ex();
        if (ex > 0) {
            if (ex >= this.ZYk.BTZ()) {
                PiB = true;
            } else {
                ba2 = ex;
            }
        }
        oJVar2.oJ("videoPreload").oJ(6);
        if (PiB) {
            oJVar2.oJ("RANGE", "bytes=" + length + "-").ZYk(this.ZYk.eZI()).oJ().ZYk();
        } else {
            oJVar2.oJ("RANGE", "bytes=" + length + "-" + ba2).ZYk(this.ZYk.eZI()).oJ().ZYk();
        }
        oJ.oJ(oJVar2.ZYk()).oJ(new com.bytedance.sdk.component.ZYk.oJ.tB() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.ZYk.1
            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, IOException iOException) {
                ZYk zYk2 = ZYk.this;
                zYk2.oJ(zYk2.ZYk, 601, iOException.getMessage());
                tB.oJ(ZYk.this.ZYk);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:65:0x0159 A[Catch: all -> 0x015e, TryCatch #6 {all -> 0x015e, blocks: (B:63:0x014c, B:65:0x0159, B:68:0x0160), top: B:83:0x014c }] */
            /* JADX WARN: Type inference failed for: r13v5 */
            @Override // com.bytedance.sdk.component.ZYk.oJ.tB
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk r18, com.bytedance.sdk.component.ZYk.oJ.WcQ r19) throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 419
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.ZYk.AnonymousClass1.oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk, com.bytedance.sdk.component.ZYk.oJ.WcQ):void");
            }
        });
    }

    private boolean ZYk() {
        if (this.Pfn.exists()) {
            return true;
        }
        if (!this.ZYk.PiB()) {
            if (this.ex.length() >= this.ZYk.ba()) {
                return true;
            }
            if (this.ZYk.ex() > 0 && this.ex.length() >= this.ZYk.ex()) {
                return true;
            }
        }
        return false;
    }

    public void oJ(oJ.InterfaceC0133oJ interfaceC0133oJ) {
        if (this.cFZ) {
            synchronized (oJ.InterfaceC0133oJ.class) {
                this.f10998ba.add(interfaceC0133oJ);
            }
            return;
        }
        this.f10998ba.add(interfaceC0133oJ);
        if (ZYk()) {
            this.ZYk.so(1);
            oJ(this.ZYk, 200);
            tB.oJ(this.ZYk);
            return;
        }
        this.cFZ = true;
        this.ZYk.so(0);
        tB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
        synchronized (oJ.InterfaceC0133oJ.class) {
            try {
                for (oJ.InterfaceC0133oJ interfaceC0133oJ : this.f10998ba) {
                    if (interfaceC0133oJ != null) {
                        interfaceC0133oJ.ZYk(tBVar, i10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB oJ() {
        return this.ZYk;
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
        synchronized (oJ.InterfaceC0133oJ.class) {
            try {
                for (oJ.InterfaceC0133oJ interfaceC0133oJ : this.f10998ba) {
                    if (interfaceC0133oJ != null) {
                        interfaceC0133oJ.oJ(tBVar, i10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
        synchronized (oJ.InterfaceC0133oJ.class) {
            try {
                for (oJ.InterfaceC0133oJ interfaceC0133oJ : this.f10998ba) {
                    if (interfaceC0133oJ != null) {
                        interfaceC0133oJ.oJ(tBVar, i10, str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
