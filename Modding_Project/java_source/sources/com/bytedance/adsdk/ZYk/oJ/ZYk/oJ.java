package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class oJ<K, A> {
    private final tB<K> Pfn;
    protected com.bytedance.adsdk.ZYk.cFZ.ZYk<A> tB;
    final List<InterfaceC0139oJ> oJ = new ArrayList(1);
    private boolean ex = false;
    protected float ZYk = 0.0f;

    /* renamed from: ba  reason: collision with root package name */
    private A f11529ba = null;
    private float cFZ = -1.0f;

    /* renamed from: so  reason: collision with root package name */
    private float f11530so = -1.0f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class Pfn<T> implements tB<T> {
        private float ZYk = -1.0f;
        private final com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJ;

        Pfn(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list) {
            this.oJ = list.get(0);
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk() {
            return this.oJ;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float ex() {
            return this.oJ.ex();
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ() {
            return false;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float tB() {
            return this.oJ.tB();
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean ZYk(float f10) {
            if (this.ZYk == f10) {
                return true;
            }
            this.ZYk = f10;
            return false;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ(float f10) {
            return !this.oJ.Pfn();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ZYk<T> implements tB<T> {
        private ZYk() {
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float ex() {
            return 1.0f;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ() {
            return true;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float tB() {
            return 0.0f;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean ZYk(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ(float f10) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ex<T> implements tB<T> {
        private final List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> oJ;
        private com.bytedance.adsdk.ZYk.cFZ.oJ<T> tB = null;
        private float ex = -1.0f;
        private com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk = tB(0.0f);

        ex(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list) {
            this.oJ = list;
        }

        private com.bytedance.adsdk.ZYk.cFZ.oJ<T> tB(float f10) {
            List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list;
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar = this.oJ.get(list.size() - 1);
            if (f10 >= oJVar.tB()) {
                return oJVar;
            }
            for (int size = this.oJ.size() - 2; size > 0; size--) {
                com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar2 = this.oJ.get(size);
                if (this.ZYk != oJVar2 && oJVar2.oJ(f10)) {
                    return oJVar2;
                }
            }
            return this.oJ.get(0);
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk() {
            return this.ZYk;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float ex() {
            List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list = this.oJ;
            return list.get(list.size() - 1).ex();
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ() {
            return false;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean ZYk(float f10) {
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar = this.tB;
            com.bytedance.adsdk.ZYk.cFZ.oJ<T> oJVar2 = this.ZYk;
            if (oJVar == oJVar2 && this.ex == f10) {
                return true;
            }
            this.tB = oJVar2;
            this.ex = f10;
            return false;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public boolean oJ(float f10) {
            if (this.ZYk.oJ(f10)) {
                return !this.ZYk.Pfn();
            }
            this.ZYk = tB(f10);
            return true;
        }

        @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.tB
        public float tB() {
            return this.oJ.get(0).tB();
        }
    }

    /* renamed from: com.bytedance.adsdk.ZYk.oJ.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0139oJ {
        void oJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface tB<T> {
        com.bytedance.adsdk.ZYk.cFZ.oJ<T> ZYk();

        boolean ZYk(float f10);

        float ex();

        boolean oJ();

        boolean oJ(float f10);

        float tB();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oJ(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<K>> list) {
        this.Pfn = oJ(list);
    }

    private float jFA() {
        if (this.cFZ == -1.0f) {
            this.cFZ = this.Pfn.tB();
        }
        return this.cFZ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float Pfn() {
        com.bytedance.adsdk.ZYk.cFZ.oJ<K> tB2 = tB();
        if (tB2 != null && !tB2.Pfn()) {
            return tB2.tB.getInterpolation(ex());
        }
        return 0.0f;
    }

    public void ZYk() {
        for (int i10 = 0; i10 < this.oJ.size(); i10++) {
            this.oJ.get(i10).oJ();
        }
    }

    float ba() {
        if (this.f11530so == -1.0f) {
            this.f11530so = this.Pfn.ex();
        }
        return this.f11530so;
    }

    public A cFZ() {
        A oJ;
        float ex2 = ex();
        if (this.tB == null && this.Pfn.ZYk(ex2)) {
            return this.f11529ba;
        }
        com.bytedance.adsdk.ZYk.cFZ.oJ<K> tB2 = tB();
        Interpolator interpolator = tB2.ex;
        if (interpolator != null && tB2.Pfn != null) {
            oJ = oJ(tB2, ex2, interpolator.getInterpolation(ex2), tB2.Pfn.getInterpolation(ex2));
        } else {
            oJ = oJ(tB2, Pfn());
        }
        this.f11529ba = oJ;
        return oJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float ex() {
        if (this.ex) {
            return 0.0f;
        }
        com.bytedance.adsdk.ZYk.cFZ.oJ<K> tB2 = tB();
        if (tB2.Pfn()) {
            return 0.0f;
        }
        return (this.ZYk - tB2.tB()) / (tB2.ex() - tB2.tB());
    }

    abstract A oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<K> oJVar, float f10);

    public void oJ() {
        this.ex = true;
    }

    public float so() {
        return this.ZYk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.adsdk.ZYk.cFZ.oJ<K> tB() {
        com.bytedance.adsdk.ZYk.Pfn.oJ("BaseKeyframeAnimation#getCurrentKeyframe");
        com.bytedance.adsdk.ZYk.cFZ.oJ<K> ZYk2 = this.Pfn.ZYk();
        com.bytedance.adsdk.ZYk.Pfn.ZYk("BaseKeyframeAnimation#getCurrentKeyframe");
        return ZYk2;
    }

    public void oJ(InterfaceC0139oJ interfaceC0139oJ) {
        this.oJ.add(interfaceC0139oJ);
    }

    public void oJ(float f10) {
        if (this.Pfn.oJ()) {
            return;
        }
        if (f10 < jFA()) {
            f10 = jFA();
        } else if (f10 > ba()) {
            f10 = ba();
        }
        if (f10 == this.ZYk) {
            return;
        }
        this.ZYk = f10;
        if (this.Pfn.oJ(f10)) {
            ZYk();
        }
    }

    protected A oJ(com.bytedance.adsdk.ZYk.cFZ.oJ<K> oJVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    private static <T> tB<T> oJ(List<? extends com.bytedance.adsdk.ZYk.cFZ.oJ<T>> list) {
        if (list.isEmpty()) {
            return new ZYk();
        }
        if (list.size() == 1) {
            return new Pfn(list);
        }
        return new ex(list);
    }
}
