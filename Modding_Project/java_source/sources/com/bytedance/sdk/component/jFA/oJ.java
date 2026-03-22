package com.bytedance.sdk.component.jFA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.component.utils.Ln;
import com.bytedance.sdk.component.utils.jFA;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends tB implements IUZ.oJ {
    private long BTZ;
    private final int Pfn;
    private int PiB;
    private View.OnTouchListener QSm;
    private String RZ;
    private float Ry;
    private final int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Context f12788ba;
    private volatile float cFZ;
    private long dLZ;
    private boolean eZI;
    private final List<Integer> ex;

    /* renamed from: si  reason: collision with root package name */
    private float f12790si;

    /* renamed from: so  reason: collision with root package name */
    private volatile float f12791so;
    private final int tB;
    private float jFA = -1.0f;
    private float kkU = -1.0f;
    private final Handler awB = new IUZ(jFA.oJ().getLooper(), this);
    InterfaceC0176oJ oJ = new InterfaceC0176oJ() { // from class: com.bytedance.sdk.component.jFA.oJ.1
        @Override // com.bytedance.sdk.component.jFA.oJ.InterfaceC0176oJ
        public void oJ() {
            if (oJ.this.jFA == -1.0f && oJ.this.kkU == -1.0f && oJ.this.BTZ == -1) {
                float unused = oJ.this.jFA;
                float unused2 = oJ.this.kkU;
                oJ oJVar = oJ.this;
                oJVar.jFA = oJVar.cFZ;
                oJ oJVar2 = oJ.this;
                oJVar2.kkU = oJVar2.f12791so;
                oJ oJVar3 = oJ.this;
                oJVar3.BTZ = oJVar3.dLZ;
                oJ.this.eZI = true;
            }
            float unused3 = oJ.this.jFA;
            float unused4 = oJ.this.kkU;
        }

        @Override // com.bytedance.sdk.component.jFA.oJ.InterfaceC0176oJ
        public void oJ(int i10) {
            oJ.this.PiB = i10;
            oJ.this.ZYk();
        }
    };

    /* renamed from: oq  reason: collision with root package name */
    private int f12789oq = -1;
    private final List<Integer> WcQ = new ArrayList();

    /* renamed from: com.bytedance.sdk.component.jFA.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0176oJ {
        void oJ();

        void oJ(int i10);
    }

    public oJ(Context context, int i10, int i11, List<Integer> list, int i12) {
        this.f12788ba = context;
        if (i10 == -1) {
            this.ZYk = Ln.oJ(context);
        } else {
            this.ZYk = Ln.oJ(context, i10);
        }
        this.tB = Ln.oJ(context, i11);
        this.ex = list;
        this.Pfn = i12;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.getX();
        motionEvent.getY();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        this.dLZ = SystemClock.elapsedRealtime();
        this.cFZ = x10;
        this.f12791so = y10;
        if (action != 0) {
            if (action == 1 && oJ(x10, y10, this.f12790si, this.Ry, this.f12788ba)) {
                int oJ = oJ(this.cFZ, this.f12791so, this.dLZ);
                boolean contains = this.WcQ.contains(Integer.valueOf(this.PiB));
                oJ(view, motionEvent, oJ, !contains);
                if (!contains) {
                    this.WcQ.add(Integer.valueOf(this.PiB));
                }
                if (oJ == 0) {
                    motionEvent.setAction(3);
                }
            }
        } else {
            this.f12790si = x10;
            this.Ry = y10;
        }
        View.OnTouchListener onTouchListener = this.QSm;
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view, motionEvent);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        this.jFA = -1.0f;
        this.kkU = -1.0f;
        this.BTZ = -1L;
    }

    @Override // com.bytedance.sdk.component.jFA.tB
    public void oJ(View.OnTouchListener onTouchListener) {
        this.QSm = onTouchListener;
    }

    public InterfaceC0176oJ oJ() {
        return this.oJ;
    }

    private void oJ(View view, MotionEvent motionEvent, int i10, boolean z10) {
        String url;
        JSONObject jSONObject = new JSONObject();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            try {
                url = webView.getUrl();
            } catch (Throwable unused) {
            }
        } else {
            url = "";
        }
        jSONObject.put("arbi_current_url", url);
        jSONObject.put("click_x", motionEvent.getX());
        jSONObject.put("click_y", motionEvent.getY());
        jSONObject.put("is_interceptor", i10 == 0 ? 1 : 0);
        jSONObject.put("is_first_click", z10 ? 1 : 0);
        jSONObject.put("click_timestamp", System.currentTimeMillis());
        jSONObject.put("arbi_interceptor_type", i10);
        jSONObject.put("current_url_index", this.PiB);
        Message obtain = Message.obtain();
        obtain.what = 100;
        obtain.obj = jSONObject;
        this.awB.sendMessageDelayed(obtain, 200L);
    }

    public void oJ(String str) {
        this.RZ = str;
    }

    private int oJ(float f10, float f11, long j10) {
        if (this.jFA == -1.0f && this.kkU == -1.0f && this.BTZ == -1) {
            return 1;
        }
        if (this.ex.contains(Integer.valueOf(this.PiB))) {
            if (j10 - this.BTZ > this.Pfn) {
                ZYk();
                return 3;
            }
            float abs = Math.abs(f10 - this.jFA);
            float abs2 = Math.abs(f11 - this.kkU);
            if (abs > this.ZYk / 2.0f || abs2 > this.tB / 2.0f) {
                ZYk();
                return 4;
            }
            return 0;
        }
        return 2;
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        int i10 = message.what;
        Object obj = message.obj;
        JSONObject jSONObject = new JSONObject();
        if (i10 == 100) {
            if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                try {
                    jSONObject.put("is_trigger_jump", this.eZI ? 1 : 0);
                    this.eZI = false;
                } catch (Throwable unused) {
                }
            }
            if (com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk() != null) {
                com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk().oJ(this.RZ, "arbitrage_click_event", jSONObject);
            }
        }
    }
}
