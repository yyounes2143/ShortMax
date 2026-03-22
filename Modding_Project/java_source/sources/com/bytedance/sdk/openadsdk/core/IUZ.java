package com.bytedance.sdk.openadsdk.core;

import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class IUZ {
    private static IUZ oJ;
    private com.bytedance.sdk.openadsdk.oJ.tB.ZYk Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.oJ.ex.ZYk f13091ba;
    private com.bytedance.sdk.openadsdk.oJ.Pfn.oJ ex;
    private int ZYk = 0;
    private Map<Integer, com.bytedance.sdk.openadsdk.core.model.oJ> tB = new ConcurrentHashMap();
    private final Map<String, oJ> cFZ = new HashMap();

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    private IUZ() {
    }

    @MainThread
    public static IUZ oJ() {
        if (oJ == null) {
            oJ = new IUZ();
        }
        return oJ;
    }

    public void Pfn() {
        this.ex = null;
        this.Pfn = null;
        this.f13091ba = null;
    }

    public com.bytedance.sdk.openadsdk.oJ.Pfn.oJ ZYk() {
        return this.ex;
    }

    public com.bytedance.sdk.openadsdk.oJ.ex.ZYk ex() {
        return this.f13091ba;
    }

    public com.bytedance.sdk.openadsdk.oJ.tB.ZYk tB() {
        return this.Pfn;
    }

    private static String ex(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar == null) {
            return null;
        }
        String iPr = cYVar.iPr();
        return TextUtils.isEmpty(iPr) ? String.valueOf(cYVar.hashCode()) : iPr;
    }

    public com.bytedance.sdk.openadsdk.core.model.oJ ZYk(int i10) {
        return this.tB.remove(Integer.valueOf(i10));
    }

    public void tB(int i10) {
        this.tB.remove(Integer.valueOf(i10));
    }

    public void ZYk(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        oJ oJVar;
        if (cYVar == null) {
            return;
        }
        String ex = ex(cYVar);
        if (TextUtils.isEmpty(ex) || (oJVar = this.cFZ.get(ex)) == null) {
            return;
        }
        oJVar.oJ();
    }

    public void tB(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        String ex = ex(cYVar);
        if (TextUtils.isEmpty(ex)) {
            return;
        }
        this.cFZ.remove(ex);
    }

    public com.bytedance.sdk.openadsdk.core.model.cY oJ(int i10) {
        com.bytedance.sdk.openadsdk.core.model.oJ remove = this.tB.remove(Integer.valueOf(i10));
        if (remove != null) {
            return remove.awB();
        }
        return null;
    }

    public int oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar = new com.bytedance.sdk.openadsdk.core.model.oJ();
        oJVar.ZYk(cYVar);
        return oJ(oJVar);
    }

    public void oJ(com.bytedance.sdk.openadsdk.oJ.tB.ZYk zYk) {
        this.Pfn = zYk;
    }

    public void oJ(com.bytedance.sdk.openadsdk.oJ.Pfn.oJ oJVar) {
        this.ex = oJVar;
    }

    public void oJ(com.bytedance.sdk.openadsdk.oJ.ex.ZYk zYk) {
        this.f13091ba = zYk;
    }

    public int oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        int i10 = this.ZYk + 1;
        this.ZYk = i10;
        this.tB.put(Integer.valueOf(i10), oJVar);
        return this.ZYk;
    }

    public static int oJ(Intent intent) {
        if (intent != null) {
            return intent.getIntExtra("meta_index", -1);
        }
        return -1;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, oJ oJVar) {
        if (cYVar == null || oJVar == null) {
            return;
        }
        String ex = ex(cYVar);
        if (TextUtils.isEmpty(ex)) {
            return;
        }
        this.cFZ.put(ex, oJVar);
    }
}
