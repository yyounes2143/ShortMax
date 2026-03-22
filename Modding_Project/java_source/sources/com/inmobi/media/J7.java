package com.inmobi.media;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class J7 extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f23757a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ T7 f23758b;

    public J7(T7 t72, T7 originalContainer) {
        Intrinsics.checkNotNullParameter(originalContainer, "originalContainer");
        this.f23758b = t72;
        this.f23757a = new WeakReference(originalContainer);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        String str;
        boolean z10;
        String str2;
        T7 c2870a9;
        Activity context = this.f23758b.f();
        if (context == null) {
            Intrinsics.checkNotNullExpressionValue(this.f23758b.f24188m, "access$getTAG$p(...)");
            return;
        }
        T7 t72 = (T7) this.f23757a.get();
        if (t72 != null && !t72.f24195t) {
            try {
                C3113p8 c3113p8 = t72.f24177b;
                JSONArray jSONArray = c3113p8.f25139f;
                try {
                    if (jSONArray != null && !B2.a(jSONArray)) {
                        Intrinsics.checkNotNullExpressionValue(this.f23758b.f24188m, "access$getTAG$p(...)");
                        JSONObject e10 = c3113p8.e();
                        if (e10 == null) {
                            return;
                        }
                        T7 t73 = this.f23758b;
                        byte b10 = t73.f24176a;
                        if (b10 == 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        C3113p8 dataModel = new C3113p8(b10, e10, c3113p8, z10, t73.f24194s, t73.f24185j);
                        if (dataModel.f()) {
                            String adImpressionId = this.f23758b.getImpressionId();
                            T7 t74 = this.f23758b;
                            AdConfig adConfig = t74.f24194s;
                            long j10 = t74.f24180e;
                            boolean z11 = t74.f24181f;
                            String creativeId = t74.getCreativeId();
                            T7 t75 = this.f23758b;
                            S6 s62 = t75.f24184i;
                            InterfaceC3269z5 interfaceC3269z5 = t75.f24185j;
                            Intrinsics.checkNotNullParameter(context, "context");
                            Intrinsics.checkNotNullParameter(dataModel, "dataModel");
                            Intrinsics.checkNotNullParameter(adImpressionId, "adImpressionId");
                            Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                            Intrinsics.checkNotNullParameter(creativeId, "creativeId");
                            try {
                                if (dataModel.c().contains("VIDEO")) {
                                    try {
                                        str2 = "access$getTAG$p(...)";
                                        c2870a9 = new C2870a9(context, (byte) 0, dataModel, adImpressionId, null, adConfig, j10, z11, creativeId, null, s62, interfaceC3269z5);
                                    } catch (Exception e11) {
                                        e = e11;
                                        str2 = "access$getTAG$p(...)";
                                        str = str2;
                                        T7 t76 = this.f23758b;
                                        InterfaceC3269z5 interfaceC3269z52 = t76.f24185j;
                                        if (interfaceC3269z52 != null) {
                                            String str3 = t76.f24188m;
                                            Intrinsics.checkNotNullExpressionValue(str3, str);
                                            ((A5) interfaceC3269z52).a(str3, "Encountered unexpected error in EndCardBuilder: ", e);
                                        }
                                        S5 s52 = S5.f24132a;
                                        S5.f24135d.a(AbstractC3221w5.a(e, NotificationCompat.CATEGORY_EVENT));
                                        return;
                                    }
                                } else {
                                    str2 = "access$getTAG$p(...)";
                                    c2870a9 = new T7(context, (byte) 0, dataModel, adImpressionId, null, adConfig, j10, z11, creativeId, null, s62, interfaceC3269z5);
                                }
                                T7 t77 = c2870a9;
                                t77.H = t72.H;
                                t77.f24197v = t72;
                                T7 t78 = this.f23758b;
                                InterfaceC3269z5 interfaceC3269z53 = t78.f24185j;
                                if (interfaceC3269z53 != null) {
                                    String str4 = t78.f24188m;
                                    Intrinsics.checkNotNullExpressionValue(str4, str2);
                                    ((A5) interfaceC3269z53).a(str4, "End-card container built successfully ...");
                                }
                                t72.J = t77;
                            } catch (Exception e12) {
                                e = e12;
                            }
                        } else {
                            T7 t79 = this.f23758b;
                            InterfaceC3269z5 interfaceC3269z54 = t79.f24185j;
                            if (interfaceC3269z54 != null) {
                                String str5 = t79.f24188m;
                                Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                                ((A5) interfaceC3269z54).b(str5, "Invalid data model for end-card container! End card will not be shown ...");
                            }
                        }
                    } else {
                        Intrinsics.checkNotNullExpressionValue(this.f23758b.f24188m, "access$getTAG$p(...)");
                    }
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Exception e14) {
                e = e14;
                str = "access$getTAG$p(...)";
            }
        }
    }
}
