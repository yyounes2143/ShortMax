package com.bytedance.sdk.openadsdk.core.dLZ;

import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba {
    private cFZ ZYk;
    final Set<Pair<View, FriendlyObstructionPurpose>> oJ = new HashSet();

    private ba() {
        Pfn.oJ(si.oJ());
    }

    private Handler Pfn() {
        return com.bytedance.sdk.component.utils.jFA.ZYk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ba() {
        if (this.ZYk != null) {
            try {
                oJ((View) null, (FriendlyObstructionPurpose) null);
                this.ZYk.ZYk();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cFZ() {
        cFZ cfz = this.ZYk;
        if (cfz != null) {
            try {
                cfz.ex();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() {
        cFZ cfz = this.ZYk;
        if (cfz != null) {
            try {
                cfz.tB();
            } catch (Throwable unused) {
            }
        }
    }

    @UiThread
    public void ex() {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            so();
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.7
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.so();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(WebView webView) {
        try {
            if (this.ZYk == null) {
                this.ZYk = so.oJ(webView);
            }
        } catch (Throwable th2) {
            QSm.tB("createWebViewSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap hashMap = new HashMap();
            hashMap.put("scene", "createWebViewSession");
            hashMap.put("message", th2.getMessage());
            Pfn.oJ(hashMap);
        }
    }

    @UiThread
    public void tB() {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            cFZ();
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.6
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.cFZ();
                }
            });
        }
    }

    public static ba oJ() {
        return new ba();
    }

    @UiThread
    public void ZYk() {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ba();
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.4
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ba();
                }
            });
        }
    }

    @UiThread
    public void oJ(final WebView webView) {
        if (webView == null || this.ZYk != null) {
            return;
        }
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(webView);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.1
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(webView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(boolean z10, float f10) {
        if (this.ZYk != null) {
            try {
                oJ((View) null, (FriendlyObstructionPurpose) null);
                this.ZYk.oJ(z10, f10);
            } catch (Throwable unused) {
            }
        }
    }

    public void oJ(final View view, final cY cYVar) {
        if (this.ZYk != null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.ex NTC = cYVar.NTC();
        final Set<kkU> ZYk = NTC != null ? NTC.ZYk() : null;
        if (view == null || ZYk == null) {
            return;
        }
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            oJ(view, ZYk, cYVar);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.3
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.oJ(view, ZYk, cYVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        cFZ cfz = this.ZYk;
        try {
            if (cfz == null) {
                if (view == null || friendlyObstructionPurpose == null) {
                    return;
                }
                this.oJ.add(new Pair<>(view, friendlyObstructionPurpose));
                return;
            }
            if (view != null && friendlyObstructionPurpose != null) {
                cfz.oJ(view, friendlyObstructionPurpose);
            }
            if (this.oJ.size() > 0) {
                cfz.oJ(this.oJ);
                this.oJ.clear();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(View view, Set<kkU> set, cY cYVar) {
        try {
            if (this.ZYk == null) {
                this.ZYk = so.oJ(view, set);
                if (cYVar.Br()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, cYVar.ex(), "track_create", (JSONObject) null);
            }
        } catch (Throwable th2) {
            QSm.tB("createVideoSession failed : ".concat(String.valueOf(th2)), new Object[0]);
            HashMap hashMap = new HashMap();
            hashMap.put("scene", "createVideoSession");
            hashMap.put("message", th2.getMessage());
            Pfn.oJ(hashMap);
        }
    }

    public void ZYk(long j10, boolean z10) {
        cFZ cfz = this.ZYk;
        if (cfz != null) {
            try {
                cfz.oJ(((float) j10) / 1000.0f, z10);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(boolean z10) {
        cFZ cfz = this.ZYk;
        if (cfz != null) {
            try {
                cfz.oJ(z10);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(int i10) {
        cFZ cfz = this.ZYk;
        if (cfz != null) {
            try {
                cfz.ZYk(i10);
            } catch (Throwable unused) {
            }
        }
    }

    @UiThread
    public void oJ(final boolean z10, final float f10) {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(z10, f10);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.5
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(z10, f10);
                }
            });
        }
    }

    @UiThread
    public void oJ(@Nullable final View view, @Nullable final FriendlyObstructionPurpose friendlyObstructionPurpose) {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(view, friendlyObstructionPurpose);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.8
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(view, friendlyObstructionPurpose);
                }
            });
        }
    }

    @UiThread
    public void oJ(final long j10, final boolean z10) {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(j10, z10);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.9
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(j10, z10);
                }
            });
        }
    }

    @UiThread
    public void oJ(final boolean z10) {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(z10);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.10
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(z10);
                }
            });
        }
    }

    @UiThread
    public void oJ(final int i10) {
        if (com.bykv.vk.openvk.oJ.oJ.ZYk.ZYk.oJ.oJ()) {
            ZYk(i10);
        } else {
            Pfn().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ba.2
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.ZYk(i10);
                }
            });
        }
    }
}
