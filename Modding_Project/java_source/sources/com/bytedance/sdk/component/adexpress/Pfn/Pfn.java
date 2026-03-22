package com.bytedance.sdk.component.adexpress.Pfn;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.component.oJ.Xe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Pfn {
    private static final byte[] Pfn = new byte[0];

    /* renamed from: ba  reason: collision with root package name */
    private static int f12619ba = 10;
    private static volatile Pfn jFA = null;

    /* renamed from: so  reason: collision with root package name */
    private static int f12620so = 10;
    private final AtomicBoolean cFZ = new AtomicBoolean(false);
    private List<ba> oJ = new ArrayList();
    private List<ba> ZYk = new ArrayList();
    private Map<Integer, tB> tB = new HashMap();
    private Map<Integer, ex> ex = new HashMap();

    private Pfn() {
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        if (tB != null) {
            f12619ba = tB.kkU();
            f12620so = tB.dLZ();
        }
    }

    private void cFZ(ba baVar) {
        try {
            baVar.removeAllViews();
            baVar.cFZ();
            baVar.setWebChromeClient(null);
            baVar.setWebViewClient(null);
            baVar.setDownloadListener(null);
            baVar.setJavaScriptEnabled(true);
            baVar.setCacheMode(-1);
            baVar.setSupportZoom(false);
            baVar.setUseWideViewPort(true);
            baVar.setJavaScriptCanOpenWindowsAutomatically(true);
            baVar.setDomStorageEnabled(true);
            baVar.setBuiltInZoomControls(false);
            baVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            baVar.setLoadWithOverviewMode(false);
            baVar.setDefaultTextEncodingName("UTF-8");
            baVar.setDefaultFontSize(16);
        } catch (Throwable unused) {
        }
    }

    public static Pfn oJ() {
        if (jFA == null) {
            synchronized (Pfn.class) {
                try {
                    if (jFA == null) {
                        jFA = new Pfn();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return jFA;
    }

    public boolean Pfn(ba baVar) {
        if (baVar == null) {
            return false;
        }
        try {
            Context context = baVar.getContext();
            if (context instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
            }
            baVar.eZI();
            return true;
        } catch (Throwable th2) {
            th2.getMessage();
            return true;
        }
    }

    @UiThread
    public void ZYk(ba baVar) {
        if (baVar == null) {
            return;
        }
        cFZ(baVar);
        baVar.b_("SDK_INJECT_GLOBAL");
        ba(baVar);
        oJ(baVar);
    }

    public void ba(ba baVar) {
        if (baVar == null) {
            return;
        }
        tB tBVar = this.tB.get(Integer.valueOf(baVar.hashCode()));
        if (tBVar != null) {
            tBVar.oJ(null);
        }
        baVar.b_("SDK_INJECT_GLOBAL");
    }

    public void ex(ba baVar) {
        if (baVar == null) {
            return;
        }
        if (this.oJ.size() >= f12619ba) {
            try {
                Context context = baVar.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                baVar.eZI();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } else if (this.oJ.contains(baVar)) {
        } else {
            try {
                Context context2 = baVar.getContext();
                if (context2 instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    baVar.setRecycler(true);
                    this.oJ.add(baVar);
                    tB();
                }
            } catch (Throwable th3) {
                tB();
                th3.getMessage();
            }
        }
    }

    @UiThread
    public void tB(ba baVar) {
        if (baVar == null) {
            return;
        }
        cFZ(baVar);
        baVar.b_("SDK_INJECT_GLOBAL");
        ba(baVar);
        ex(baVar);
    }

    @Nullable
    public ba ZYk(Context context, String str) {
        if (tB() <= 0) {
            return null;
        }
        if (com.bytedance.sdk.component.adexpress.ex.Pfn.oJ(str) && tB() <= 1) {
            tB();
            return null;
        }
        ba remove = this.oJ.remove(0);
        if (remove == null) {
            return null;
        }
        try {
            Context context2 = remove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                remove.setRecycler(false);
                tB();
            }
            return remove;
        } catch (Throwable unused) {
            tB();
            return null;
        }
    }

    public int tB() {
        return this.oJ.size();
    }

    @Nullable
    public ba oJ(Context context, String str) {
        if (ex() <= 0) {
            return null;
        }
        if (com.bytedance.sdk.component.adexpress.ex.Pfn.oJ(str) && ex() <= 1) {
            ex();
            return null;
        }
        ba remove = this.ZYk.remove(0);
        if (remove == null) {
            return null;
        }
        try {
            Context context2 = remove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                remove.setRecycler(false);
                ex();
            }
            return remove;
        } catch (Throwable unused) {
            ex();
            return null;
        }
    }

    public void ZYk() {
        for (ba baVar : this.oJ) {
            if (baVar != null) {
                try {
                    Context context = baVar.getContext();
                    if (context instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                    }
                    baVar.eZI();
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        }
        this.oJ.clear();
        for (ba baVar2 : this.ZYk) {
            if (baVar2 != null) {
                try {
                    Context context2 = baVar2.getContext();
                    if (context2 instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    }
                    baVar2.eZI();
                } catch (Throwable th3) {
                    th3.getMessage();
                }
            }
        }
        this.ZYk.clear();
    }

    public int ex() {
        return this.ZYk.size();
    }

    public void oJ(ba baVar) {
        if (baVar == null) {
            return;
        }
        if (this.ZYk.size() >= f12620so) {
            try {
                Context context = baVar.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                baVar.eZI();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } else if (this.ZYk.contains(baVar)) {
        } else {
            try {
                Context context2 = baVar.getContext();
                if (context2 instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    baVar.setRecycler(true);
                    this.ZYk.add(baVar);
                    ex();
                }
            } catch (Throwable th3) {
                ex();
                th3.getMessage();
            }
        }
    }

    public void ZYk(int i10) {
        synchronized (Pfn) {
            f12620so = i10;
        }
    }

    @SuppressLint({"JavascriptInterface"})
    public void oJ(ba baVar, ZYk zYk) {
        if (baVar == null || zYk == null) {
            return;
        }
        tB tBVar = this.tB.get(Integer.valueOf(baVar.hashCode()));
        if (tBVar != null) {
            tBVar.oJ(zYk);
        } else {
            tBVar = new tB(zYk);
            this.tB.put(Integer.valueOf(baVar.hashCode()), tBVar);
        }
        baVar.oJ(tBVar, "SDK_INJECT_GLOBAL");
    }

    @SuppressLint({"JavascriptInterface"})
    public void oJ(WebView webView, Xe xe2, String str) {
        if (webView == null || xe2 == null || TextUtils.isEmpty(str)) {
            return;
        }
        ex exVar = this.ex.get(Integer.valueOf(webView.hashCode()));
        if (exVar != null) {
            exVar.oJ(xe2);
        } else {
            exVar = new ex(xe2);
            this.ex.put(Integer.valueOf(webView.hashCode()), exVar);
        }
        webView.addJavascriptInterface(exVar, str);
    }

    public void oJ(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        ex exVar = this.ex.get(Integer.valueOf(webView.hashCode()));
        if (exVar != null) {
            exVar.oJ(null);
        }
        webView.removeJavascriptInterface(str);
    }

    public void oJ(int i10) {
        synchronized (Pfn) {
            f12619ba = i10;
        }
    }
}
