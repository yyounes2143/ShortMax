package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class eZI implements com.bytedance.sdk.component.adexpress.tB {
    public int BTZ;
    public final long Pfn;
    public JSONObject PiB;
    public int RZ;
    public boolean Ry;
    public SparseArray<tB.oJ> WcQ;
    public final float ZYk;
    public final boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    public final long f13225ba;
    public final int cFZ;
    public final String dLZ;
    public int eZI;
    public final float ex;
    public final int jFA;
    public final int kkU;
    public final float oJ;

    /* renamed from: si  reason: collision with root package name */
    public JSONObject f13226si;

    /* renamed from: so  reason: collision with root package name */
    public final int f13227so;
    public final float tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        private int BTZ;
        private float Pfn;
        private String PiB;
        private boolean RZ;
        private int WcQ;
        private long ZYk;
        private JSONObject awB;

        /* renamed from: ba  reason: collision with root package name */
        private float f13228ba;
        private float cFZ;
        private int dLZ;
        private int eZI;
        private float ex;
        private int jFA;
        private int kkU;

        /* renamed from: si  reason: collision with root package name */
        private JSONObject f13229si;

        /* renamed from: so  reason: collision with root package name */
        private int f13230so;
        private long tB;
        private boolean Ry = false;
        protected SparseArray<tB.oJ> oJ = new SparseArray<>();

        public oJ Pfn(int i10) {
            this.jFA = i10;
            return this;
        }

        public oJ ZYk(int i10) {
            this.WcQ = i10;
            return this;
        }

        public oJ ba(int i10) {
            this.kkU = i10;
            return this;
        }

        public oJ cFZ(int i10) {
            this.dLZ = i10;
            return this;
        }

        public oJ ex(float f10) {
            this.cFZ = f10;
            return this;
        }

        public oJ oJ(int i10) {
            this.eZI = i10;
            return this;
        }

        public oJ tB(int i10) {
            this.BTZ = i10;
            return this;
        }

        public oJ ZYk(long j10) {
            this.tB = j10;
            return this;
        }

        public oJ ex(int i10) {
            this.f13230so = i10;
            return this;
        }

        public oJ oJ(JSONObject jSONObject) {
            this.awB = jSONObject;
            return this;
        }

        public oJ tB(float f10) {
            this.f13228ba = f10;
            return this;
        }

        public oJ ZYk(float f10) {
            this.Pfn = f10;
            return this;
        }

        public oJ oJ(boolean z10) {
            this.RZ = z10;
            return this;
        }

        public oJ ZYk(JSONObject jSONObject) {
            this.f13229si = jSONObject;
            return this;
        }

        public oJ oJ(long j10) {
            this.ZYk = j10;
            return this;
        }

        public oJ ZYk(boolean z10) {
            this.Ry = z10;
            return this;
        }

        public oJ oJ(float f10) {
            this.ex = f10;
            return this;
        }

        public oJ oJ(String str) {
            this.PiB = str;
            return this;
        }

        public oJ oJ(SparseArray<tB.oJ> sparseArray) {
            this.oJ = sparseArray;
            return this;
        }

        public eZI oJ() {
            return new eZI(this);
        }
    }

    private eZI(@NonNull oJ oJVar) {
        this.Ry = false;
        this.oJ = oJVar.cFZ;
        this.ZYk = oJVar.f13228ba;
        this.tB = oJVar.Pfn;
        this.ex = oJVar.ex;
        this.Pfn = oJVar.tB;
        this.f13225ba = oJVar.ZYk;
        this.cFZ = oJVar.f13230so;
        this.f13227so = oJVar.jFA;
        this.jFA = oJVar.kkU;
        this.kkU = oJVar.dLZ;
        this.dLZ = oJVar.PiB;
        this.WcQ = oJVar.oJ;
        this.awB = oJVar.RZ;
        this.BTZ = oJVar.WcQ;
        this.PiB = oJVar.awB;
        this.eZI = oJVar.eZI;
        this.f13226si = oJVar.f13229si;
        this.Ry = oJVar.Ry;
        this.RZ = oJVar.BTZ;
    }
}
