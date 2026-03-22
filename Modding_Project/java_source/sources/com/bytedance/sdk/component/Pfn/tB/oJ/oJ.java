package com.bytedance.sdk.component.Pfn.tB.oJ;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.File;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.component.Pfn.ZYk, Cloneable {

    /* renamed from: ba  reason: collision with root package name */
    private static volatile com.bytedance.sdk.component.Pfn.ZYk f12586ba;
    private File Pfn;
    private int ZYk;
    private boolean ex;
    private long oJ;
    private boolean tB;

    public oJ(int i10, long j10, File file) {
        this(i10, j10, i10 != 0, j10 != 0, file);
    }

    private static long dLZ() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static com.bytedance.sdk.component.Pfn.ZYk kkU() {
        return f12586ba;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean Pfn() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean ba() {
        return false;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public boolean cFZ() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int ex() {
        return 0;
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
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.Pfn.ZYk
    public int tB() {
        return 0;
    }

    public oJ(int i10, long j10, boolean z10, boolean z11, File file) {
        this.oJ = j10;
        this.ZYk = i10;
        this.tB = z10;
        this.ex = z11;
        this.Pfn = file;
    }

    public static void oJ(Context context, com.bytedance.sdk.component.Pfn.ZYk zYk) {
        if (zYk != null) {
            f12586ba = zYk;
        } else {
            f12586ba = oJ(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.Pfn.ZYk oJ(File file) {
        int min;
        long min2;
        file.mkdirs();
        if (f12586ba == null) {
            min = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            min2 = Math.min(dLZ() / 16, 41943040L);
        } else {
            min = Math.min(f12586ba.ZYk() / 2, 31457280);
            min2 = Math.min(f12586ba.oJ() / 2, 41943040L);
        }
        return new oJ(Math.max(min, 26214400), Math.max(min2, (long) ServiceProvider.HTTP_CACHE_DISK_SIZE), file);
    }
}
