package com.bytedance.sdk.component.Pfn.ex.tB.oJ.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.cFZ;
import com.bytedance.sdk.component.utils.kkU;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    private File ZYk;
    private int oJ;

    private oJ(int i10, File file) {
        this.oJ = i10;
        this.ZYk = file;
    }

    private List<File> ZYk(File file) {
        List<File> oJ = oJ(file);
        if (oJ == null || oJ.isEmpty()) {
            return null;
        }
        final HashMap hashMap = new HashMap();
        for (File file2 : oJ) {
            hashMap.put(file2, Long.valueOf(file2.lastModified()));
        }
        Collections.sort(oJ, new Comparator<File>() { // from class: com.bytedance.sdk.component.Pfn.ex.tB.oJ.oJ.oJ.1
            @Override // java.util.Comparator
            /* renamed from: oJ */
            public int compare(File file3, File file4) {
                if (file3 == null && file4 == null) {
                    return 0;
                }
                if (file3 == null) {
                    return 1;
                }
                if (file4 == null) {
                    return -1;
                }
                return Long.compare(((Long) hashMap.get(file4)).longValue(), ((Long) hashMap.get(file3)).longValue());
            }
        });
        return oJ;
    }

    private static void ex(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static oJ oJ(int i10, File file) {
        try {
            oJ oJVar = new oJ(i10, file);
            if (file != null) {
                file.mkdirs();
            }
            return oJVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void tB(File file) {
        if (file == null) {
            return;
        }
        try {
            cFZ.ZYk(file);
        } catch (Throwable unused) {
        }
    }

    private File tB(String str) {
        File file = this.ZYk;
        return new File(file, str + ".temp");
    }

    public synchronized InputStream oJ(String str) {
        FileInputStream fileInputStream;
        if (this.oJ <= 0) {
            return null;
        }
        File ZYk = ZYk(str);
        try {
            try {
                fileInputStream = new FileInputStream(ZYk);
            } catch (Throwable unused) {
                return null;
            }
        } catch (FileNotFoundException unused2) {
            fileInputStream = null;
        }
        try {
            tB(ZYk);
            return fileInputStream;
        } catch (FileNotFoundException unused3) {
            kkU.oJ(fileInputStream);
            return null;
        }
    }

    private File ZYk(String str) {
        return new File(this.ZYk, str);
    }

    public synchronized boolean oJ(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        if (this.oJ > 0 && str != null && bArr != null) {
            File tB = tB(str);
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(tB);
            } catch (FileNotFoundException unused) {
            } catch (Throwable unused2) {
            }
            try {
                fileOutputStream.write(bArr);
                if (tB.exists()) {
                    oJ(tB, ZYk(str), true);
                }
                kkU.oJ(fileOutputStream);
                List<File> oJ = oJ(this.ZYk);
                if (oJ != null) {
                    int size = oJ.size();
                    int i10 = this.oJ;
                    if (size > i10) {
                        oJ((int) (i10 * 0.7d));
                    }
                }
                return true;
            } catch (FileNotFoundException unused3) {
                fileOutputStream2 = fileOutputStream;
                File file = this.ZYk;
                if (file != null) {
                    file.mkdirs();
                }
                kkU.oJ(fileOutputStream2);
                List<File> oJ2 = oJ(this.ZYk);
                if (oJ2 != null) {
                    int size2 = oJ2.size();
                    int i11 = this.oJ;
                    if (size2 > i11) {
                        oJ((int) (i11 * 0.7d));
                    }
                }
                return false;
            } catch (Throwable unused4) {
                fileOutputStream2 = fileOutputStream;
                kkU.oJ(fileOutputStream2);
                List<File> oJ3 = oJ(this.ZYk);
                if (oJ3 != null) {
                    int size3 = oJ3.size();
                    int i12 = this.oJ;
                    if (size3 > i12) {
                        oJ((int) (i12 * 0.7d));
                    }
                }
                return false;
            }
        }
        return false;
    }

    private List<File> oJ(File file) {
        File[] listFiles;
        if (file != null) {
            try {
                if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length != 0) {
                    List<File> asList = Arrays.asList(listFiles);
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : asList) {
                        if (file2 != null && file2.isFile() && !TextUtils.isEmpty(file2.getName()) && !file2.getName().endsWith(".temp")) {
                            arrayList.add(file2);
                        }
                    }
                    return arrayList;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public synchronized void oJ(int i10) {
        try {
            if (i10 > this.oJ) {
                return;
            }
            List<File> ZYk = ZYk(this.ZYk);
            if (ZYk != null && ZYk.size() > i10) {
                while (i10 < ZYk.size()) {
                    File file = ZYk.get(i10);
                    if (file != null && file.exists()) {
                        file.delete();
                    }
                    i10++;
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void oJ(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            ex(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }
}
