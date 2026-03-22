package com.bytedance.adsdk.ugeno.ex.ZYk;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class oJ {
    public static final HashSet<String> oJ = new HashSet<>(Arrays.asList("convert", "dislike", "openAppPermission", "openAppPolicy", "openPrivacy", "openAppFunction", "close", "skip", "videoControl", "pauseVideo", "resumeVideo", "muteVideo", "preventEvent"));
    protected String Pfn;
    protected ba.oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected Map<String, String> f11669ba;
    protected String cFZ;
    protected String ex;

    /* renamed from: so  reason: collision with root package name */
    protected String f11670so;
    protected com.bytedance.adsdk.ugeno.ZYk.tB tB;

    /* renamed from: com.bytedance.adsdk.ugeno.ex.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0145oJ {
        public static oJ oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
            if (oJVar == null) {
                return null;
            }
            com.bytedance.adsdk.ugeno.ex.ZYk oJ = com.bytedance.adsdk.ugeno.ex.ex.oJ(oJVar.ZYk());
            if (oJ == null) {
                return new tB(tBVar, str, oJVar);
            }
            oJ oJ2 = oJ.oJ(tBVar, str, oJVar);
            if (oJ2 == null) {
                return new tB(tBVar, str, oJVar);
            }
            return oJ2;
        }
    }

    public oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        this.tB = tBVar;
        this.ZYk = oJVar;
        this.cFZ = str;
        Pfn();
    }

    private void Pfn() {
        ba.oJ oJVar = this.ZYk;
        if (oJVar == null) {
            return;
        }
        this.ex = oJVar.oJ();
        this.Pfn = this.ZYk.ZYk();
        Map<String, String> tB = this.ZYk.tB();
        this.f11669ba = tB;
        if (tB != null && !tB.isEmpty() && this.f11669ba.containsKey("emitCustomEvent")) {
            this.f11670so = this.f11669ba.get("emitCustomEvent");
        }
    }

    public void ZYk() {
        tB();
    }

    public boolean ex() {
        if (!TextUtils.isEmpty(this.f11670so)) {
            return true;
        }
        return false;
    }

    public abstract void oJ();

    public void tB() {
        if (ex()) {
            ba.oJ oJVar = new ba.oJ();
            oJVar.oJ("custom");
            oJVar.ZYk("emit");
            HashMap hashMap = new HashMap();
            hashMap.put("name", this.f11670so);
            oJVar.oJ(hashMap);
            new ZYk(this.tB, this.Pfn, oJVar).oJ();
        }
    }
}
