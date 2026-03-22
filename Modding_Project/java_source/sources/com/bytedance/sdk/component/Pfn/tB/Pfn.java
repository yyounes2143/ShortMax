package com.bytedance.sdk.component.Pfn.tB;

import android.content.Context;
import com.bytedance.sdk.component.Pfn.BTZ;
import com.bytedance.sdk.component.Pfn.PiB;
import com.bytedance.sdk.component.Pfn.QSm;
import com.bytedance.sdk.component.Pfn.Ry;
import com.bytedance.sdk.component.Pfn.oq;
import com.bytedance.sdk.component.Pfn.si;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class Pfn implements PiB {
    private Ry Pfn;
    private ExecutorService ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.Pfn.tB f12576ba;
    private com.bytedance.sdk.component.Pfn.ZYk cFZ;
    private si ex;
    private oq jFA;
    private boolean kkU;
    private BTZ oJ;

    /* renamed from: so  reason: collision with root package name */
    private QSm f12577so;
    private com.bytedance.sdk.component.Pfn.ex tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private Ry Pfn;
        private ExecutorService ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private com.bytedance.sdk.component.Pfn.tB f12578ba;
        private com.bytedance.sdk.component.Pfn.ZYk cFZ;
        private si ex;
        private oq jFA;
        private boolean kkU;
        private BTZ oJ;

        /* renamed from: so  reason: collision with root package name */
        private QSm f12579so;
        private com.bytedance.sdk.component.Pfn.ex tB;

        public oJ oJ(com.bytedance.sdk.component.Pfn.ZYk zYk) {
            this.cFZ = zYk;
            return this;
        }

        public oJ oJ(oq oqVar) {
            this.jFA = oqVar;
            return this;
        }

        public oJ oJ(QSm qSm) {
            this.f12579so = qSm;
            return this;
        }

        public oJ oJ(com.bytedance.sdk.component.Pfn.ex exVar) {
            this.tB = exVar;
            return this;
        }

        public oJ oJ(boolean z10) {
            this.kkU = z10;
            return this;
        }

        public Pfn oJ() {
            return new Pfn(this);
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public si Pfn() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public ExecutorService ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public Ry ba() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public com.bytedance.sdk.component.Pfn.tB cFZ() {
        return this.f12576ba;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public com.bytedance.sdk.component.Pfn.ex ex() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public oq jFA() {
        return this.jFA;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public boolean kkU() {
        return this.kkU;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public BTZ oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public com.bytedance.sdk.component.Pfn.ZYk so() {
        return this.cFZ;
    }

    @Override // com.bytedance.sdk.component.Pfn.PiB
    public QSm tB() {
        return this.f12577so;
    }

    private Pfn(oJ oJVar) {
        this.oJ = oJVar.oJ;
        this.ZYk = oJVar.ZYk;
        this.tB = oJVar.tB;
        this.ex = oJVar.ex;
        this.Pfn = oJVar.Pfn;
        this.f12576ba = oJVar.f12578ba;
        this.cFZ = oJVar.cFZ;
        this.f12577so = oJVar.f12579so;
        this.jFA = oJVar.jFA;
        this.kkU = oJVar.kkU;
    }

    public static Pfn oJ(Context context) {
        return new oJ().oJ();
    }
}
