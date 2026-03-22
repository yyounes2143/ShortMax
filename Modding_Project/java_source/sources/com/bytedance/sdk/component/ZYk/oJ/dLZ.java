package com.bytedance.sdk.component.ZYk.oJ;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public abstract class dLZ implements Cloneable {
    public TimeUnit Pfn;
    public long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public long f12614ba;
    public TimeUnit cFZ;
    public long ex;
    public List<so> oJ;
    public TimeUnit tB;

    public dLZ(oJ oJVar) {
        this.ZYk = oJVar.ZYk;
        this.ex = oJVar.ex;
        this.f12614ba = oJVar.f12615ba;
        List<so> list = oJVar.oJ;
        this.tB = oJVar.tB;
        this.Pfn = oJVar.Pfn;
        this.cFZ = oJVar.cFZ;
        this.oJ = list;
    }

    public oJ ZYk() {
        return new oJ(this);
    }

    public abstract ZYk oJ(BTZ btz);

    public abstract ex oJ();

    /* loaded from: classes3.dex */
    public static final class oJ {
        public TimeUnit Pfn;
        public long ZYk;

        /* renamed from: ba  reason: collision with root package name */
        public long f12615ba;
        public TimeUnit cFZ;
        public long ex;
        public final List<so> oJ;
        public TimeUnit tB;

        public oJ() {
            this.oJ = new ArrayList();
            this.ZYk = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.tB = timeUnit;
            this.ex = 10000L;
            this.Pfn = timeUnit;
            this.f12615ba = 10000L;
            this.cFZ = timeUnit;
        }

        public oJ ZYk(long j10, TimeUnit timeUnit) {
            this.ex = j10;
            this.Pfn = timeUnit;
            return this;
        }

        public oJ oJ(long j10, TimeUnit timeUnit) {
            this.ZYk = j10;
            this.tB = timeUnit;
            return this;
        }

        public oJ tB(long j10, TimeUnit timeUnit) {
            this.f12615ba = j10;
            this.cFZ = timeUnit;
            return this;
        }

        public oJ oJ(so soVar) {
            this.oJ.add(soVar);
            return this;
        }

        public dLZ oJ() {
            return com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.oJ(this);
        }

        public oJ(String str) {
            this.oJ = new ArrayList();
            this.ZYk = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.tB = timeUnit;
            this.ex = 10000L;
            this.Pfn = timeUnit;
            this.f12615ba = 10000L;
            this.cFZ = timeUnit;
        }

        public oJ(dLZ dlz) {
            this.oJ = new ArrayList();
            this.ZYk = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.tB = timeUnit;
            this.ex = 10000L;
            this.Pfn = timeUnit;
            this.f12615ba = 10000L;
            this.cFZ = timeUnit;
            this.ZYk = dlz.ZYk;
            this.tB = dlz.tB;
            this.ex = dlz.ex;
            this.Pfn = dlz.Pfn;
            this.f12615ba = dlz.f12614ba;
            this.cFZ = dlz.cFZ;
        }
    }
}
