package com.bytedance.sdk.component.Pfn.ex.tB;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.Pfn.PiB;
import com.bytedance.sdk.component.Pfn.Ry;
import com.bytedance.sdk.component.Pfn.awB;
import com.bytedance.sdk.component.Pfn.ex.tB.tB;
import com.bytedance.sdk.component.Pfn.kkU;
import com.bytedance.sdk.component.utils.eZI;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
/* loaded from: classes3.dex */
public class ZYk implements awB {
    private volatile ba oJ;

    private ZYk() {
    }

    private void ZYk(Context context, PiB piB) {
        if (this.oJ != null) {
            Log.w("ImageLoader", "already init!");
        }
        if (piB == null) {
            piB = Pfn.oJ(context);
        }
        this.oJ = new ba(context, piB);
    }

    public static awB oJ(Context context, PiB piB) {
        ZYk zYk = new ZYk();
        zYk.ZYk(context, piB);
        return zYk;
    }

    @Override // com.bytedance.sdk.component.Pfn.awB
    public kkU oJ(String str) {
        return new tB.ZYk(this.oJ).tB(str);
    }

    @Override // com.bytedance.sdk.component.Pfn.awB
    public InputStream oJ(String str, String str2) {
        byte[] oJ;
        if (this.oJ != null) {
            if (TextUtils.isEmpty(str2)) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                str2 = eZI.oJ(str);
            }
            Ry ZYk = this.oJ.ZYk();
            if (ZYk != null && (oJ = ZYk.oJ(str2)) != null) {
                return new ByteArrayInputStream(oJ);
            }
            Collection<com.bytedance.sdk.component.Pfn.tB> tB = this.oJ.tB();
            if (tB != null) {
                for (com.bytedance.sdk.component.Pfn.tB tBVar : tB) {
                    InputStream oJ2 = tBVar.oJ(str2);
                    if (oJ2 != null) {
                        return oJ2;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Pfn.awB
    public boolean oJ(String str, String str2, String str3) {
        if (this.oJ == null || TextUtils.isEmpty(str3)) {
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            str2 = eZI.oJ(str);
        }
        com.bytedance.sdk.component.Pfn.tB oJ = this.oJ.oJ(str3);
        if (oJ != null) {
            return oJ.ZYk(str2);
        }
        return false;
    }
}
