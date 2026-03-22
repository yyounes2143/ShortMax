package com.bytedance.sdk.openadsdk.core.widget.oJ;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import androidx.annotation.MainThread;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.awB.oJ.oJ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class ba implements IUZ.oJ {
    float BTZ;
    private final boolean HL;
    private long LpP;
    float PiB;
    long RZ;
    boolean Ry;
    float WcQ;
    cY ZYk;
    float awB;
    boolean cFZ;
    float dLZ;
    long eZI;
    WebView ex;
    String jFA;
    int kkU;
    private boolean nke;
    Context oJ;

    /* renamed from: si  reason: collision with root package name */
    boolean f13317si;

    /* renamed from: so  reason: collision with root package name */
    boolean f13318so;

    /* renamed from: tb  reason: collision with root package name */
    private final Handler f13319tb = new IUZ(WcQ.ZYk().getLooper(), this);
    String tB = "landingpage";

    /* renamed from: ba  reason: collision with root package name */
    int f13314ba = 0;
    private final String IUZ = ".*\\/serp\\?sc=.*&clkt=\\d+$";
    private final String Ln = ".*\\/\\?caf_results=.*&clkt=\\d+$";

    /* renamed from: jr  reason: collision with root package name */
    oJ f13315jr = new oJ() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ba.1
        @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ba.oJ
        public void oJ() {
            ba baVar = ba.this;
            baVar.f13318so = true;
            baVar.ba();
            ba baVar2 = ba.this;
            baVar2.oJ(2, baVar2.jFA, baVar2.kkU);
        }
    };
    GestureDetector Xe = new GestureDetector(si.oJ(), new GestureDetector.SimpleOnGestureListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ba.2
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            ba.this.f13317si = true;
            return false;
        }
    });
    int Pfn = si.ex().uvK();
    Map<Integer, Long> QSm = new HashMap();

    /* renamed from: oq  reason: collision with root package name */
    Map<Integer, Float> f13316oq = new HashMap();
    Map<Integer, Long> Id = new HashMap();
    List<Integer> cY = new ArrayList();

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    public ba(WebView webView, cY cYVar, Context context, boolean z10) {
        this.ZYk = cYVar;
        this.ex = webView;
        this.oJ = context;
        this.HL = z10;
    }

    private boolean Pfn() {
        try {
            int i10 = this.kkU;
            if (i10 == 2 || i10 == 3) {
                if (!Pattern.matches(".*\\/serp\\?sc=.*&clkt=\\d+$", this.jFA)) {
                    if (Pattern.matches(".*\\/\\?caf_results=.*&clkt=\\d+$", this.jFA)) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return false;
        } catch (Throwable th2) {
            QSm.tB("WebArbitrageBehavior", th2.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public void ba() {
        if (this.f13316oq.get(Integer.valueOf(this.kkU)) != null) {
            return;
        }
        float height = this.ex.getHeight() / cdg.ZYk(this.oJ, this.ex.getContentHeight());
        if (height < 0.0f || height > 1.0f) {
            height = 0.0f;
        }
        this.f13316oq.put(Integer.valueOf(this.kkU), Float.valueOf(height));
    }

    private boolean cFZ() {
        int i10 = this.f13314ba + 1;
        this.f13314ba = i10;
        if (i10 > this.Pfn) {
            return true;
        }
        if (!"landingpage".equals(this.tB) && !"landingpage_endcard".equals(this.tB) && !"landingpage_split_screen".equals(this.tB) && !"landingpage_direct".equals(this.tB) && !"landingpage_split_ceiling".equals(this.tB)) {
            return true;
        }
        return false;
    }

    private void ex(String str) {
        if (cFZ()) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(this.ZYk, new oJ.C0191oJ().oJ(this.jFA).ZYk(Uri.decode(str)).oJ(), this.tB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void so() {
        WebBackForwardList copyBackForwardList = this.ex.copyBackForwardList();
        if (copyBackForwardList != null) {
            int currentIndex = copyBackForwardList.getCurrentIndex();
            this.kkU = currentIndex + 1;
            if (this.HL) {
                this.kkU = currentIndex + 2;
            }
        }
    }

    public void ZYk(String str) {
        this.jFA = str;
        so();
        this.QSm.put(Integer.valueOf(this.kkU), Long.valueOf(SystemClock.elapsedRealtime()));
        this.Id.put(Integer.valueOf(this.kkU), Long.valueOf(SystemClock.elapsedRealtime()));
        this.nke = Pfn();
    }

    public void tB(String str) {
        if (this.cFZ) {
            this.Ry = true;
        }
        if (this.kkU == 1 && !TextUtils.isEmpty(str) && str.contains("query=")) {
            int indexOf = str.indexOf("query=") + 6;
            int indexOf2 = str.indexOf(ContainerUtils.FIELD_DELIMITER, indexOf);
            if (indexOf < 0 || indexOf2 >= str.length() || indexOf2 <= indexOf) {
                return;
            }
            ex(str.substring(indexOf, indexOf2));
        }
    }

    public void oJ(String str) {
        this.tB = str;
    }

    public void oJ() {
        ZYk(this.kkU);
    }

    public void oJ(int i10) {
        float height = (i10 + this.ex.getHeight()) / cdg.ZYk(this.oJ, this.ex.getContentHeight());
        Float f10 = this.f13316oq.get(Integer.valueOf(this.kkU));
        if (height > (f10 == null ? 0.0f : f10.floatValue())) {
            this.f13316oq.put(Integer.valueOf(this.kkU), Float.valueOf(height));
        }
    }

    public void ZYk() {
        this.ex.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ba.3
            @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
            public void onWindowFocusChanged(boolean z10) {
                if (!z10) {
                    ba baVar = ba.this;
                    if (!baVar.f13318so) {
                        baVar.ba();
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        if (elapsedRealtime - ba.this.LpP >= 50) {
                            ba baVar2 = ba.this;
                            baVar2.oJ(3, baVar2.jFA, baVar2.kkU);
                            ba.this.LpP = elapsedRealtime;
                            return;
                        }
                        return;
                    }
                    baVar.f13318so = false;
                }
                if (z10) {
                    ba.this.so();
                    ba baVar3 = ba.this;
                    baVar3.QSm.put(Integer.valueOf(baVar3.kkU), Long.valueOf(SystemClock.elapsedRealtime()));
                }
            }
        });
    }

    private void ex() {
        if (cFZ()) {
            return;
        }
        com.bytedance.sdk.openadsdk.awB.oJ.oJ oJ2 = new oJ.C0191oJ().oJ(this.jFA).oJ(this.kkU).ex(this.dLZ).Pfn(this.BTZ).ba(this.awB).cFZ((float) this.RZ).oJ();
        Message obtain = Message.obtain();
        obtain.what = 100;
        obtain.obj = oJ2;
        this.f13319tb.sendMessageDelayed(obtain, 20L);
    }

    private void ZYk(int i10) {
        if (cFZ() || this.cY.contains(Integer.valueOf(i10))) {
            return;
        }
        this.cY.add(Integer.valueOf(i10));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Long l10 = this.Id.get(Integer.valueOf(i10));
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.ZYk, new oJ.C0191oJ().oJ(this.jFA).oJ(this.kkU).kkU((float) (elapsedRealtime - (l10 != null ? l10.longValue() : elapsedRealtime))).oJ(), this.tB);
    }

    public oJ tB() {
        return this.f13315jr;
    }

    private void tB(int i10) {
        if (cFZ()) {
            return;
        }
        ba();
        this.cFZ = true;
        com.bytedance.sdk.openadsdk.awB.oJ.oJ oJ2 = new oJ.C0191oJ().oJ(this.jFA).oJ(this.kkU).oJ(this.dLZ).ZYk(this.BTZ).tB((float) this.RZ).tB(i10).oJ();
        try {
            if (this.nke) {
                WebView.HitTestResult hitTestResult = this.ex.getHitTestResult();
                oJ2.oJ(hitTestResult.getExtra());
                oJ2.oJ(hitTestResult.getType());
            }
        } catch (Throwable unused) {
        }
        Message obtain = Message.obtain();
        obtain.what = 200;
        obtain.obj = oJ2;
        this.f13319tb.sendMessageDelayed(obtain, 100L);
    }

    public void oJ(MotionEvent motionEvent) {
        this.Xe.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dLZ = motionEvent.getX();
            this.BTZ = motionEvent.getY();
            this.eZI = SystemClock.elapsedRealtime();
        } else if (action != 1) {
            if (action != 3) {
                return;
            }
            tB(2);
        } else {
            this.RZ = SystemClock.elapsedRealtime() - this.eZI;
            if (ZYk(motionEvent)) {
                ex();
            } else {
                tB(1);
            }
        }
    }

    private boolean ZYk(MotionEvent motionEvent) {
        this.PiB = motionEvent.getX();
        float y10 = motionEvent.getY();
        this.WcQ = y10;
        float f10 = this.BTZ;
        if (y10 - f10 != 0.0f) {
            this.awB = y10 - f10;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str, int i11) {
        if (cFZ()) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Long l10 = this.QSm.get(Integer.valueOf(i11));
        long longValue = l10 != null ? l10.longValue() : elapsedRealtime;
        Float f10 = this.f13316oq.get(Integer.valueOf(i11));
        com.bytedance.sdk.openadsdk.ex.tB.tB(this.ZYk, new oJ.C0191oJ().oJ(str).oJ(i11).so((float) (elapsedRealtime - longValue)).jFA(f10 == null ? 0.0f : f10.floatValue()).ZYk(i10).oJ(), this.tB);
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        int i10 = message.what;
        com.bytedance.sdk.openadsdk.awB.oJ.oJ oJVar = (com.bytedance.sdk.openadsdk.awB.oJ.oJ) message.obj;
        if (i10 == 100) {
            oJVar.ex(this.f13317si ? 2 : 1);
            com.bytedance.sdk.openadsdk.ex.tB.ex(this.ZYk, oJVar, this.tB);
            this.f13317si = false;
        } else if (i10 == 200) {
            if (this.Ry) {
                oJ(1, oJVar.tB(), oJVar.ex());
            }
            oJVar.tB(this.Ry ? 1 : 0);
            com.bytedance.sdk.openadsdk.ex.tB.Pfn(this.ZYk, oJVar, this.tB);
            this.cFZ = false;
            this.Ry = false;
        }
    }
}
