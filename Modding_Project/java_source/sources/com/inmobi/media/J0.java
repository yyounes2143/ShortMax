package com.inmobi.media;

import android.os.Handler;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3113p8;
import com.inmobi.media.J0;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class J0 extends G1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ S0 f23747d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J0(S0 s02) {
        super(s02);
        this.f23747d = s02;
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        HashMap a10;
        S0 s02 = (S0) this.f23669b.get();
        if (s02 != null) {
            try {
                byte J = s02.J();
                JSONObject pubContent = new JSONObject(s02.L());
                AdConfig adConfig = s02.j();
                Intrinsics.checkNotNull(adConfig);
                if (s02.y() == null) {
                    a10 = null;
                } else {
                    boolean z10 = T9.f24217a;
                    C3248y0 y10 = s02.y();
                    a10 = T9.a(y10 != null ? y10.h() : null);
                }
                InterfaceC3269z5 interfaceC3269z5 = this.f23747d.f24083j;
                Intrinsics.checkNotNullParameter(pubContent, "pubContent");
                Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                final C3113p8 c3113p8 = new C3113p8(J, pubContent, null, false, adConfig, a10, null, interfaceC3269z5);
                Handler D = this.f23747d.D();
                if (D != null) {
                    final S0 s03 = this.f23747d;
                    D.post(new Runnable() { // from class: ub.m0
                        @Override // java.lang.Runnable
                        public final void run() {
                            J0.a(C3113p8.this, s03);
                        }
                    });
                }
            } catch (Exception e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f23747d.f24083j;
                if (interfaceC3269z52 != null) {
                    String e11 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                    ((A5) interfaceC3269z52).a(e11, "Exception for handleInterActive ", e10);
                }
                s02.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 76);
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        S0 s02 = (S0) this.f23669b.get();
        if (s02 != null) {
            s02.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOW_MEMORY), true, (short) 40);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00eb A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f5 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fe A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0111 A[Catch: Exception -> 0x003d, TRY_ENTER, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0122 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x000f, B:5:0x0017, B:8:0x001f, B:10:0x0036, B:15:0x0042, B:17:0x0048, B:22:0x0054, B:24:0x00b1, B:25:0x00bf, B:27:0x00c5, B:29:0x00c9, B:30:0x00e3, B:31:0x00e5, B:33:0x00eb, B:34:0x00ee, B:38:0x00f8, B:40:0x00fe, B:41:0x0105, B:44:0x0111, B:46:0x0117, B:47:0x0122, B:49:0x0128, B:37:0x00f5), top: B:56:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.C3113p8 r28, com.inmobi.media.S0 r29) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.J0.a(com.inmobi.media.p8, com.inmobi.media.S0):void");
    }
}
