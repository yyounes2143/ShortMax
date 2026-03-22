package com.bytedance.sdk.openadsdk.PiB;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.adjust.sdk.Constants;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.cFZ.ZYk;
import com.bytedance.sdk.openadsdk.core.awB;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.RZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ex;
import com.bytedance.sdk.openadsdk.core.widget.oJ.tB;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.oq;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static long ex = 3600000;
    private static volatile oJ oJ = null;
    private static int tB = 2;
    private LinkedHashMap<Integer, SoftReference<ba>> Pfn;
    private final Handler ZYk;

    public oJ() {
        tB = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pre_render_count", 2);
        long oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("pre_render_duration", (int) Constants.ONE_HOUR);
        ex = oJ2;
        if (tB <= 0) {
            tB = 2;
        }
        if (oJ2 <= 0) {
            ex = 3600000L;
        }
        this.Pfn = new LinkedHashMap<>();
        this.ZYk = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                SoftReference softReference;
                String tag;
                int i10 = message.what;
                if (oJ.this.Pfn != null && (softReference = (SoftReference) oJ.this.Pfn.get(Integer.valueOf(i10))) != null) {
                    ba baVar = (ba) softReference.get();
                    cY cYVar = new cY();
                    oJ oJVar = oJ.this;
                    if (baVar == null) {
                        tag = "";
                    } else {
                        tag = baVar.getTag();
                    }
                    oJVar.oJ(i10, 2, cYVar, tag);
                    return false;
                }
                return false;
            }
        });
    }

    public static boolean tB(cY cYVar) {
        return QSm.ba(cYVar) || QSm.ZYk(cYVar) || QSm.tB(cYVar);
    }

    public ba ZYk(cY cYVar) {
        if (cYVar == null || TextUtils.isEmpty(cYVar.Oof())) {
            return null;
        }
        String Oof = cYVar.Oof();
        if (TextUtils.isEmpty(Oof)) {
            return null;
        }
        int hashCode = Oof.hashCode();
        SoftReference<ba> softReference = this.Pfn.get(Integer.valueOf(hashCode));
        if (softReference == null || softReference.get() == null) {
            return null;
        }
        ba baVar = softReference.get();
        oJ(cYVar, baVar.getTag(), Double.valueOf((System.currentTimeMillis() / 1000) - cYVar.fTJ()).floatValue(), "web_use_pre_render");
        oJ(hashCode, 3, cYVar, baVar.getTag());
        return baVar;
    }

    public static oJ oJ() {
        if (oJ == null) {
            synchronized (oJ.class) {
                try {
                    if (oJ == null) {
                        oJ = new oJ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void oJ(final cY cYVar) {
        final String str;
        if (cYVar == null || !tB(cYVar)) {
            return;
        }
        RZ oq2 = cYVar.oq();
        if (oq2 == null) {
            oq2 = new RZ();
        }
        cYVar.XS();
        if (cYVar.XS()) {
            String Oof = cYVar.Oof();
            if (TextUtils.isEmpty(Oof)) {
                return;
            }
            final int hashCode = Oof.hashCode();
            if (QSm.ZYk(cYVar)) {
                str = "landingpage_split_screen";
            } else if (QSm.ex(cYVar)) {
                str = "landingpage_direct";
            } else if (QSm.tB(cYVar)) {
                str = "landingpage_split_ceiling";
            } else {
                str = "";
            }
            LinkedHashMap<Integer, SoftReference<ba>> linkedHashMap = this.Pfn;
            if (linkedHashMap == null || !linkedHashMap.containsKey(Integer.valueOf(hashCode))) {
                HashMap hashMap = new HashMap();
                hashMap.put(cYVar.PQw(), cYVar);
                if (oq2.ZYk() == 2) {
                    ZYk.oJ().oJ((Map<String, cY>) hashMap, new ZYk.oJ() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.2
                        @Override // com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ
                        public void oJ() {
                            oJ.this.oJ(hashCode, cYVar, str, true);
                        }
                    }, true);
                } else if (oq2.ZYk() == 1) {
                    ZYk.oJ().oJ((Map<String, cY>) hashMap, (ZYk.oJ) null, true);
                    oJ(hashCode, cYVar, str, true);
                } else if (oq2.ZYk() == 0) {
                    oJ(hashCode, cYVar, str, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final int i10, final cY cYVar, final String str, final boolean z10) {
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.3
            private Pfn oJ(@NonNull final ba baVar, BTZ btz) {
                Pfn pfn = new Pfn(si.oJ(), null, cYVar.edj(), btz, true) { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.3.3
                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str2) {
                        ba baVar2 = baVar;
                        if (baVar2 != null) {
                            baVar2.setPreFinish(true);
                        }
                        super.onPageFinished(webView, str2);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                        ba baVar2 = baVar;
                        if (baVar2 != null) {
                            baVar2.setPreStart(true);
                        }
                        super.onPageStarted(webView, str2, bitmap);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public void onReceivedError(WebView webView, int i11, String str2, String str3) {
                        boolean z11;
                        String ex2 = Pfn.ex(str3);
                        boolean z12 = false;
                        if (ex2 != null && ex2.startsWith("image")) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        if (ex2 != null && ex2.startsWith(TTVideoEngineInterface.FORMAT_TYPE_MP4)) {
                            z12 = true;
                        }
                        if (!z11 && !z12 && !baVar.tB()) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            oJ.this.oJ(i10, 4, cYVar, str);
                        }
                        super.onReceivedError(webView, i11, str2, str3);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                        if (sslErrorHandler != null) {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            oJ.this.oJ(i10, 4, cYVar, str);
                        }
                        super.onReceivedSslError(webView, sslErrorHandler, sslError);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                        try {
                            if (!z10) {
                                return super.shouldInterceptRequest(webView, str2);
                            }
                            ba baVar2 = baVar;
                            if (baVar2 != null) {
                                baVar2.oJ++;
                            }
                            WebResourceResponseModel oJ2 = ZYk.oJ().oJ(ZYk.oJ().ZYk(), cYVar.PQw(), str2);
                            if (oJ2 != null && oJ2.getWebResourceResponse() != null) {
                                ba baVar3 = baVar;
                                if (baVar3 != null) {
                                    baVar3.ZYk++;
                                }
                                return oJ2.getWebResourceResponse();
                            }
                            if (baVar != null && oJ2 != null && oJ2.getMsg() == 2) {
                                baVar.tB++;
                            }
                            return super.shouldInterceptRequest(webView, str2);
                        } catch (Throwable unused) {
                            return super.shouldInterceptRequest(webView, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                        return super.shouldOverrideUrlLoading(webView, str2);
                    }
                };
                pfn.oJ(cYVar);
                pfn.oJ(str);
                return pfn;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i11;
                com.bytedance.sdk.openadsdk.utils.oJ Pfn;
                Activity ZYk;
                String tag;
                if (oJ.this.Pfn != null && oJ.this.Pfn.size() >= oJ.tB) {
                    Map.Entry entry = (Map.Entry) oJ.this.Pfn.entrySet().iterator().next();
                    SoftReference softReference = (SoftReference) entry.getValue();
                    if (softReference != null) {
                        ba baVar = (ba) softReference.get();
                        oJ oJVar = oJ.this;
                        int intValue = ((Integer) entry.getKey()).intValue();
                        cY cYVar2 = cYVar;
                        if (baVar == null) {
                            tag = "";
                        } else {
                            tag = baVar.getTag();
                        }
                        oJVar.oJ(intValue, 1, cYVar2, tag);
                    }
                }
                if (oJ.this.ZYk != null) {
                    Message obtain = Message.obtain();
                    obtain.what = i10;
                    oJ.this.ZYk.sendMessageDelayed(obtain, oJ.ex);
                }
                int i12 = 0;
                SoftReference softReference2 = new SoftReference(new ba(si.oJ(), false));
                final ba baVar2 = (ba) softReference2.get();
                if (baVar2 == null) {
                    return;
                }
                baVar2.setLayerType(2, null);
                cdg.oJ((View) baVar2, 4);
                baVar2.setTag(str);
                baVar2.setLandingPage(true);
                RZ oq2 = cYVar.oq();
                if (oq2 != null) {
                    i11 = oq2.oJ();
                } else {
                    i11 = 3;
                }
                if (i11 == 2) {
                    int tB2 = cdg.tB(si.oJ());
                    int Pfn2 = cdg.Pfn(si.oJ());
                    int Tt = cYVar.Tt();
                    if (Tt == 1) {
                        if (tB2 >= Pfn2) {
                            baVar2.layout(0, 0, Pfn2, tB2);
                        }
                        baVar2.layout(0, 0, tB2, Pfn2);
                    } else if (Tt == 2) {
                        if (tB2 < Pfn2) {
                            baVar2.layout(0, 0, Pfn2, tB2);
                        }
                        baVar2.layout(0, 0, tB2, Pfn2);
                    }
                } else if (i11 == 1 && (Pfn = awB.oJ().Pfn()) != null && (ZYk = Pfn.ZYk()) != null) {
                    final int hashCode = ZYk.hashCode();
                    Pfn.oJ(new com.bytedance.sdk.component.adexpress.oJ() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.3.1
                        @Override // com.bytedance.sdk.component.adexpress.oJ
                        public void oJ(Activity activity) {
                            int i13 = hashCode;
                            if (i13 != 0 && activity != null && i13 == activity.hashCode() && !baVar2.tB()) {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                oJ.this.oJ(i10, 5, cYVar, str);
                            }
                        }
                    });
                    FrameLayout frameLayout = (FrameLayout) ZYk.findViewById(16908290);
                    if (frameLayout != null) {
                        frameLayout.addView(baVar2);
                    }
                }
                int oJ2 = ZYk.oJ().oJ(ZYk.oJ().ZYk(), cYVar.PQw());
                BTZ btz = new BTZ(cYVar, baVar2.getWebView());
                if (oJ2 > 0) {
                    i12 = 2;
                }
                btz.oJ(i12);
                btz.oJ(true);
                btz.ZYk(true);
                baVar2.setWebViewClient(oJ(baVar2, btz));
                baVar2.setWebChromeClient(new ex(null, btz) { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.3.2
                    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView, int i13) {
                        super.onProgressChanged(webView, i13);
                        if (i13 == 100) {
                            baVar2.setPreProgressHundred(true);
                        }
                    }
                });
                oJ.this.oJ(baVar2, cYVar.Oof());
                oJ.oJ(cYVar, str, Double.valueOf((System.currentTimeMillis() / 1000) - cYVar.fTJ()).floatValue(), "web_start_pre_render");
                if (oJ.this.Pfn != null) {
                    oJ.this.Pfn.put(Integer.valueOf(i10), softReference2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, int i11, cY cYVar, String str) {
        LinkedHashMap<Integer, SoftReference<ba>> linkedHashMap = this.Pfn;
        if (linkedHashMap != null && linkedHashMap.containsKey(Integer.valueOf(i10))) {
            this.Pfn.remove(Integer.valueOf(i10));
        }
        Handler handler = this.ZYk;
        if (handler != null) {
            handler.removeMessages(i10);
        }
        oJ(cYVar, str, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(ba baVar, String str) {
        if (baVar == null) {
            return;
        }
        tB.oJ(si.oJ()).oJ(false).ZYk(false).oJ(baVar.getWebView());
        baVar.setMixedContentMode(0);
        oq.oJ(baVar, str);
    }

    public static void oJ(cY cYVar, String str, final float f10, String str2) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, str, str2, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.4
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", f10);
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void oJ(cY cYVar, final String str, final int i10) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), cYVar, str, "web_delete_pre_render", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.PiB.oJ.5
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("reason", i10);
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                jSONObject2.toString();
                return jSONObject;
            }
        });
    }
}
