package com.bykv.vk.openvk.oJ.oJ.oJ.tB;

import android.os.Build;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB implements Serializable {
    private String PiB;
    private int QSm;
    private boolean RZ;
    private boolean Ry;
    private int WcQ;
    public String ZYk;
    private int awB;

    /* renamed from: ba  reason: collision with root package name */
    private ZYk f11018ba;
    private ZYk cFZ;
    private String eZI;
    private boolean jFA;

    /* renamed from: oq  reason: collision with root package name */
    private int f11020oq;

    /* renamed from: si  reason: collision with root package name */
    private long f11021si;

    /* renamed from: so  reason: collision with root package name */
    private String f11022so;
    public int tB;

    /* renamed from: tb  reason: collision with root package name */
    private int f11023tb;
    private int kkU = 204800;
    private int dLZ = 0;
    private int BTZ = 0;
    protected float oJ = -1.0f;
    public final HashMap<String, Object> ex = new HashMap<>();
    private int Id = 10000;
    private int cY = 10000;

    /* renamed from: jr  reason: collision with root package name */
    private int f11019jr = 10000;
    private int Xe = 0;
    public int Pfn = 1;
    private JSONObject HL = new JSONObject();

    public tB(String str, ZYk zYk, ZYk zYk2, int i10, int i11) {
        this.QSm = 0;
        this.f11020oq = 0;
        this.f11022so = str;
        this.f11018ba = zYk;
        this.cFZ = zYk2;
        this.QSm = i10;
        this.f11020oq = i11;
    }

    public long BTZ() {
        if (WcQ()) {
            return this.cFZ.Pfn();
        }
        ZYk zYk = this.f11018ba;
        if (zYk != null) {
            return zYk.Pfn();
        }
        return 0L;
    }

    public int Id() {
        return this.Xe;
    }

    public String Pfn() {
        return this.f11022so;
    }

    public boolean PiB() {
        if (WcQ()) {
            return this.cFZ.oq();
        }
        ZYk zYk = this.f11018ba;
        if (zYk != null) {
            return zYk.oq();
        }
        return true;
    }

    public int QSm() {
        return this.cY;
    }

    public int RZ() {
        return this.Id;
    }

    public int Ry() {
        return this.QSm;
    }

    public boolean WcQ() {
        ZYk zYk;
        if (this.f11020oq == 1 && (zYk = this.cFZ) != null && !TextUtils.isEmpty(zYk.dLZ())) {
            if (com.bykv.vk.openvk.oJ.oJ.oJ.tB.ba() == 2) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return true;
                }
            } else if (this.QSm == 1) {
                return true;
            }
        }
        return false;
    }

    public boolean Xe() {
        return this.jFA;
    }

    public boolean ZYk() {
        return this.f11023tb == 2;
    }

    public float awB() {
        float f10 = this.oJ;
        if (f10 != -1.0f) {
            return f10;
        }
        if (WcQ()) {
            return this.cFZ.so();
        }
        ZYk zYk = this.f11018ba;
        if (zYk == null) {
            return -1.0f;
        }
        return zYk.so();
    }

    public int ba() {
        if (WcQ()) {
            return this.cFZ.awB();
        }
        ZYk zYk = this.f11018ba;
        if (zYk != null) {
            return zYk.awB();
        }
        return 0;
    }

    public boolean cFZ() {
        return this.RZ;
    }

    public ZYk cY() {
        return this.f11018ba;
    }

    public boolean dLZ() {
        return this.Ry;
    }

    public String eZI() {
        if (WcQ()) {
            return this.cFZ.dLZ();
        }
        ZYk zYk = this.f11018ba;
        if (zYk != null) {
            return zYk.dLZ();
        }
        return null;
    }

    public int ex() {
        return this.HL.optInt("pitaya_cache_size", 0);
    }

    public int jFA() {
        return this.awB;
    }

    public ZYk jr() {
        return this.cFZ;
    }

    public long kkU() {
        return this.f11021si;
    }

    public void oJ(int i10) {
        this.f11023tb = i10;
    }

    public int oq() {
        return this.f11019jr;
    }

    public String si() {
        if (WcQ()) {
            return this.cFZ.WcQ();
        }
        ZYk zYk = this.f11018ba;
        if (zYk != null) {
            return zYk.WcQ();
        }
        return null;
    }

    public int so() {
        return this.WcQ;
    }

    public JSONObject tB() {
        return this.HL;
    }

    public synchronized Object Pfn(String str) {
        return this.ex.get(str);
    }

    public void ZYk(String str) {
        this.PiB = str;
    }

    public void cFZ(int i10) {
        this.f11019jr = i10;
    }

    public void ex(String str) {
        this.ZYk = str;
    }

    public boolean oJ() {
        int i10 = this.f11023tb;
        return i10 == 1 || i10 == 2;
    }

    public void so(int i10) {
        this.Xe = i10;
    }

    public void tB(int i10) {
        this.awB = i10;
    }

    public void Pfn(int i10) {
        this.Id = i10;
    }

    public void ZYk(int i10) {
        this.WcQ = i10;
    }

    public void ex(int i10) {
        this.tB = i10;
    }

    public void oJ(String str) {
        this.f11022so = str;
    }

    public void tB(String str) {
        this.eZI = str;
    }

    public void ZYk(boolean z10) {
        this.jFA = z10;
    }

    public void oJ(long j10) {
        this.f11021si = j10;
    }

    public void ba(int i10) {
        this.cY = i10;
    }

    public void oJ(boolean z10) {
        this.Ry = z10;
    }

    public synchronized void oJ(String str, Object obj) {
        this.ex.put(str, obj);
    }
}
