package com.bytedance.sdk.component.Pfn.ex.tB.oJ;

import android.content.Context;
import java.io.File;
/* loaded from: classes3.dex */
public class ZYk implements com.bytedance.sdk.component.Pfn.ZYk, Cloneable {
    private static volatile com.bytedance.sdk.component.Pfn.ZYk jFA;
    private boolean Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private boolean f12564ba;
    private boolean cFZ;
    private int ex;
    private long oJ;

    /* renamed from: so  reason: collision with root package name */
    private File f12565so;
    private int tB;

    public ZYk(int i10, int i11, int i12, long j10, File file) {
        this(i10, i11, i12, j10, i11 != 0, j10 != 0, file);
    }

    public static com.bytedance.sdk.component.Pfn.ZYk kkU() {
        return jFA;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean Pfn() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean ba() {
        return this.cFZ;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean cFZ() {
        return this.f12564ba;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int ex() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean jFA() {
        return true;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public long oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public File so() {
        return this.f12565so;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int tB() {
        return this.tB;
    }

    public ZYk(int i10, int i11, int i12, long j10, boolean z10, boolean z11, File file) {
        this.oJ = j10;
        this.ZYk = i10;
        this.tB = i11;
        this.ex = i12;
        this.Pfn = z10;
        this.f12564ba = z11;
        this.f12565so = file;
        this.cFZ = i12 != 0;
    }

    public static void oJ(Context context, com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk != null) {
            jFA = zYk;
        } else {
            jFA = oJ(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.Pfn.ZYk oJ(File file) {
        long oJ;
        int tB;
        int ex;
        file.mkdirs();
        if (jFA == null) {
            tB = 10;
            ex = 14;
            oJ = 20;
        } else {
            oJ = jFA.oJ();
            tB = jFA.tB();
            ex = jFA.ex();
        }
        return new ZYk(0, tB, ex, oJ, file);
    }
}
