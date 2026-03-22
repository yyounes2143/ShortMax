package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class kkU extends com.bytedance.adsdk.ZYk.ba {
    private String ZYk;
    private Map<String, Bitmap> oJ;

    /* loaded from: classes3.dex */
    private static class oJ implements com.bytedance.sdk.component.Pfn.eZI {
        private final com.bytedance.adsdk.ZYk.kkU ZYk;
        private final Map<String, Bitmap> ex;
        private final WeakReference<kkU> oJ;
        private final String tB;

        public oJ(kkU kku, com.bytedance.adsdk.ZYk.kkU kku2, String str, Map<String, Bitmap> map) {
            this.oJ = new WeakReference<>(kku);
            this.ZYk = kku2;
            this.tB = str;
            this.ex = map;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Object ZYk = dlz.ZYk();
            if (ZYk instanceof Bitmap) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap((Bitmap) ZYk, this.ZYk.oJ(), this.ZYk.ZYk(), false);
                this.ex.put(this.tB, createScaledBitmap);
                kkU kku = this.oJ.get();
                if (kku != null) {
                    kku.oJ(this.ZYk.so(), createScaledBitmap);
                }
            }
        }
    }

    public kkU(Context context) {
        super(context);
        this.oJ = new HashMap();
    }

    public void setImageLottieTosPath(String str) {
        this.ZYk = str;
    }

    public void so() {
        if (TextUtils.isEmpty(this.ZYk)) {
            return;
        }
        setProgress(0.0f);
        oJ(true);
        setAnimationFromUrl(this.ZYk);
        setImageAssetDelegate(new com.bytedance.adsdk.ZYk.ex() { // from class: com.bytedance.sdk.component.adexpress.ba.kkU.1
            @Override // com.bytedance.adsdk.ZYk.ex
            public Bitmap oJ(final com.bytedance.adsdk.ZYk.kkU kku) {
                final String so2 = kku.so();
                String kkU = kku.kkU();
                String jFA = kku.jFA();
                if (TextUtils.equals(so2, "image_0") && TextUtils.equals(jFA, "Lark20201123-180048_2.png")) {
                    jFA = "hand.png";
                }
                Bitmap bitmap = (Bitmap) kkU.this.oJ.get(so2);
                if (bitmap != null) {
                    return bitmap;
                }
                if (TextUtils.isEmpty(kkU) || !TextUtils.isEmpty(jFA)) {
                    if (!TextUtils.isEmpty(jFA) && TextUtils.isEmpty(kkU)) {
                        kkU = jFA;
                    } else if (!TextUtils.isEmpty(jFA) && !TextUtils.isEmpty(kkU)) {
                        kkU = kkU + jFA;
                    } else {
                        kkU = "";
                    }
                }
                if (TextUtils.isEmpty(kkU)) {
                    return null;
                }
                com.bytedance.sdk.component.Pfn.kkU oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().Pfn().oJ(kkU).tB(2).oJ(new com.bytedance.sdk.component.Pfn.so() { // from class: com.bytedance.sdk.component.adexpress.ba.kkU.1.1
                    @Override // com.bytedance.sdk.component.Pfn.so
                    public Bitmap oJ(Bitmap bitmap2) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, kku.oJ(), kku.ZYk(), false);
                        kkU.this.oJ.put(so2, createScaledBitmap);
                        return createScaledBitmap;
                    }
                });
                kkU kku2 = kkU.this;
                oJ2.oJ(new oJ(kku2, kku, so2, kku2.oJ));
                return (Bitmap) kkU.this.oJ.get(so2);
            }
        });
        oJ();
    }

    public void setAnimationsLoop(boolean z10) {
    }

    public void setData(Map<String, String> map) {
    }

    public void setLottieAdDescMaxLength(int i10) {
    }

    public void setLottieAdTitleMaxLength(int i10) {
    }

    public void setLottieAppNameMaxLength(int i10) {
    }
}
