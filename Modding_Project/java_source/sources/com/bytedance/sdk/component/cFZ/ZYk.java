package com.bytedance.sdk.component.cFZ;

import com.bytedance.sdk.component.ZYk.oJ.kkU;
import java.io.File;
import java.util.Map;
/* loaded from: classes3.dex */
public class ZYk {
    final long Pfn;
    final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    final long f12772ba;
    kkU cFZ;
    final String ex;
    private final boolean jFA;
    final int oJ;
    final Map<String, String> tB;

    /* renamed from: so  reason: collision with root package name */
    private File f12773so = null;
    private byte[] kkU = null;

    public ZYk(boolean z10, int i10, String str, Map<String, String> map, String str2, long j10, long j11) {
        this.jFA = z10;
        this.oJ = i10;
        this.ZYk = str;
        this.tB = map;
        this.ex = str2;
        this.Pfn = j10;
        this.f12772ba = j11;
    }

    public File Pfn() {
        return this.f12773so;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public boolean ba() {
        return this.jFA;
    }

    public kkU cFZ() {
        return this.cFZ;
    }

    public String ex() {
        return this.ex;
    }

    public int oJ() {
        return this.oJ;
    }

    public Map<String, String> tB() {
        return this.tB;
    }

    public void oJ(File file) {
        this.f12773so = file;
    }

    public void oJ(byte[] bArr) {
        this.kkU = bArr;
    }

    public void oJ(kkU kku) {
        this.cFZ = kku;
    }
}
