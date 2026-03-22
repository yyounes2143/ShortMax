package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class U4 implements ServiceConnection {
    public static byte[] A01;
    public static String[] A02 = {"Vw4807oGxAdaHl5Al", "61OeIm55zagm9eF8TwwypJ2x", "EMmzBhTNP4w9g", "EYH0yzb9nIvkx5HKrwnVnQphst8", "oJpEUQYv6dauwAdzygMcXKep8asdjHHS", "ZEL", "ZTCWoVSxq9DuX", "VaiI"};
    public final /* synthetic */ U5 A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            byte b10 = (byte) ((copyOfRange[i13] - i12) - 13);
            if (A02[7].length() != 4) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "dt08HEEvYnWJr";
            strArr[2] = "T3OITLjrwLx4m";
            copyOfRange[i13] = b10;
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{98, 116, -127, -123, 120, 114, 116, 47, 114, 126, 125, 125, 116, 114, -125, 116, 115, -66, -48, -35, -31, -44, -50, -48, -117, -49, -44, -34, -50, -38, -39, -39, -48, -50, -33, -48, -49};
    }

    static {
        A01();
    }

    public U4(U5 u52) {
        this.A00 = u52;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Bundle A00;
        C2111dL c2111dL;
        Messenger messenger;
        this.A00.A08(AbstractC1722Sv.A1r, new C1723Sw(A00(0, 17, 2)));
        this.A00.A01 = true;
        this.A00.A00 = new Messenger(iBinder);
        Message obtain = Message.obtain((Handler) null, 1);
        A00 = this.A00.A00();
        obtain.setData(A00);
        try {
            messenger = this.A00.A00;
            messenger.send(obtain);
        } catch (RemoteException e10) {
            this.A00.A07(AbstractC1722Sv.A1q, new C1723Sw(e10));
        }
        c2111dL = this.A00.A03;
        c2111dL.unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C2111dL c2111dL;
        this.A00.A08(AbstractC1722Sv.A1s, new C1723Sw(A00(17, 20, 94)));
        try {
            c2111dL = this.A00.A03;
            c2111dL.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.A00.A00 = null;
        this.A00.A01 = false;
    }
}
