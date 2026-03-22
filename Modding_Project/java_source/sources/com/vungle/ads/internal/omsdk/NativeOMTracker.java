package com.vungle.ads.internal.omsdk;

import android.util.Base64;
import android.view.View;
import com.iab.omid.library.vungle.Omid;
import com.iab.omid.library.vungle.adsession.AdEvents;
import com.iab.omid.library.vungle.adsession.AdSession;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.CreativeType;
import com.iab.omid.library.vungle.adsession.ImpressionType;
import com.iab.omid.library.vungle.adsession.Owner;
import com.iab.omid.library.vungle.adsession.Partner;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.internal.model.OmSdkData;
import com.vungle.ads.internal.util.Logger;
import java.net.URL;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: NativeOMTracker.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NativeOMTracker {
    @Nullable
    private AdEvents adEvents;
    @Nullable
    private AdSession adSession;
    @NotNull
    private final kotlinx.serialization.json.a json;

    public NativeOMTracker(@NotNull String omSdkData, @NotNull String omSdkJS) {
        OmSdkData omSdkData2;
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(omSdkData, "omSdkData");
        Intrinsics.checkNotNullParameter(omSdkJS, "omSdkJS");
        kotlinx.serialization.json.a b10 = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.omsdk.NativeOMTracker$json$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
                invoke2(cVar);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull c Json) {
                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                Json.f(true);
                Json.d(true);
                Json.e(false);
            }
        }, 1, null);
        this.json = b10;
        try {
            AdSessionConfiguration createAdSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(CreativeType.NATIVE_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false);
            Partner createPartner = Partner.createPartner(BuildConfig.OMSDK_PARTNER_NAME, BuildConfig.VERSION_NAME);
            byte[] decode = Base64.decode(omSdkData, 0);
            if (decode != null) {
                String str4 = new String(decode, Charsets.UTF_8);
                KSerializer<Object> c10 = t.c(b10.getSerializersModule(), Reflection.typeOf(OmSdkData.class));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                omSdkData2 = (OmSdkData) b10.b(c10, str4);
            } else {
                omSdkData2 = null;
            }
            if (omSdkData2 != null) {
                str = omSdkData2.getVendorKey();
            } else {
                str = null;
            }
            if (omSdkData2 != null) {
                str2 = omSdkData2.getVendorURL();
            } else {
                str2 = null;
            }
            URL url = new URL(str2);
            if (omSdkData2 != null) {
                str3 = omSdkData2.getParams();
            } else {
                str3 = null;
            }
            VerificationScriptResource verificationScriptResource = VerificationScriptResource.createVerificationScriptResourceWithParameters(str, url, str3);
            Intrinsics.checkNotNullExpressionValue(verificationScriptResource, "verificationScriptResource");
            this.adSession = AdSession.createAdSession(createAdSessionConfiguration, AdSessionContext.createNativeAdSessionContext(createPartner, omSdkJS, CollectionsKt.e(verificationScriptResource), null, null));
        } catch (Exception e10) {
            Logger.Companion.e("NativeOMTracker", "error occured when create omsdk adSession:", e10);
        }
    }

    public final void impressionOccurred() {
        AdEvents adEvents = this.adEvents;
        if (adEvents != null) {
            adEvents.impressionOccurred();
        }
    }

    public final void start(@NotNull View view) {
        AdSession adSession;
        Intrinsics.checkNotNullParameter(view, "view");
        if (Omid.isActive() && (adSession = this.adSession) != null) {
            adSession.registerAdView(view);
            adSession.start();
            AdEvents createAdEvents = AdEvents.createAdEvents(adSession);
            this.adEvents = createAdEvents;
            if (createAdEvents != null) {
                createAdEvents.loaded();
            }
        }
    }

    public final void stop() {
        AdSession adSession = this.adSession;
        if (adSession != null) {
            adSession.finish();
        }
        this.adSession = null;
    }
}
