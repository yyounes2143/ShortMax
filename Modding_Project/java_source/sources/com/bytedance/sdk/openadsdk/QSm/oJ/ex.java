package com.bytedance.sdk.openadsdk.QSm.oJ;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.openadsdk.BTZ.ba;
import com.bytedance.sdk.openadsdk.QSm.oJ.oJ;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    private static volatile ex ZYk;
    private final Handler oJ;
    private int tB = 0;
    private int ex = 2;
    private int Pfn = Constants.ONE_HOUR;

    /* renamed from: ba  reason: collision with root package name */
    private final ArrayList<ZYk> f12835ba = new ArrayList<>();

    private ex() {
        ofl.ZYk(new so("pag_pre_render_init") { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.1
            @Override // java.lang.Runnable
            public void run() {
                ex.this.tB = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_pre_render_enable", 0);
                ex.this.ex = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_pre_render_max_count", 2);
                if (ex.this.ex <= 0 || ex.this.ex > 4) {
                    ex.this.ex = 2;
                }
                ex.this.Pfn = com.bytedance.sdk.openadsdk.oq.oJ.oJ("plb_pre_render_alive_time", (int) Constants.ONE_HOUR);
                if (ex.this.Pfn <= 0 || ex.this.Pfn > 3600000) {
                    ex.this.Pfn = Constants.ONE_HOUR;
                }
            }
        });
        this.oJ = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.2
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                if (message.obj instanceof ZYk) {
                    ex.this.f12835ba.remove(message.obj);
                    ((ZYk) message.obj).ex();
                    return true;
                }
                return false;
            }
        });
    }

    public static ex oJ() {
        if (ZYk == null) {
            synchronized (ex.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new ex();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    public boolean ZYk() {
        return this.tB == 1;
    }

    @MainThread
    public void oJ(@Nullable final cY cYVar) {
        if (ZYk() && cYVar != null && Ln.ba(cYVar)) {
            final String iPr = cYVar.iPr();
            if (TextUtils.isEmpty(iPr)) {
                return;
            }
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ex.this.f12835ba.size() >= ex.this.ex) {
                            ex.this.f12835ba.size();
                            ZYk zYk = (ZYk) ex.this.f12835ba.remove(0);
                            if (zYk != null) {
                                ex.this.oJ.removeMessages(zYk.so().hashCode());
                                zYk.ex();
                            }
                        }
                        cYVar.BTZ(true);
                        Context oJ = si.oJ();
                        cY cYVar2 = cYVar;
                        final ZYk zYk2 = new ZYk(oJ, cYVar2, cYVar2.Tt(), true, new FrameLayout(si.oJ()), iPr);
                        ex.this.f12835ba.add(zYk2);
                        zYk2.cFZ();
                        Message obtain = Message.obtain();
                        obtain.what = iPr.hashCode();
                        obtain.obj = zYk2;
                        ex.this.oJ.sendMessageDelayed(obtain, ex.this.Pfn);
                        zYk2.oJ(new oJ.InterfaceC0186oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.3.1
                            @Override // com.bytedance.sdk.openadsdk.QSm.oJ.oJ.InterfaceC0186oJ
                            public void oJ() {
                                ex.this.oJ.removeMessages(iPr.hashCode());
                                ex.this.f12835ba.remove(zYk2);
                                zYk2.ex();
                            }
                        });
                        cY cYVar3 = cYVar;
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar3, HyG.tB(cYVar3.BHY().getDurationSlotType()), "PL_start_pre_render", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.3.2
                            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                            public JSONObject oJ() {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("is_pre_render", 1);
                                } catch (JSONException unused) {
                                }
                                return jSONObject;
                            }
                        });
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
            });
        }
    }

    @MainThread
    public ZYk oJ(@NonNull cY cYVar, FrameLayout frameLayout, ba baVar) {
        ZYk zYk;
        if (ZYk() && cYVar.BHY() != null && !TextUtils.isEmpty(cYVar.BHY().getBidAdm()) && Ln.ba(cYVar) && frameLayout != null) {
            String iPr = cYVar.iPr();
            if (TextUtils.isEmpty(iPr)) {
                return null;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= this.f12835ba.size()) {
                    i10 = -1;
                    zYk = null;
                    break;
                }
                zYk = this.f12835ba.get(i10);
                if (iPr.equals(zYk.so())) {
                    break;
                }
                i10++;
            }
            if (zYk != null) {
                this.oJ.removeMessages(iPr.hashCode());
                this.f12835ba.remove(i10);
                this.f12835ba.size();
                cYVar.BTZ(true);
                zYk.oJ(frameLayout, baVar);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, HyG.tB(cYVar.BHY().getDurationSlotType()), "PL_use_pre_render", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ex.4
                    @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
                    public JSONObject oJ() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("is_pre_render", 1);
                        } catch (JSONException unused) {
                        }
                        return jSONObject;
                    }
                });
                return zYk;
            }
        }
        return null;
    }
}
