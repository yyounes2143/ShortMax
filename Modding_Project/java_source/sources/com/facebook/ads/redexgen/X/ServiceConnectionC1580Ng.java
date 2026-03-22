package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
/* renamed from: com.facebook.ads.redexgen.X.Ng  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ServiceConnectionC1580Ng implements ServiceConnection {
    public static String[] A01 = {"5NfIE0YcA1j7k4kI09Qd", "GOyJyQVDSAttzLj2dwW1R", "UEE9UjADaku6tgIVG7TE", "AlbuaripePsmIRlIONJuvTINhX", "hDpBwlS77lkTDgpWlwn57aFtHcNJW0B1", "G5FnfniCDoZltv23hjG8RcIHEgm214hW", "K1Tu", "8SU16w9FmjIzUCDhhEyMBCCw6KqJKOI3"};
    public final /* synthetic */ HandlerC1581Nh A00;

    public ServiceConnectionC1580Ng(HandlerC1581Nh handlerC1581Nh) {
        this.A00 = handlerC1581Nh;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C2111dL c2111dL;
        Handler handler;
        AbstractRunnableC1796Vt abstractRunnableC1796Vt;
        AbstractC2345hD abstractC2345hD;
        C2111dL c2111dL2;
        c2111dL = this.A00.A07;
        c2111dL.A0F().AHN();
        handler = this.A00.A04;
        abstractRunnableC1796Vt = this.A00.A09;
        handler.removeCallbacks(abstractRunnableC1796Vt);
        if (iBinder != null) {
            this.A00.A00 = new Messenger(iBinder);
            if (this.A00.A02) {
                this.A00.A02 = false;
                abstractC2345hD = this.A00.A06;
                abstractC2345hD.A06();
                return;
            }
            return;
        }
        c2111dL2 = this.A00.A07;
        c2111dL2.A0F().AHP();
        HandlerC1581Nh handlerC1581Nh = this.A00;
        if (A01[3].length() != 26) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[0] = "klTZBPtNd5GFvPmgAP3f";
        strArr[2] = "mBOUVEJ7kKkpCLxr10ij";
        handlerC1581Nh.A06();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C2111dL c2111dL;
        c2111dL = this.A00.A07;
        c2111dL.A0F().AHO();
        if (!this.A00.A01) {
            return;
        }
        this.A00.A06();
    }
}
