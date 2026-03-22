package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
/* renamed from: com.facebook.ads.redexgen.X.Nj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ServiceConnectionC1583Nj implements ServiceConnection {
    public final /* synthetic */ HandlerC1584Nk A00;

    public ServiceConnectionC1583Nj(HandlerC1584Nk handlerC1584Nk) {
        this.A00 = handlerC1584Nk;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Handler handler;
        AbstractRunnableC1796Vt abstractRunnableC1796Vt;
        C2085cu c2085cu;
        Messenger messenger;
        handler = this.A00.A04;
        abstractRunnableC1796Vt = this.A00.A08;
        handler.removeCallbacks(abstractRunnableC1796Vt);
        this.A00.A00 = new Messenger(iBinder);
        c2085cu = this.A00.A07;
        if (UA.A09(c2085cu)) {
            HandlerC1584Nk handlerC1584Nk = this.A00;
            messenger = this.A00.A00;
            handlerC1584Nk.A07(messenger);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.A00.A09();
    }
}
