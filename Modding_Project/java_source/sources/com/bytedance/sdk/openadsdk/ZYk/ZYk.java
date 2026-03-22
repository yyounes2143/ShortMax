package com.bytedance.sdk.openadsdk.ZYk;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private int ZYk;
    private volatile boolean ex;
    private int tB;

    public ZYk(int i10, int i11) {
        this.ZYk = 15;
        this.tB = 3;
        if (i10 > 0) {
            this.ZYk = i10;
            this.tB = i11;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }

    private void ex(List<File> list) {
        long ZYk;
        int size;
        boolean oJ;
        if (list != null) {
            try {
                if (list.size() == 0 || (oJ = oJ((ZYk = ZYk(list)), (size = list.size())))) {
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !oJ) {
                        ((Long) entry.getKey()).longValue();
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            ZYk -= length;
                        }
                        if (oJ(file2, ZYk, size)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void tB(List<File> list) {
        long ZYk = ZYk(list);
        int size = list.size();
        if (!oJ(ZYk, size)) {
            for (File file : list) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    ZYk -= length;
                }
                if (oJ(file, ZYk, size)) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.ZYk.oJ
    public boolean oJ(long j10, int i10) {
        return i10 <= this.ZYk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.ZYk.oJ
    public boolean oJ(File file, long j10, int i10) {
        return i10 <= this.tB;
    }

    @Override // com.bytedance.sdk.openadsdk.ZYk.oJ
    protected void oJ(List<File> list) {
        if (this.ex) {
            ex(list);
            this.ex = false;
            return;
        }
        tB(list);
    }

    public ZYk(int i10, int i11, boolean z10) {
        this.ZYk = 15;
        this.tB = 3;
        if (i10 > 0) {
            this.ZYk = i10;
            this.tB = i11;
            this.ex = z10;
            return;
        }
        throw new IllegalArgumentException("Max count must be positive number!");
    }
}
