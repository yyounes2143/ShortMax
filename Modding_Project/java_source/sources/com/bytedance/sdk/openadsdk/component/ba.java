package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.component.Pfn.kkU;
import com.bytedance.sdk.component.Pfn.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.common.oJ;
import com.bytedance.sdk.openadsdk.core.Id;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.HL;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.nke;
import com.bytedance.sdk.openadsdk.core.oq;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.si;
import com.bytedance.sdk.openadsdk.utils.wd;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private static String ZYk = "openad_image_cache";
    private static String oJ = "/openad_image_cache";
    private static volatile ba tB;
    private final Id<com.bytedance.sdk.openadsdk.ex.oJ> Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final Context f12970ba;
    private final Map<String, AtomicInteger> cFZ = new ConcurrentHashMap();
    private final com.bytedance.sdk.openadsdk.ZYk.ZYk ex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ();

        void oJ(int i10, String str);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();

        void oJ(@Nullable com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk);
    }

    /* loaded from: classes3.dex */
    public interface tB {
        void oJ(Object obj);
    }

    private ba(Context context) {
        if (context != null) {
            this.f12970ba = context.getApplicationContext();
        } else {
            this.f12970ba = si.oJ();
        }
        this.ex = new com.bytedance.sdk.openadsdk.ZYk.ZYk(10, 8, true);
        this.Pfn = si.tB();
        if (com.bytedance.sdk.openadsdk.jFA.ex.ZYk()) {
            oJ += "_p";
            ZYk += "_p";
        }
        com.bytedance.sdk.openadsdk.common.oJ.oJ("tt_openad_materialMeta_new", new oJ.C0194oJ("tt_openad_materialMeta_new") { // from class: com.bytedance.sdk.openadsdk.component.ba.1
            @Override // com.bytedance.sdk.openadsdk.common.oJ.C0194oJ
            public String ZYk(String str) {
                return com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tt_openad_materialMeta_new", "material".concat(String.valueOf(str)), null);
            }

            @Override // com.bytedance.sdk.openadsdk.common.oJ.C0194oJ
            protected String oJ(String str) {
                return "tt_openad_materialMeta_new";
            }

            @Override // com.bytedance.sdk.openadsdk.common.oJ.C0194oJ
            public void oJ(AdSlot adSlot, String str, String str2) {
                com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta_new", "material".concat(String.valueOf(adSlot.getCodeId())), str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(AdSlot adSlot) {
        AtomicInteger atomicInteger = this.cFZ.get(adSlot.getCodeId());
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
        } else {
            atomicInteger.decrementAndGet();
        }
        this.cFZ.put(adSlot.getCodeId(), atomicInteger);
    }

    @Nullable
    public cY Pfn(int i10) {
        String ZYk2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("tt_openad_materialMeta", "material".concat(String.valueOf(i10)), null);
        if (!TextUtils.isEmpty(ZYk2)) {
            try {
                JSONObject oJ2 = si.tB().oJ(new JSONObject(ZYk2));
                if (oJ2 != null && oJ2.has("creatives")) {
                    return null;
                }
                return com.bytedance.sdk.openadsdk.core.ZYk.oJ(oJ2);
            } catch (Exception e10) {
                QSm.tB("TTAppOpenAdCacheManager", e10.getMessage());
            }
        }
        return null;
    }

    public void ba(int i10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta_new", "material".concat(String.valueOf(i10)));
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta", "material".concat(String.valueOf(i10)));
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "material_expiration_time".concat(String.valueOf(i10)));
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "video_has_cached".concat(String.valueOf(i10)));
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "image_has_cached".concat(String.valueOf(i10)));
    }

    @Nullable
    public cY ex(int i10) {
        cY Pfn = Pfn(i10);
        long oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "material_expiration_time".concat(String.valueOf(i10)), -1L);
        if (System.currentTimeMillis() / 1000 < oJ2 && Pfn != null) {
            return Pfn;
        }
        if (Pfn != null || oJ2 != -1) {
            ba(i10);
            if (Pfn != null) {
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(Pfn);
                return null;
            }
            return null;
        }
        return null;
    }

    public String tB(int i10) {
        String ZYk2 = com.bytedance.sdk.openadsdk.common.oJ.oJ("tt_openad_materialMeta_new").ZYk(String.valueOf(i10));
        long oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "material_expiration_time".concat(String.valueOf(i10)), -1L);
        if (System.currentTimeMillis() / 1000 < oJ2) {
            return ZYk2;
        }
        if (oJ2 != -1) {
            ba(i10);
            oJ(ZYk2);
            return null;
        }
        return null;
    }

    public static ba oJ(Context context) {
        if (tB == null) {
            synchronized (ba.class) {
                try {
                    if (tB == null) {
                        tB = new ba(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return tB;
    }

    private void ZYk(@NonNull final cY cYVar, final AdSlot adSlot, final nke nkeVar, final com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        final int uv = cYVar.uv();
        oJ(cYVar, nkeVar, new oJ() { // from class: com.bytedance.sdk.openadsdk.component.ba.10
            @Override // com.bytedance.sdk.openadsdk.component.ba.oJ
            public void oJ(com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
                com.bytedance.sdk.openadsdk.component.Pfn.oJ oJVar2 = new com.bytedance.sdk.openadsdk.component.Pfn.oJ(uv, cYVar, oJVar);
                ba.this.oJ(oJVar2);
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(oJVar2.ZYk(), 1, nkeVar);
                ba.this.ZYk(adSlot);
            }

            @Override // com.bytedance.sdk.openadsdk.component.ba.oJ
            public void oJ() {
                ba.this.ZYk(adSlot);
            }
        });
    }

    public void ZYk(int i10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "image_has_cached".concat(String.valueOf(i10)), Boolean.TRUE);
    }

    private int tB(AdSlot adSlot) {
        StringBuilder sb2 = new StringBuilder("material_expiration_time");
        sb2.append(adSlot.getCodeId());
        return com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", sb2.toString(), -1L) == -1 ? 0 : 1;
    }

    public String ZYk() {
        String name = new File(CacheDirFactory.getRootDir()).getName();
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            return name + DomExceptionUtils.SEPARATOR + ZYk + DomExceptionUtils.SEPARATOR;
        }
        return name + DomExceptionUtils.SEPARATOR + oJ + DomExceptionUtils.SEPARATOR;
    }

    public static void oJ(cY cYVar, tB tBVar) {
        oJ(cYVar, tBVar, 0);
    }

    public static void oJ(cY cYVar, final tB tBVar, final int i10) {
        String kkU = cYVar.ib().kkU();
        if (TextUtils.isEmpty(kkU)) {
            return;
        }
        kkU ex = com.bytedance.sdk.openadsdk.jFA.ex.oJ(kkU).oJ(cYVar.ib().tB()).ZYk(cYVar.ib().ZYk()).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ()));
        if (i10 > 0 && Build.VERSION.SDK_INT >= 26) {
            ex.tB(2).oJ(new so() { // from class: com.bytedance.sdk.openadsdk.component.ba.5
                @Override // com.bytedance.sdk.component.Pfn.so
                public Bitmap oJ(Bitmap bitmap) {
                    return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(si.oJ(), bitmap, i10);
                }
            });
        } else {
            ex.tB(1);
        }
        ex.oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, kkU, new eZI() { // from class: com.bytedance.sdk.openadsdk.component.ba.6
            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(int i11, String str, @Nullable Throwable th2) {
            }

            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(dLZ dlz) {
                tB tBVar2;
                if (dlz == null || dlz.ZYk() == null || dlz.tB() == null || (tBVar2 = tB.this) == null) {
                    return;
                }
                tBVar2.oJ(dlz.ZYk());
            }
        }));
    }

    public void oJ(final AdSlot adSlot) {
        if (adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm())) {
            return;
        }
        AtomicInteger atomicInteger = this.cFZ.get(adSlot.getCodeId());
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
        }
        if (atomicInteger.get() + tB(adSlot) > 0) {
            return;
        }
        atomicInteger.incrementAndGet();
        this.cFZ.put(adSlot.getCodeId(), atomicInteger);
        final nke nkeVar = new nke();
        nkeVar.oJ(wd.ZYk());
        HL hl2 = new HL();
        hl2.dLZ = nkeVar;
        hl2.ex = 2;
        hl2.jFA = 2;
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            this.Pfn.oJ(adSlot, hl2, 3, (com.bytedance.sdk.openadsdk.core.QSm) new oq() { // from class: com.bytedance.sdk.openadsdk.component.ba.7
                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    ba.this.ZYk(adSlot);
                }

                @Override // com.bytedance.sdk.openadsdk.core.oq, com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                    ba.this.oJ(oJVar, tBVar, adSlot, nkeVar);
                }
            });
        } else {
            this.Pfn.oJ(adSlot, hl2, 3, new Id.oJ() { // from class: com.bytedance.sdk.openadsdk.component.ba.8
                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(int i10, String str) {
                    ba.this.ZYk(adSlot);
                }

                @Override // com.bytedance.sdk.openadsdk.core.Id.oJ
                public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar) {
                    ba.this.oJ(oJVar, tBVar, adSlot, nkeVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar, AdSlot adSlot, nke nkeVar) {
        if (oJVar != null && oJVar.ex() != null && !oJVar.ex().isEmpty()) {
            cY cYVar = oJVar.ex().get(0);
            if (cYVar != null && cYVar.Xe()) {
                com.bytedance.sdk.openadsdk.component.Pfn.oJ oJVar2 = new com.bytedance.sdk.openadsdk.component.Pfn.oJ(cYVar.uv(), cYVar, oJVar);
                oJ(oJVar2);
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(oJVar2.ZYk(), 1, nkeVar);
                ZYk(adSlot);
                return;
            } else if (cY.Pfn(cYVar)) {
                oJ(cYVar, adSlot, nkeVar, oJVar);
                return;
            } else {
                ZYk(cYVar, adSlot, nkeVar, oJVar);
                return;
            }
        }
        tBVar.oJ(-3);
        tBVar.tB(2);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
    }

    private void oJ(@NonNull final cY cYVar, final AdSlot adSlot, final nke nkeVar, final com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        final int uv = cYVar.uv();
        oJ(cYVar, adSlot, nkeVar, new ZYk() { // from class: com.bytedance.sdk.openadsdk.component.ba.9
            @Override // com.bytedance.sdk.openadsdk.component.ba.ZYk
            public void oJ() {
                com.bytedance.sdk.openadsdk.component.Pfn.oJ oJVar2 = new com.bytedance.sdk.openadsdk.component.Pfn.oJ(uv, cYVar, oJVar);
                ba.this.oJ(oJVar2);
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(oJVar2.ZYk(), 1, nkeVar);
                ba.this.ZYk(adSlot);
            }

            @Override // com.bytedance.sdk.openadsdk.component.ba.ZYk
            public void oJ(int i10, String str) {
                ba.this.ZYk(adSlot);
            }
        });
    }

    public void oJ(@NonNull final cY cYVar, AdSlot adSlot, final nke nkeVar, final ZYk zYk) {
        final wd ZYk2 = wd.ZYk();
        final int uv = cYVar.uv();
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
        String dLZ = ib2.dLZ();
        String WcQ = ib2.WcQ();
        if (TextUtils.isEmpty(WcQ)) {
            WcQ = com.bytedance.sdk.component.utils.Pfn.oJ(dLZ);
        }
        final File oJ2 = com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(WcQ);
        if (oJ2.exists()) {
            com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(oJ2);
            oJ(uv);
            long ex = ZYk2.ex();
            if (nkeVar != null) {
                nkeVar.oJ(ex);
                nkeVar.oJ(1);
            }
            zYk.oJ();
            oJ(cYVar, (tB) null);
        } else if (si.ex().jr(String.valueOf(uv)) && !Ry.ex(si.oJ())) {
            zYk.oJ(100, "OnlyWifi");
        } else {
            com.bytedance.sdk.openadsdk.core.BTZ.oJ.ZYk oJ3 = cY.oJ(oJ2.getParent(), cYVar);
            oJ3.oJ("material_meta", cYVar);
            oJ3.oJ("ad_slot", adSlot);
            com.bytedance.sdk.openadsdk.core.BTZ.Pfn.oJ.oJ(oJ3, new oJ.InterfaceC0133oJ() { // from class: com.bytedance.sdk.openadsdk.component.ba.11
                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
                    ba.this.oJ(uv);
                    long ex2 = ZYk2.ex();
                    com.bytedance.sdk.openadsdk.component.ex.oJ.ZYk(cYVar, ex2, true);
                    nke nkeVar2 = nkeVar;
                    if (nkeVar2 != null) {
                        nkeVar2.oJ(ex2);
                        nkeVar.oJ(2);
                    }
                    zYk.oJ();
                    ba.oJ(cYVar, (tB) null);
                }

                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10, String str) {
                    long ex2 = ZYk2.ex();
                    com.bytedance.sdk.openadsdk.component.ex.oJ.ZYk(cYVar, ex2, false);
                    nke nkeVar2 = nkeVar;
                    if (nkeVar2 != null) {
                        nkeVar2.oJ(ex2);
                    }
                    zYk.oJ(i10, str);
                    try {
                        if (oJ2.exists() && oJ2.isFile()) {
                            com.bytedance.sdk.component.utils.cFZ.tB(oJ2);
                        }
                    } catch (Throwable unused) {
                    }
                }

                @Override // com.bykv.vk.openvk.oJ.oJ.oJ.Pfn.oJ.InterfaceC0133oJ
                public void ZYk(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar, int i10) {
                }
            });
        }
    }

    public void oJ(final cY cYVar, final nke nkeVar, final oJ oJVar) {
        final wd ZYk2 = wd.ZYk();
        final int uv = cYVar.uv();
        com.bytedance.sdk.openadsdk.core.model.Ry ry = cYVar.yB().get(0);
        String cFZ = ry.cFZ();
        String oJ2 = ry.oJ();
        int ZYk3 = ry.ZYk();
        int tB2 = ry.tB();
        String oJ3 = TextUtils.isEmpty(cFZ) ? com.bytedance.sdk.component.utils.Pfn.oJ(oJ2) : cFZ;
        if (TextUtils.isEmpty(oJ3)) {
            if (oJVar != null) {
                oJVar.oJ();
                return;
            }
            return;
        }
        File ZYk4 = com.bytedance.sdk.openadsdk.component.cFZ.oJ.ZYk(oJ3);
        if (oJ(oJ2, cFZ)) {
            ZYk(uv);
            long ex = ZYk2.ex();
            if (nkeVar != null) {
                nkeVar.oJ(ex);
                nkeVar.oJ(1);
            }
            oJVar.oJ(null);
            return;
        }
        com.bytedance.sdk.openadsdk.utils.si.oJ(new com.bytedance.sdk.openadsdk.Ry.oJ(oJ2, ry.cFZ()), ZYk3, tB2, new si.oJ() { // from class: com.bytedance.sdk.openadsdk.component.ba.12
            @Override // com.bytedance.sdk.openadsdk.utils.si.oJ
            @MainThread
            public void oJ(@NonNull com.bytedance.sdk.openadsdk.Ry.oJ.ZYk zYk) {
                if (zYk.Pfn()) {
                    ba.this.ZYk(uv);
                    long ex2 = ZYk2.ex();
                    com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(cYVar, ex2, true);
                    nke nkeVar2 = nkeVar;
                    if (nkeVar2 != null) {
                        nkeVar2.oJ(ex2);
                        nkeVar.oJ(2);
                    }
                    oJVar.oJ(zYk);
                    return;
                }
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(cYVar, ZYk2.ex(), false);
                oJVar.oJ();
            }

            @Override // com.bytedance.sdk.openadsdk.utils.si.oJ
            @MainThread
            public void oJ() {
                com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(cYVar, ZYk2.ex(), false);
                oJVar.oJ();
            }
        }, ZYk4.getParent());
    }

    public void oJ(int i10) {
        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "video_has_cached".concat(String.valueOf(i10)), Boolean.TRUE);
    }

    public void oJ(final com.bytedance.sdk.openadsdk.component.Pfn.oJ oJVar) {
        WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.ba.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (oJVar.ZYk() != null && !cY.cFZ(oJVar.ZYk()) && !oJVar.ZYk().cMS()) {
                        long Vh = oJVar.ZYk().Vh();
                        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad", "material_expiration_time" + oJVar.oJ(), Long.valueOf(Vh));
                        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
                            com.bytedance.sdk.openadsdk.common.oJ.oJ("tt_openad_materialMeta_new").oJ(oJVar.ZYk().BHY(), oJVar.tB());
                            return;
                        }
                        String jSONObject = com.bytedance.sdk.component.utils.oJ.oJ(oJVar.ZYk().mf()).toString();
                        com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta", "material" + oJVar.oJ(), jSONObject);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void oJ(final String str) {
        ofl.oJ(new com.bytedance.sdk.component.so.so("opencache") { // from class: com.bytedance.sdk.openadsdk.component.ba.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.model.oJ ZYk2;
                try {
                    if (!TextUtils.isEmpty(str)) {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("cypher")) {
                            jSONObject = com.bytedance.sdk.openadsdk.core.si.tB().oJ(jSONObject);
                        }
                        if (jSONObject != null && jSONObject.has("creatives") && (ZYk2 = com.bytedance.sdk.openadsdk.core.model.oJ.ZYk(jSONObject)) != null && ZYk2.Pfn()) {
                            com.bytedance.sdk.openadsdk.component.ex.oJ.oJ(ZYk2.ba());
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Nullable
    public String oJ(cY cYVar) {
        if (cYVar != null && cYVar.ib() != null && !TextUtils.isEmpty(cYVar.ib().dLZ())) {
            String dLZ = cYVar.ib().dLZ();
            String WcQ = cYVar.ib().WcQ();
            if (TextUtils.isEmpty(WcQ)) {
                WcQ = com.bytedance.sdk.component.utils.Pfn.oJ(dLZ);
            }
            File oJ2 = com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(WcQ);
            if (oJ2.exists() && oJ2.isFile()) {
                return oJ2.getAbsolutePath();
            }
        }
        return null;
    }

    public boolean oJ(String str, String str2) {
        boolean z10;
        File file;
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = com.bytedance.sdk.component.utils.Pfn.oJ(str);
            }
            File ZYk2 = com.bytedance.sdk.openadsdk.component.cFZ.oJ.ZYk(str2);
            InputStream oJ2 = com.bytedance.sdk.openadsdk.jFA.ex.oJ(str, str2);
            if (oJ2 != null) {
                try {
                    oJ2.close();
                } catch (IOException e10) {
                    QSm.tB("TTAppOpenAdCacheManager", e10.getMessage());
                }
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                if (com.bytedance.sdk.openadsdk.jFA.ex.oJ(str, str2, ZYk2.getParent())) {
                    return true;
                }
                if (com.bytedance.sdk.openadsdk.jFA.ex.ZYk()) {
                    file = new File(ZYk2.getPath());
                } else {
                    file = new File(ZYk2.getPath() + ".0");
                }
                if (file.exists()) {
                    return true;
                }
            }
            return z10;
        } catch (Exception e11) {
            QSm.tB("TTAppOpenAdCacheManager", e11.getMessage());
            return false;
        }
    }

    public void oJ() {
        File[] listFiles;
        try {
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta");
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad_materialMeta_new");
            com.bytedance.sdk.openadsdk.multipro.ex.ex.oJ("tt_openad");
        } catch (Throwable unused) {
        }
        try {
            File cacheDir = this.f12970ba.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (listFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.ba.4
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    if (file == null) {
                        return false;
                    }
                    String name = file.getName();
                    if (!name.contains(ba.ZYk) && !name.contains("openad_video_cache")) {
                        return false;
                    }
                    return true;
                }
            })) == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    com.bytedance.sdk.component.utils.cFZ.tB(file);
                } catch (Throwable unused2) {
                }
            }
        } catch (Throwable unused3) {
        }
    }
}
