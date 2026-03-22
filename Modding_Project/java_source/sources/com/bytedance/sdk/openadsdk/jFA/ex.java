package com.bytedance.sdk.openadsdk.jFA;

import android.content.Context;
import com.bytedance.sdk.component.Pfn.QSm;
import com.bytedance.sdk.component.Pfn.awB;
import com.bytedance.sdk.component.Pfn.ex.tB.Pfn;
import com.bytedance.sdk.component.Pfn.oq;
import com.bytedance.sdk.component.Pfn.tB.Pfn;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.ba;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.utils.kkU;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.XAo;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.ttm.utils.AVLogger;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class ex {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class oJ {
        private static final awB ZYk = oJ(si.oJ());
        public static boolean oJ = true;
        private static int tB = 10;
        private static int ex = 15;
        private static int Pfn = 30;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.bytedance.sdk.openadsdk.jFA.ex$oJ$oJ  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0235oJ implements com.bytedance.sdk.component.Pfn.ex {
            private C0235oJ() {
            }

            @Override // com.bytedance.sdk.component.Pfn.ex
            /* renamed from: ZYk */
            public com.bytedance.sdk.component.Pfn.ZYk.tB oJ(com.bytedance.sdk.component.Pfn.Pfn pfn) {
                com.bytedance.sdk.component.Pfn.ZYk.ex exVar;
                dLZ ba2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().ba();
                BTZ ZYk = new BTZ.oJ().ZYk(pfn.oJ()).oJ().ZYk();
                WcQ wcQ = null;
                if (pfn.tB()) {
                    exVar = new com.bytedance.sdk.component.Pfn.ZYk.ex();
                } else {
                    exVar = null;
                }
                if (exVar != null) {
                    exVar.oJ(System.currentTimeMillis());
                }
                try {
                    wcQ = ba2.oJ(ZYk).ZYk();
                    if (exVar != null) {
                        exVar.ZYk(System.currentTimeMillis());
                    }
                    return new com.bytedance.sdk.component.Pfn.ZYk.tB(wcQ.tB(), wcQ.ba().ex(), "", oJ(pfn, wcQ));
                } catch (Throwable th2) {
                    try {
                        return oJ(exVar, th2);
                    } finally {
                        kkU.oJ(wcQ);
                    }
                }
            }

            private Map<String, String> oJ(com.bytedance.sdk.component.Pfn.Pfn pfn, WcQ wcQ) {
                if (pfn.ZYk()) {
                    ba cFZ = wcQ.cFZ();
                    HashMap hashMap = new HashMap();
                    int oJ = cFZ.oJ();
                    for (int i10 = 0; i10 < oJ; i10++) {
                        String oJ2 = cFZ.oJ(i10);
                        String ZYk = cFZ.ZYk(i10);
                        if (oJ2 != null) {
                            hashMap.put(oJ2, ZYk);
                        }
                    }
                    return hashMap;
                }
                return null;
            }

            private com.bytedance.sdk.component.Pfn.ZYk.tB oJ(com.bytedance.sdk.component.Pfn.ZYk.ex exVar, Throwable th2) {
                th2.getMessage();
                if (exVar != null) {
                    exVar.tB(System.currentTimeMillis());
                }
                com.bytedance.sdk.component.Pfn.ZYk.tB tBVar = new com.bytedance.sdk.component.Pfn.ZYk.tB(98765, th2, "net failed");
                tBVar.oJ(exVar);
                return tBVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static com.bytedance.sdk.component.Pfn.kkU ZYk(String str) {
            return oJ(ZYk.oJ(str).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())));
        }

        public static void oJ() {
            oJ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("image_config", "use_new_img", 1) == 1;
            tB = com.bytedance.sdk.openadsdk.oq.oJ.oJ("image_config", "bitmap_cache_count", 10);
            ex = com.bytedance.sdk.openadsdk.oq.oJ.oJ("image_config", "data_cache_count", 15);
            Pfn = com.bytedance.sdk.openadsdk.oq.oJ.oJ("image_config", "disk_cache_count", 30);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static com.bytedance.sdk.component.Pfn.kkU ZYk(Ry ry) {
            return oJ(ZYk.oJ(ry.oJ()).oJ(ry.ZYk()).ZYk(ry.tB()).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).oJ(ry.cFZ()));
        }

        private static awB oJ(Context context) {
            oJ();
            if (oJ) {
                return com.bytedance.sdk.component.Pfn.ex.tB.ZYk.oJ(context, new Pfn.oJ().oJ(new com.bytedance.sdk.component.Pfn.ex.tB.oJ.ZYk(0, tB, ex, Pfn, new File(CacheDirFactory.getImageCacheDir("image_p")))).oJ(com.bytedance.sdk.openadsdk.multipro.ZYk.tB()).oJ(new QSm() { // from class: com.bytedance.sdk.openadsdk.jFA.ex.oJ.2
                    @Override // com.bytedance.sdk.component.Pfn.QSm
                    public ExecutorService ZYk() {
                        return ofl.tB();
                    }

                    @Override // com.bytedance.sdk.component.Pfn.QSm
                    public ExecutorService oJ() {
                        return ofl.ZYk();
                    }
                }).oJ(new oq() { // from class: com.bytedance.sdk.openadsdk.jFA.ex.oJ.1
                    @Override // com.bytedance.sdk.component.Pfn.oq
                    public void oJ(int i10, String str) {
                        com.bytedance.sdk.openadsdk.awB.tB.oJ(str, true);
                    }
                }).oJ(new C0235oJ()).oJ());
            }
            return com.bytedance.sdk.component.Pfn.tB.ZYk.oJ(context, new Pfn.oJ().oJ(new com.bytedance.sdk.component.Pfn.tB.oJ.oJ(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, (int) AVLogger.LEVEL_LOG_FATAL), 10485760), 41943040L, new File(CacheDirFactory.getImageCacheDir("image")))).oJ(com.bytedance.sdk.openadsdk.multipro.ZYk.tB()).oJ(new QSm() { // from class: com.bytedance.sdk.openadsdk.jFA.ex.oJ.4
                @Override // com.bytedance.sdk.component.Pfn.QSm
                public ExecutorService ZYk() {
                    return null;
                }

                @Override // com.bytedance.sdk.component.Pfn.QSm
                public ExecutorService oJ() {
                    return ofl.ZYk();
                }
            }).oJ(new oq() { // from class: com.bytedance.sdk.openadsdk.jFA.ex.oJ.3
                @Override // com.bytedance.sdk.component.Pfn.oq
                public void oJ(int i10, String str) {
                    com.bytedance.sdk.openadsdk.awB.tB.oJ(str, false);
                }
            }).oJ(new C0235oJ()).oJ());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static InputStream ZYk(String str, String str2) {
            return ZYk.oJ(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean ZYk(String str, String str2, String str3) {
            return ZYk.oJ(str, str2, str3);
        }

        private static com.bytedance.sdk.component.Pfn.kkU oJ(com.bytedance.sdk.component.Pfn.kkU kku) {
            return XAo.oJ() ? kku.oJ(new Pfn()) : kku;
        }
    }

    public static boolean ZYk() {
        return oJ.oJ;
    }

    public static com.bytedance.sdk.component.Pfn.kkU oJ(String str) {
        return oJ.ZYk(str);
    }

    public static com.bytedance.sdk.component.Pfn.kkU oJ(Ry ry) {
        return oJ.ZYk(ry);
    }

    public static InputStream oJ(String str, String str2) {
        return oJ.ZYk(str, str2);
    }

    public static boolean oJ(String str, String str2, String str3) {
        return oJ.ZYk(str, str2, str3);
    }

    public static awB oJ() {
        return oJ.ZYk;
    }
}
