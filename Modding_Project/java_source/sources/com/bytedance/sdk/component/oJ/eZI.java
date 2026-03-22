package com.bytedance.sdk.component.oJ;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class eZI {
    public final String Pfn;
    public final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public final String f12797ba;
    public final String cFZ;
    public final String ex;
    public final int oJ;

    /* renamed from: so  reason: collision with root package name */
    public final String f12798so;
    public final String tB;

    /* loaded from: classes3.dex */
    public static final class oJ {
        private String Pfn;
        private String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private String f12799ba;
        private String cFZ;
        private String ex;
        private String oJ;
        private String tB;

        private oJ() {
        }

        public oJ Pfn(String str) {
            this.Pfn = str;
            return this;
        }

        public oJ ZYk(String str) {
            this.ZYk = str;
            return this;
        }

        public oJ ba(String str) {
            this.f12799ba = str;
            return this;
        }

        public oJ cFZ(String str) {
            this.cFZ = str;
            return this;
        }

        public oJ ex(String str) {
            this.ex = str;
            return this;
        }

        public oJ oJ(String str) {
            this.oJ = str;
            return this;
        }

        public oJ tB(String str) {
            this.tB = str;
            return this;
        }

        public eZI oJ() {
            return new eZI(this);
        }
    }

    public static oJ oJ() {
        return new oJ();
    }

    public String toString() {
        return "methodName: " + this.ex + ", params: " + this.Pfn + ", callbackId: " + this.f12797ba + ", type: " + this.tB + ", version: " + this.ZYk + ", ";
    }

    private eZI(String str, int i10) {
        this.ZYk = null;
        this.tB = null;
        this.ex = null;
        this.Pfn = null;
        this.f12797ba = str;
        this.cFZ = null;
        this.oJ = i10;
        this.f12798so = null;
    }

    public static eZI oJ(String str, int i10) {
        return new eZI(str, i10);
    }

    public static boolean oJ(eZI ezi) {
        return ezi == null || ezi.oJ != 1 || TextUtils.isEmpty(ezi.ex) || TextUtils.isEmpty(ezi.Pfn);
    }

    private eZI(oJ oJVar) {
        this.ZYk = oJVar.oJ;
        this.tB = oJVar.ZYk;
        this.ex = oJVar.tB;
        this.Pfn = oJVar.ex;
        this.f12797ba = oJVar.Pfn;
        this.cFZ = oJVar.f12799ba;
        this.oJ = 1;
        this.f12798so = oJVar.cFZ;
    }
}
