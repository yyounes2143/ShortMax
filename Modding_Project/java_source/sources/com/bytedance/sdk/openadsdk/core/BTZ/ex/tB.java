package com.bytedance.sdk.openadsdk.core.BTZ.ex;

import com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex;
import com.bykv.vk.openvk.oJ.oJ.oJ.oJ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends ex {
    private final oJ ex;
    private final List<ZYk> oJ = Collections.synchronizedList(new ArrayList());
    private int ZYk = 1;
    private int tB = 1;

    /* loaded from: classes3.dex */
    public interface ZYk extends oJ.InterfaceC0135oJ {
        void oJ(int i10, int i11);
    }

    public tB() {
        oJ oJVar = new oJ();
        this.ex = oJVar;
        super.oJ(oJVar);
        oJ(500);
    }

    static /* synthetic */ int oJ(tB tBVar) {
        int i10 = tBVar.tB;
        tBVar.tB = i10 + 1;
        return i10;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex
    public long Ry() {
        long Ry = super.Ry();
        if (this.ZYk == 1) {
            return Ry;
        }
        return Ry + ((this.tB - 1) * super.si());
    }

    public int oq() {
        return this.tB;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex
    public long si() {
        return super.si() * this.ZYk;
    }

    /* loaded from: classes3.dex */
    private class oJ implements oJ.InterfaceC0135oJ {
        private oJ() {
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void Pfn(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.Pfn(oJVar);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.ZYk(oJVar);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ex(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.ex(oJVar);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            tB.oJ(tB.this);
            if (tB.this.tB <= tB.this.ZYk) {
                for (ZYk zYk : tB.this.oJ) {
                    zYk.oJ(tB.this.tB, tB.this.ZYk);
                }
                tB.this.jFA();
                return;
            }
            for (ZYk zYk2 : tB.this.oJ) {
                zYk2.oJ(oJVar);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void tB(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.tB(oJVar);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.ZYk(oJVar, i10);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, long j10) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, j10);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ oJVar2) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, oJVar2);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, boolean z10) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, z10);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, i10, i11);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10, int i11, int i12) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, i10, i11, i12);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, int i10) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, i10);
            }
        }

        @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.InterfaceC0135oJ
        public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.oJ oJVar, long j10, long j11) {
            for (ZYk zYk : tB.this.oJ) {
                zYk.oJ(oJVar, j10, j11);
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.ex
    public void oJ(oJ.InterfaceC0135oJ interfaceC0135oJ) {
        if (interfaceC0135oJ instanceof ZYk) {
            if (this.oJ.contains(interfaceC0135oJ)) {
                return;
            }
            this.oJ.add((ZYk) interfaceC0135oJ);
            return;
        }
        super.oJ(interfaceC0135oJ);
    }

    public void tB(int i10) {
        this.ZYk = Math.max(1, i10);
    }
}
