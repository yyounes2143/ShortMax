package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import android.net.Uri;
import com.facebook.applinks.a;
import com.facebook.v;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FBDeepLinkProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c extends BaseCampaignProvider {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f42052g = new a(null);

    /* compiled from: FBDeepLinkProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void q(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "FBDeeplinkProvider handleQuerySuccess -> " + str);
        BaseCampaignProvider.i(this, 0, 1, null);
        o();
        n(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(c cVar, com.facebook.applinks.a aVar) {
        String str;
        Uri g10;
        if (aVar != null && (g10 = aVar.g()) != null) {
            str = g10.toString();
        } else {
            str = null;
        }
        cVar.q(str);
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.FB_DEEPLINK;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @Nullable
    protected Object l(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "queryInternal FBDeepLinkProvider");
        if (e()) {
            return Unit.f60915a;
        }
        f();
        v.W(true);
        v.j();
        logger.e("CampaignNewTag", "fetchDeferredAppLinkData()");
        com.facebook.applinks.a.c(context, new a.b() { // from class: ie.h
            @Override // com.facebook.applinks.a.b
            public final void a(com.facebook.applinks.a aVar) {
                com.startshorts.androidplayer.manager.attribution.provider.c.r(com.startshorts.androidplayer.manager.attribution.provider.c.this, aVar);
            }
        });
        return Unit.f60915a;
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "FBDeepLinkProvider";
    }
}
