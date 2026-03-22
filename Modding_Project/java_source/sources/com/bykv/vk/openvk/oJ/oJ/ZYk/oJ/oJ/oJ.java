package com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public class oJ implements com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk {
    private String oJ = "video_reward_full";
    private String ZYk = "video_brand";
    private String tB = "video_splash";
    private String ex = "video_default";
    private String Pfn = null;

    /* renamed from: ba  reason: collision with root package name */
    private String f11001ba = null;
    private String cFZ = null;

    /* renamed from: so  reason: collision with root package name */
    private String f11002so = null;
    private String jFA = null;

    private List<com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ> ba() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ(new File(oJ()).listFiles(), com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.tB()));
        arrayList.add(new com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ(new File(ZYk()).listFiles(), com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk()));
        arrayList.add(new com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ(new File(Pfn()).listFiles(), com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ex()));
        arrayList.add(new com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ(new File(tB()).listFiles(), com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.Pfn()));
        return arrayList;
    }

    private Set<String> cFZ() {
        HashSet hashSet = new HashSet();
        for (com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ oJVar : com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.oJ.values()) {
            if (oJVar != null && oJVar.oJ() != null) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB oJ = oJVar.oJ();
                hashSet.add(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.ZYk(oJ.Pfn(), oJ.si()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.tB(oJ.Pfn(), oJ.si()).getAbsolutePath());
            }
        }
        for (com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.ZYk zYk : com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.tB.oJ.values()) {
            if (zYk != null && zYk.oJ() != null) {
                com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB oJ2 = zYk.oJ();
                hashSet.add(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.ZYk(oJ2.Pfn(), oJ2.si()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.tB(oJ2.Pfn(), oJ2.si()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    public String Pfn() {
        if (this.cFZ == null) {
            this.cFZ = this.Pfn + File.separator + this.ZYk;
            File file = new File(this.cFZ);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.cFZ;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public String ZYk() {
        if (this.f11002so == null) {
            this.f11002so = this.Pfn + File.separator + this.tB;
            File file = new File(this.f11002so);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f11002so;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public synchronized void ex() {
        try {
            Set<String> set = null;
            for (com.bykv.vk.openvk.oJ.oJ.oJ.oJ.oJ oJVar : ba()) {
                File[] oJ = oJVar.oJ();
                if (oJ != null && oJ.length >= oJVar.ZYk()) {
                    if (set == null) {
                        set = cFZ();
                    }
                    int ZYk = oJVar.ZYk() - 2;
                    if (ZYk < 0) {
                        ZYk = 0;
                    }
                    oJ(oJVar.oJ(), ZYk, set);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public void oJ(String str) {
        this.Pfn = str;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public String tB() {
        if (this.jFA == null) {
            this.jFA = this.Pfn + File.separator + this.ex;
            File file = new File(this.jFA);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.jFA;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public String oJ() {
        if (this.f11001ba == null) {
            this.f11001ba = this.Pfn + File.separator + this.oJ;
            File file = new File(this.f11001ba);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f11001ba;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public long ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        if (TextUtils.isEmpty(tBVar.Pfn()) || TextUtils.isEmpty(tBVar.si())) {
            return 0L;
        }
        return com.bykv.vk.openvk.oJ.oJ.ZYk.ex.ZYk.oJ(tBVar.Pfn(), tBVar.si());
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.oJ.ZYk
    public boolean oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        if (TextUtils.isEmpty(tBVar.Pfn()) || TextUtils.isEmpty(tBVar.si())) {
            return false;
        }
        return new File(tBVar.Pfn(), tBVar.si()).exists();
    }

    private static void oJ(File[] fileArr, int i10, Set<String> set) {
        if (i10 >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i10) {
                    List asList = Arrays.asList(fileArr);
                    Collections.sort(asList, new Comparator<File>() { // from class: com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.oJ.1
                        @Override // java.util.Comparator
                        /* renamed from: oJ */
                        public int compare(File file, File file2) {
                            int i11 = ((file2.lastModified() - file.lastModified()) > 0L ? 1 : ((file2.lastModified() - file.lastModified()) == 0L ? 0 : -1));
                            if (i11 == 0) {
                                return 0;
                            }
                            if (i11 < 0) {
                                return -1;
                            }
                            return 1;
                        }
                    });
                    while (i10 < asList.size()) {
                        File file = (File) asList.get(i10);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) asList.get(i10)).delete();
                        }
                        i10++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
