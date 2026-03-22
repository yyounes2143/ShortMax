package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.common.oJ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import java.io.File;
import java.io.FileFilter;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile BTZ oJ;
    private final Context ZYk;
    private final oJ.C0194oJ tB;

    private BTZ(Context context) {
        Context applicationContext;
        if (context == null) {
            applicationContext = si.oJ();
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.ZYk = applicationContext;
        this.tB = new oJ.C0194oJ("sp_reward_video");
    }

    public com.bytedance.sdk.openadsdk.core.model.oJ ZYk(String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.model.oJ oJVar;
        long ex = this.tB.ex(str);
        boolean Pfn = this.tB.Pfn(str);
        boolean cFZ = this.tB.cFZ(str);
        int ZYk = Pfn.ZYk();
        if (System.currentTimeMillis() - ex < 10500000 && !Pfn && (!z10 || ZYk != 2 || !cFZ)) {
            try {
                String ZYk2 = this.tB.ZYk(str);
                if (!TextUtils.isEmpty(ZYk2)) {
                    JSONObject jSONObject = new JSONObject(ZYk2);
                    if (jSONObject.has("cypher")) {
                        jSONObject = si.tB().oJ(jSONObject);
                    }
                    if (jSONObject.has("creatives")) {
                        oJVar = com.bytedance.sdk.openadsdk.core.model.oJ.ZYk(jSONObject);
                    } else {
                        cY oJ2 = com.bytedance.sdk.openadsdk.core.ZYk.oJ(jSONObject);
                        com.bytedance.sdk.openadsdk.core.model.oJ oJVar2 = new com.bytedance.sdk.openadsdk.core.model.oJ();
                        oJVar2.oJ(oJ2);
                        oJVar = oJVar2;
                    }
                    if (oJVar != null && oJVar.Pfn()) {
                        Iterator<cY> it = oJVar.ex().iterator();
                        while (it.hasNext()) {
                            if (!oJ(it.next())) {
                                it.remove();
                            }
                        }
                        if (oJVar.Pfn() && oJVar.ba() != null) {
                            if (oJVar.ba().BHY() != null) {
                                return oJVar;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void oJ(String str, cY cYVar) {
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new").oJ(str, cYVar);
        } else if (TextUtils.isEmpty(str)) {
        } else {
            String tB = this.tB.tB(str);
            String iPr = cYVar != null ? cYVar.iPr() : "";
            if (TextUtils.isEmpty(tB) || TextUtils.isEmpty(iPr) || tB.equals(iPr)) {
                this.tB.so(str);
            }
        }
    }

    public void oJ() {
        File[] listFiles;
        String str;
        File[] listFiles2;
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new").oJ();
            return;
        }
        try {
            boolean cFZ = com.bytedance.sdk.openadsdk.core.jFA.cFZ("sp_reward_video");
            if (cFZ) {
                str = "files";
            } else {
                str = "shared_prefs";
            }
            File file = new File(this.ZYk.getDataDir(), str);
            if (file.exists() && file.isDirectory() && (listFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.BTZ.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains("sp_reward_video");
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : listFiles2) {
                    if (cFZ) {
                        try {
                            com.bytedance.sdk.component.utils.cFZ.tB(file2);
                        } catch (Throwable unused) {
                        }
                    } else {
                        this.ZYk.deleteSharedPreferences(file2.getName().replace(".xml", ""));
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            File cacheDir = this.ZYk.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (listFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.BTZ.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("reward_video_cache");
                    }
                    return false;
                }
            })) == null) {
                return;
            }
            for (File file3 : listFiles) {
                try {
                    com.bytedance.sdk.component.utils.cFZ.tB(file3);
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void oJ(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        cY ba2;
        if (oJVar == null || oJVar.ba() == null || !oJVar.ba().cMS()) {
            if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
                com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new").oJ(adSlot, oJVar);
            } else if (oJVar == null || oJVar.so() || adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm()) || (ba2 = oJVar.ba()) == null || ba2.ocG() == 2) {
            } else {
                String ZYk = oJVar.ZYk();
                synchronized (oJVar) {
                    try {
                        if (!oJVar.so()) {
                            this.tB.oJ(adSlot, oJVar.PiB().toString(), ZYk);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public static BTZ oJ(Context context) {
        if (oJ == null) {
            synchronized (BTZ.class) {
                try {
                    if (oJ == null) {
                        oJ = new BTZ(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public String oJ(String str, boolean z10) {
        com.bytedance.sdk.openadsdk.common.oJ oJ2 = com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new");
        String oJ3 = oJ2.oJ(str, 10500000L);
        if (z10 && !TextUtils.isEmpty(oJ3) && Pfn.ZYk() == 2 && oJ2.ex(str)) {
            return null;
        }
        return oJ3;
    }

    public boolean oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        return com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new").oJ(oJVar, true);
    }

    private boolean oJ(cY cYVar) {
        if (cYVar != null) {
            return Ln.tB(cYVar) || cYVar.ib() != null;
        }
        return false;
    }

    public void oJ(String str) {
        if (com.bytedance.sdk.openadsdk.utils.ZYk.oJ()) {
            com.bytedance.sdk.openadsdk.common.oJ.oJ("sp_reward_video_new").tB(str);
        } else {
            this.tB.ba(str);
        }
    }
}
