package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.nke;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class ex extends PAGAppOpenAd {
    private final cY ZYk;
    private final boolean cFZ;
    private com.bytedance.sdk.openadsdk.oJ.ex.ZYk ex;
    private boolean jFA;
    private final Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f12980so;
    private final AdSlot tB;
    private final AtomicBoolean Pfn = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private final String f12979ba = Xe.oJ();

    public ex(Context context, @NonNull cY cYVar, boolean z10, AdSlot adSlot) {
        this.oJ = context;
        this.ZYk = cYVar;
        this.cFZ = z10;
        this.tB = adSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        cY cYVar = this.ZYk;
        if (cYVar != null && cYVar.Zwf() != null) {
            try {
                return this.ZYk.Zwf().get(str);
            } catch (Throwable th2) {
                QSm.tB("TTAppOpenAdImpl", th2.getMessage());
                return null;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        cY cYVar = this.ZYk;
        if (cYVar != null) {
            return cYVar.Zwf();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d10, String str, String str2) {
        if (!this.jFA) {
            nke.oJ(this.ZYk, d10, str, str2);
            this.jFA = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionCallback(PAGAppOpenAdInteractionCallback pAGAppOpenAdInteractionCallback) {
        this.ex = new Pfn(pAGAppOpenAdInteractionCallback);
        oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionListener(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.ex = new Pfn(pAGAppOpenAdInteractionListener);
        oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void show(Activity activity) {
        Context context;
        int i10;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        int i11 = 1;
        if (this.Pfn.getAndSet(true)) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            IPMiBroadcastReceiver.oJ(this.oJ, this.ZYk);
            if (activity != null) {
                context = activity;
            } else {
                context = this.oJ;
            }
            if (context == null) {
                context = si.oJ();
            }
            try {
                i10 = activity.getWindowManager().getDefaultDisplay().getRotation();
            } catch (Exception unused) {
                i10 = 0;
            }
            Intent intent = new Intent(context, TTAppOpenAdActivity.class);
            intent.putExtra("orientation_angle", i10);
            if (!this.cFZ) {
                i11 = 2;
            }
            intent.putExtra("ad_source", i11);
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.ZYk.mf().toString());
                intent.putExtra(TTAdConstant.MULTI_PROCESS_META_MD5, this.f12979ba);
            } else {
                IUZ.oJ().Pfn();
                intent.putExtra("meta_index", IUZ.oJ().oJ(this.ZYk));
                IUZ.oJ().oJ(this.ex);
                this.ex = null;
            }
            intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
            com.bytedance.sdk.component.utils.ZYk.oJ(context, intent, new ZYk.InterfaceC0180ZYk() { // from class: com.bytedance.sdk.openadsdk.component.ex.2
                @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                public void oJ() {
                }

                @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                public void oJ(Throwable th2) {
                }
            });
            WcQ.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.ex.3
                @Override // java.lang.Runnable
                public void run() {
                    if (ex.this.tB != null) {
                        try {
                            if (ex.this.ZYk != null && !cY.cFZ(ex.this.ZYk) && !ex.this.ZYk.cMS()) {
                                ba oJ = ba.oJ(ex.this.oJ);
                                oJ.ba(Integer.parseInt(ex.this.tB.getCodeId()));
                                oJ.oJ(ex.this.tB);
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Cannot be called in a child thread ---- TTAppOpenAdImpl.showAppOpenAd");
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d10) {
        if (!this.f12980so) {
            nke.oJ(this.ZYk, d10);
            this.f12980so = true;
        }
    }

    private void oJ() {
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            ofl.tB(new so("AppOpenAd_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.ex.1
                @Override // java.lang.Runnable
                public void run() {
                    IListenerManager asInterface;
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ oJ = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ();
                    if (ex.this.ex != null && (asInterface = IListenerManager.Stub.asInterface(oJ.oJ(7))) != null) {
                        try {
                            asInterface.registerAppOpenAdListener(ex.this.f12979ba, new com.bytedance.sdk.openadsdk.multipro.aidl.ZYk.oJ(ex.this.ex));
                            ex.this.ex = null;
                        } catch (RemoteException e10) {
                            QSm.tB("TTAppOpenAdImpl", e10.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }
}
