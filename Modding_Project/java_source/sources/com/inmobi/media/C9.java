package com.inmobi.media;

import android.content.Context;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class C9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f23535e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9(D9 d92) {
        super(d92);
        this.f23535e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Context applicationContext = context.getApplicationContext();
            tf tfVar = new tf(null);
            Cc cc2 = new Cc(OutOfContextTestingActivity.AD_UNIT_KEY, DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            Intrinsics.checkNotNull(applicationContext);
            return new GestureDetector$OnGestureListenerC2941ec(applicationContext, (byte) 0, null, null, false, null, 0L, null, null, cc2, tfVar, null, 252);
        } catch (Exception e10) {
            HashMap hashMap = D9.f23586c;
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return null;
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof GestureDetector$OnGestureListenerC2941ec) {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) view;
            this.f23535e.getClass();
            try {
                F9 f92 = asset instanceof F9 ? (F9) asset : null;
                gestureDetector$OnGestureListenerC2941ec.a(GestureDetector$OnGestureListenerC2941ec.Z0, adConfig);
                InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                if (interfaceC3269z5 != null) {
                    String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "disableUrlsToOpenInExternalApp " + gestureDetector$OnGestureListenerC2941ec);
                }
                gestureDetector$OnGestureListenerC2941ec.f24712y = true;
                Object obj = asset.f24582e;
                String str = obj instanceof String ? (String) obj : null;
                String str2 = f92 != null ? f92.f23652y : null;
                if (str2 != null) {
                    int hashCode = str2.hashCode();
                    if (hashCode == -1081286672) {
                        if (!str2.equals("REF_IFRAME")) {
                        }
                        gestureDetector$OnGestureListenerC2941ec.e(str);
                        return;
                    } else if (hashCode == 84303) {
                        if (!str2.equals("URL")) {
                        }
                        gestureDetector$OnGestureListenerC2941ec.e(str);
                        return;
                    } else if (hashCode == 2228139) {
                        if (!str2.equals("HTML")) {
                        }
                        gestureDetector$OnGestureListenerC2941ec.d(str);
                        return;
                    } else if (hashCode == 83774455) {
                        if (!str2.equals("REF_HTML")) {
                        }
                        gestureDetector$OnGestureListenerC2941ec.d(str);
                        return;
                    }
                }
                gestureDetector$OnGestureListenerC2941ec.e(str);
            } catch (Exception e10) {
                Intrinsics.checkNotNullExpressionValue("D9", "TAG");
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof GestureDetector$OnGestureListenerC2941ec) || ((GestureDetector$OnGestureListenerC2941ec) view).f24679h0) {
            return;
        }
        super.a(view);
    }
}
