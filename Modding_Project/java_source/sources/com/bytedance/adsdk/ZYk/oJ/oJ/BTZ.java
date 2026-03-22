package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.bytedance.adsdk.ZYk.tB.ZYk.jFA;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
@TargetApi(19)
/* loaded from: classes3.dex */
public class BTZ implements PiB, kkU {

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.tB.ZYk.jFA f11532ba;
    private final String ex;
    private final Path oJ = new Path();
    private final Path ZYk = new Path();
    private final Path tB = new Path();
    private final List<PiB> Pfn = new ArrayList();

    /* renamed from: com.bytedance.adsdk.ZYk.oJ.oJ.BTZ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[jFA.oJ.values().length];
            oJ = iArr;
            try {
                iArr[jFA.oJ.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[jFA.oJ.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[jFA.oJ.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[jFA.oJ.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[jFA.oJ.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public BTZ(com.bytedance.adsdk.ZYk.tB.ZYk.jFA jfa) {
        this.ex = jfa.oJ();
        this.f11532ba = jfa;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        this.tB.reset();
        if (this.f11532ba.tB()) {
            return this.tB;
        }
        int i10 = AnonymousClass1.oJ[this.f11532ba.ZYk().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            oJ(Path.Op.XOR);
                        }
                    } else {
                        oJ(Path.Op.INTERSECT);
                    }
                } else {
                    oJ(Path.Op.REVERSE_DIFFERENCE);
                }
            } else {
                oJ(Path.Op.UNION);
            }
        } else {
            oJ();
        }
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.kkU
    public void oJ(ListIterator<tB> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            tB previous = listIterator.previous();
            if (previous instanceof PiB) {
                this.Pfn.add((PiB) previous);
                listIterator.remove();
            }
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        for (int i10 = 0; i10 < this.Pfn.size(); i10++) {
            this.Pfn.get(i10).oJ(list, list2);
        }
    }

    private void oJ() {
        for (int i10 = 0; i10 < this.Pfn.size(); i10++) {
            this.tB.addPath(this.Pfn.get(i10).ex());
        }
    }

    @TargetApi(19)
    private void oJ(Path.Op op2) {
        this.ZYk.reset();
        this.oJ.reset();
        for (int size = this.Pfn.size() - 1; size > 0; size--) {
            PiB piB = this.Pfn.get(size);
            if (piB instanceof ex) {
                ex exVar = (ex) piB;
                List<PiB> ZYk = exVar.ZYk();
                for (int size2 = ZYk.size() - 1; size2 >= 0; size2--) {
                    Path ex = ZYk.get(size2).ex();
                    ex.transform(exVar.tB());
                    this.ZYk.addPath(ex);
                }
            } else {
                this.ZYk.addPath(piB.ex());
            }
        }
        PiB piB2 = this.Pfn.get(0);
        if (piB2 instanceof ex) {
            ex exVar2 = (ex) piB2;
            List<PiB> ZYk2 = exVar2.ZYk();
            for (int i10 = 0; i10 < ZYk2.size(); i10++) {
                Path ex2 = ZYk2.get(i10).ex();
                ex2.transform(exVar2.tB());
                this.oJ.addPath(ex2);
            }
        } else {
            this.oJ.set(piB2.ex());
        }
        this.tB.op(this.oJ, this.ZYk, op2);
    }
}
