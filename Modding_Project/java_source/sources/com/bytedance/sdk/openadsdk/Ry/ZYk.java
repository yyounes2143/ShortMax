package com.bytedance.sdk.openadsdk.Ry;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.Pfn;
import com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.kkU;
import com.bytedance.sdk.component.ZYk.oJ.so;
import com.bytedance.sdk.component.cFZ.oJ;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.openadsdk.Ry.oJ.tB;
import com.bytedance.sdk.openadsdk.core.jr;
import com.bytedance.sdk.openadsdk.core.model.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex.ex;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile ZYk oJ;
    private final com.bytedance.sdk.component.cFZ.oJ ZYk;
    private final Map<String, JSONObject> ex = new HashMap();
    private tB tB;

    /* loaded from: classes3.dex */
    public class oJ implements so {
        public oJ() {
        }

        @Override // com.bytedance.sdk.component.ZYk.oJ.so
        public WcQ oJ(so.oJ oJVar) throws IOException {
            JSONObject oJ;
            BTZ oJ2 = oJVar.oJ();
            if (oJ2.ZYk() != null && !oJ2.ZYk().ex().isEmpty()) {
                List<String> ex = oJ2.ZYk().ex();
                StringBuilder sb2 = new StringBuilder();
                for (String str : ex) {
                    sb2.append(DomExceptionUtils.SEPARATOR);
                    sb2.append(str);
                }
                String sb3 = sb2.toString();
                if (!TextUtils.isEmpty(sb3) && sb3.equals("/monitor/collect/c/session")) {
                    return oJVar.oJ(oJ2);
                }
            }
            BTZ.oJ jFA = oJ2.jFA();
            String ZYk = ex.ZYk("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
            if (!TextUtils.isEmpty(ZYk) && (oJ = ZYk.this.oJ(ZYk)) != null) {
                jFA.ZYk("transfer-param", oJ.optString("message"));
                if (oJ.optInt("cypher") == 4) {
                    jFA.ZYk("cypher", "4");
                } else {
                    jFA.ZYk("cypher", "3");
                }
            }
            try {
                jFA.ZYk("x-pangle-target-idc", PiB.ib().JJ());
            } catch (Throwable unused) {
            }
            return oJVar.oJ(jFA.ZYk());
        }
    }

    private ZYk(Context context) {
        int oJ2 = oJ();
        oJ.C0174oJ c0174oJ = new oJ.C0174oJ();
        long j10 = oJ2;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.bytedance.sdk.component.cFZ.oJ oJ3 = c0174oJ.oJ(j10, timeUnit).ZYk(j10, timeUnit).tB(j10, timeUnit).oJ(new oJ()).oJ(true).oJ();
        this.ZYk = oJ3;
        com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.oJ.oJ(new kkU() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.1
            @Override // com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.kkU
            public boolean ZYk() {
                return PiB.ib().yQF();
            }

            @Override // com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.kkU
            public ExecutorService oJ() {
                if (PiB.ib().yQF()) {
                    return ofl.dLZ();
                }
                return null;
            }
        });
        com.bytedance.sdk.component.cFZ.oJ.oJ(new Pfn() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.2
            @Override // com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.Pfn
            public boolean oJ() {
                if (com.bytedance.sdk.openadsdk.oq.oJ.oJ("net_http_protocol", 0) != 1) {
                    return false;
                }
                return true;
            }
        });
        com.bytedance.sdk.component.ZYk.oJ.ex oJ4 = oJ3.ba().oJ();
        if (oJ4 != null) {
            oJ4.oJ(32);
        }
    }

    private void Pfn() {
        if (this.tB == null) {
            this.tB = new tB();
        }
    }

    public static ZYk ZYk() {
        if (oJ == null) {
            synchronized (ZYk.class) {
                try {
                    if (oJ == null) {
                        oJ = new ZYk(si.oJ());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public tB ex() {
        Pfn();
        return this.tB;
    }

    public com.bytedance.sdk.component.cFZ.oJ tB() {
        return this.ZYk;
    }

    public int oJ() {
        try {
            return com.bytedance.sdk.openadsdk.oq.oJ.oJ("net_time_out", 10000);
        } catch (Throwable unused) {
            return 10000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject oJ(String str) {
        JSONObject jSONObject = this.ex.get(str);
        if (jSONObject == null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ipv6", str);
            } catch (JSONException unused) {
            }
            JSONObject encryptType4 = PangleEncryptManager.encryptType4(jSONObject2, new jr(PangleEncryptConstant.CryptDataScene.UNKNOWN));
            this.ex.put(str, encryptType4);
            return encryptType4;
        }
        return jSONObject;
    }

    public void oJ(String str, int i10, int i11, ImageView imageView, cY cYVar) {
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(str).oJ(i10).ZYk(i11).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(cYVar, str, imageView));
    }

    public void oJ(int i10, final ImageView imageView, final cY cYVar) {
        if (cYVar == null || !TextUtils.isEmpty(cYVar.eZI())) {
            com.bytedance.sdk.openadsdk.jFA.ex.oJ(cYVar.eZI()).oJ(i10).ZYk(i10).Pfn(cdg.Pfn(si.oJ())).ex(cdg.tB(si.oJ())).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(cYVar, cYVar.eZI(), imageView));
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (imageView.getDrawable() != null) {
                            Intent intent = new Intent();
                            String si2 = cYVar.si();
                            intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
                            intent.setData(Uri.parse(si2));
                            try {
                                com.bytedance.sdk.component.utils.ZYk.oJ(si.oJ(), intent, null);
                            } catch (Exception unused) {
                            }
                        }
                    }
                });
            }
        }
    }

    public void oJ(Ry ry, ImageView imageView, cY cYVar) {
        if (ry == null || TextUtils.isEmpty(ry.oJ()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(cYVar, ry.oJ(), imageView));
    }

    public void oJ(Ry ry, ImageView imageView, cY cYVar, eZI ezi) {
        if (ry == null || TextUtils.isEmpty(ry.oJ()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(ry).tB(1).oJ(com.bytedance.sdk.openadsdk.jFA.tB.oJ(cYVar, ry.oJ(), imageView, ezi));
    }

    public void oJ(String str, View view) {
        if (view == null || TextUtils.isEmpty(str)) {
            return;
        }
        final WeakReference weakReference = new WeakReference(view);
        com.bytedance.sdk.openadsdk.jFA.ex.oJ(str).tB(2).oJ(new com.bytedance.sdk.component.Pfn.so() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.5
            @Override // com.bytedance.sdk.component.Pfn.so
            public Bitmap oJ(Bitmap bitmap) {
                View view2 = (View) weakReference.get();
                if (view2 == null) {
                    return null;
                }
                return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(view2.getContext(), bitmap, 10);
            }
        }).oJ(new eZI() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.4
            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(int i10, String str2, Throwable th2) {
            }

            @Override // com.bytedance.sdk.component.Pfn.eZI
            public void oJ(dLZ dlz) {
                final View view2;
                if (dlz == null) {
                    return;
                }
                final Object ZYk = dlz.ZYk();
                if (!(ZYk instanceof Bitmap) || (view2 = (View) weakReference.get()) == null) {
                    return;
                }
                if (ofl.ba()) {
                    if (view2 instanceof ImageView) {
                        ((ImageView) view2).setImageDrawable(new BitmapDrawable(view2.getResources(), (Bitmap) ZYk));
                        return;
                    } else {
                        view2.setBackground(new BitmapDrawable(view2.getResources(), (Bitmap) ZYk));
                        return;
                    }
                }
                view2.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Ry.ZYk.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        View view3 = view2;
                        if (view3 instanceof ImageView) {
                            ((ImageView) view3).setImageDrawable(new BitmapDrawable(view2.getResources(), (Bitmap) ZYk));
                        } else {
                            view3.setBackground(new BitmapDrawable(view2.getResources(), (Bitmap) ZYk));
                        }
                    }
                });
            }
        });
    }
}
