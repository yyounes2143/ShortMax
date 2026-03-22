package com.bytedance.sdk.openadsdk.core.kkU.ba;

import com.bytedance.adsdk.ugeno.core.Ry;
import com.bytedance.sdk.component.adexpress.ZYk.PiB;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends PiB {
    private Ry ZYk;
    private float ex;
    private JSONObject oJ;
    private float tB;

    /* renamed from: com.bytedance.sdk.openadsdk.core.kkU.ba.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0219oJ extends PiB.oJ {
        private Ry ZYk;
        private float ex;
        private JSONObject oJ;
        private float tB;

        public C0219oJ ZYk(float f10) {
            this.ex = f10;
            return this;
        }

        @Override // com.bytedance.sdk.component.adexpress.ZYk.PiB.oJ
        /* renamed from: ZYk */
        public oJ oJ() {
            return new oJ(this);
        }

        public C0219oJ oJ(JSONObject jSONObject) {
            this.oJ = jSONObject;
            return this;
        }

        public C0219oJ oJ(Ry ry) {
            this.ZYk = ry;
            return this;
        }

        public C0219oJ oJ(float f10) {
            this.tB = f10;
            return this;
        }
    }

    public oJ(C0219oJ c0219oJ) {
        super(c0219oJ);
        this.oJ = c0219oJ.oJ;
        this.ZYk = c0219oJ.ZYk;
        this.tB = c0219oJ.tB;
        this.ex = c0219oJ.ex;
    }

    public Ry Jc() {
        return this.ZYk;
    }

    public float Ln() {
        return this.tB;
    }

    public float LpP() {
        return this.ex;
    }

    public JSONObject nke() {
        return this.oJ;
    }
}
