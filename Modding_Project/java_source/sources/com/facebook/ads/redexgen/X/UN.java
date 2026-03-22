package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import java.util.Arrays;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class UN extends Handler {
    public static byte[] A04;
    public static String[] A05 = {"4udqyVbWZXJvSc0AlbflTWwfFOYrDaDf", "2YLZ8zu95yTf3T209", "2VJPb0Yp69Qd6undQokFBSWI7sS3NGkE", "Nq0QHebF7aCImjCS8", "WfWu3jj6ZslW8HMUv7JinXygwhejXyBb", "C4PEiJW5iwJTin2vYgbWRkUl1o", "sWvNSKALPWxj", "lJrPEKSWvzui7DJNo"};
    public static final String A06;
    public final Context A00;
    public final AudienceNetworkRemoteServiceApi.MessageHandler A01;
    public final AudienceNetworkRemoteServiceApi.PackageVerifier A02;
    public final VM A03;

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 102);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        byte[] bArr = {-8, -16, -12, -14, -16, -14, -66, -53, -53, -56, -37, -59, -49, -37, -62, -47, -54, -54, -63, -56, -37, -56, -53, -61, -61, -63, -64, -13, -12, -14, -1, -31, -28, -1, -23, -28, -1, -21, -27, -7, 17, 18, 16, 29, 0, 19, 12, 2, 10, 3, 29, 9, 3, 23, -48, -47, -49, -36, -48, -62, -49, -45, -58, -64, -62, -36, -62, -43, -47, -49, -66, -48, 21, 22, 20, 33, 21, 7, 20, 24, 11, 5, 7, 33, 21, 6, 13, 33, 24, 7, 20, 21, 11, 17, 16};
        if (A05[5].length() == 23) {
            throw new RuntimeException();
        }
        A05[5] = "AJ3";
        A04 = bArr;
    }

    static {
        A04();
        A06 = UN.class.getSimpleName();
    }

    public UN(Context context, AudienceNetworkRemoteServiceApi.MessageHandler messageHandler, AudienceNetworkRemoteServiceApi.PackageVerifier packageVerifier) {
        super(Looper.getMainLooper());
        this.A00 = context;
        this.A02 = packageVerifier;
        this.A03 = VM.A00();
        this.A01 = messageHandler;
    }

    public static Bundle A00() {
        Bundle bundle = new Bundle();
        bundle.putString(A03(72, 23, 92), A03(0, 6, 92));
        bundle.putString(A03(54, 18, 23), new JSONObject().toString());
        return bundle;
    }

    private C2332gz A01(C2328gv c2328gv, String str) {
        C2332gz c2332gz = new C2332gz(c2328gv, this.A03, str);
        c2332gz.A0G(c2328gv.A0B(), c2328gv.A07());
        return c2332gz;
    }

    private C2329gw A02(C2319gm c2319gm, String str) {
        C2329gw c2329gw = new C2329gw(c2319gm, this.A03, str);
        c2329gw.A0J(c2319gm.A05, c2319gm.A02, c2319gm.A08);
        return c2329gw;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        String str;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            if (this.A01 != null && this.A01.handleMessage(msg)) {
                return;
            }
            Messenger messenger = msg.replyTo;
            if (msg.what == 1) {
                if (messenger != null) {
                    VM.A00().A07(2, null, A00(), messenger);
                    return;
                }
                return;
            }
            String callingAppPackage = msg.getData().getString(A03(27, 13, 58));
            if (callingAppPackage == null) {
                return;
            }
            C2111dL A052 = RB.A05(this.A00, callingAppPackage);
            A052.A0F().AIi(msg.getData().getBoolean(A03(6, 21, 22), false));
            if (this.A02 != null) {
                str = this.A02.verifyPackage(this.A00, msg, msg.getData().getString(A03(40, 14, 88)));
            } else {
                str = null;
            }
            if (str == null) {
                if (messenger != null) {
                    VM.A00().A07(20, callingAppPackage, null, messenger);
                }
                A052.A0F().AHB();
                return;
            }
            switch (msg.what) {
                case 1010:
                    if (messenger == null) {
                        return;
                    }
                    UK A042 = VM.A00().A04(callingAppPackage);
                    if (A042 == null) {
                        A042 = VM.A00().A05(callingAppPackage, messenger, str);
                    }
                    C2328gv intAdModel = AbstractC1593Nt.A04(A052, msg.getData(), str);
                    if (A042.A00 == null) {
                        A042.A00 = A01(intAdModel, callingAppPackage);
                    } else if (A042.A00 instanceof C2332gz) {
                        ((C2332gz) A042.A00).A0G(intAdModel.A0B(), intAdModel.A07());
                    }
                    VM.A00().A07(1011, callingAppPackage, A00(), messenger);
                    return;
                case 1012:
                case 2002:
                    VM.A00().A08(callingAppPackage);
                    return;
                case 2000:
                    if (messenger == null) {
                        return;
                    }
                    UK A043 = VM.A00().A04(callingAppPackage);
                    if (A043 == null) {
                        A043 = VM.A00().A05(callingAppPackage, messenger, str);
                    }
                    C2319gm A053 = AbstractC1593Nt.A05(A052, msg.getData(), str);
                    if (A043.A00 == null) {
                        A043.A00 = A02(A053, callingAppPackage);
                    } else if (A043.A00 instanceof C2329gw) {
                        String adId = A053.A05;
                        ((C2329gw) A043.A00).A0J(adId, A053.A02, A053.A08);
                    }
                    VM.A00().A07(2001, callingAppPackage, A00(), messenger);
                    return;
                case 2003:
                    InterfaceC1576Nc A03 = VM.A00().A03(callingAppPackage);
                    if (A03 instanceof C2329gw) {
                        RewardData A01 = AbstractC1594Nu.A01(msg.getData());
                        C2329gw c2329gw = (C2329gw) A03;
                        if (A01 != null) {
                            c2329gw.A0I(A01);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Throwable th2) {
            if (A05[5].length() == 23) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[6] = "nIV8RMn07Ah5";
            strArr[1] = "ZacTvu5dUvRq7FGBf";
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
