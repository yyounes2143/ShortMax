package com.inmobi.media;

import com.google.ads.mediation.vungle.VungleConstants;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class V6 extends AbstractC3166se {

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f24305d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f24306e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakReference f24307f;

    /* renamed from: g  reason: collision with root package name */
    public short f24308g;

    /* renamed from: h  reason: collision with root package name */
    public String f24309h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V6(S0 adUnit, C2905ca oAManager, byte[] response, InterfaceC3269z5 interfaceC3269z5) {
        super(adUnit, (byte) 3);
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(oAManager, "oAManager");
        Intrinsics.checkNotNullParameter(response, "response");
        this.f24305d = response;
        this.f24306e = interfaceC3269z5;
        this.f24307f = new WeakReference(oAManager);
    }

    @Override // com.inmobi.media.AbstractC3166se
    public final void a(Object obj) {
        C3248y0 c3248y0 = (C3248y0) obj;
        InterfaceC3269z5 interfaceC3269z5 = this.f24306e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("LoadWithResponseWorker", "onComplete");
        }
        C2905ca c2905ca = (C2905ca) this.f24307f.get();
        if (c2905ca == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24306e;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("LoadWithResponseWorker", "oAManager is null");
            }
        } else if (c3248y0 == null) {
            short s10 = this.f24308g;
            if (s10 != 0) {
                HashMap k10 = kotlin.collections.p0.k(ms.k.a("errorCode", Short.valueOf(s10)));
                String str = this.f24309h;
                if (str != null) {
                    k10.put("reason", str);
                }
                c2905ca.f24554a.b((Map<String, Object>) k10);
            }
            c2905ca.f24554a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), (short) 0);
            InterfaceC3269z5 interfaceC3269z53 = this.f24306e;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).b("LoadWithResponseWorker", "adSet null. fail with error code - " + ((int) this.f24308g));
            }
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f24306e;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).c("LoadWithResponseWorker", "loading response");
            }
            c2905ca.f24554a.b(c3248y0);
        }
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        S0 s02;
        super.c();
        InterfaceC3269z5 interfaceC3269z5 = this.f24306e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).b("LoadWithResponseWorker", "Encountered OOM");
        }
        C2905ca c2905ca = (C2905ca) this.f24307f.get();
        if (c2905ca != null && (s02 = c2905ca.f24554a) != null) {
            s02.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), (short) 2146);
        }
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24306e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("LoadWithResponseWorker", "execute task start");
        }
        C2905ca c2905ca = (C2905ca) this.f24307f.get();
        if (c2905ca == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24306e;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).b("LoadWithResponseWorker", "OAManager null. failing.");
            }
            this.f24308g = (short) 2142;
            b(null);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f24306e;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).a("LoadWithResponseWorker", "getting network response from byte array");
        }
        byte[] value = this.f24305d;
        Intrinsics.checkNotNullParameter(value, "response");
        P9 mResponse = new P9();
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.length == 0) {
            mResponse.f23980b = new byte[0];
        } else {
            byte[] bArr = new byte[value.length];
            mResponse.f23980b = bArr;
            System.arraycopy(value, 0, bArr, 0, value.length);
        }
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        I9 i92 = mResponse.f23982d;
        if (i92 != null) {
            switch (U.f24227a[i92.f23737a.ordinal()]) {
                case 1:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    break;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    I9 i93 = mResponse.f23982d;
                    String str = i93 != null ? i93.f23738b : null;
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                        break;
                    }
                    break;
                case 3:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    break;
                case 9:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    break;
                default:
                    new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    break;
            }
        }
        try {
            InterfaceC3269z5 interfaceC3269z54 = this.f24306e;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).a("LoadWithResponseWorker", "start parsing response");
            }
            JSONObject jsonResponse = new JSONObject(mResponse.a());
            long j10 = jsonResponse.getLong(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID);
            InterfaceC3269z5 interfaceC3269z55 = this.f24306e;
            if (interfaceC3269z55 != null) {
                ((A5) interfaceC3269z55).e(VungleConstants.KEY_PLACEMENT_ID, String.valueOf(j10));
            }
            InterfaceC3269z5 interfaceC3269z56 = this.f24306e;
            if (interfaceC3269z56 != null) {
                ((A5) interfaceC3269z56).a("LoadWithResponseWorker", "placement id: " + j10);
            }
            B0 p10 = c2905ca.f24554a.p();
            p10.getClass();
            Intrinsics.checkNotNullParameter(jsonResponse, "jsonResponse");
            b(p10.a(jsonResponse));
        } catch (K e10) {
            this.f24308g = e10.f23766b;
            InterfaceC3269z5 interfaceC3269z57 = this.f24306e;
            if (interfaceC3269z57 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z57).a(e11, "Exception while parsing OAResponse", e10);
            }
            b(null);
        } catch (JSONException e12) {
            this.f24308g = (short) 2145;
            this.f24309h = e12.getMessage();
            InterfaceC3269z5 interfaceC3269z58 = this.f24306e;
            if (interfaceC3269z58 != null) {
                String e13 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
                ((A5) interfaceC3269z58).a(e13, "Exception while parsing OAResponse", e12);
            }
            b(null);
        }
    }
}
