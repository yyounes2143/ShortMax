package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UploadCampaignInfoResultProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e extends BaseCampaignProvider {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f42057g = new a(null);

    /* compiled from: UploadCampaignInfoResultProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @Nullable
    protected Object l(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "UploadCampaignInfoResultProvider queryInternal");
        if (e()) {
            logger.e("CampaignNewTag", "UploadCampaignInfoResultProvider isQueried parse");
            CampaignParser.f41836a.x();
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "UploadCampaignInfoResultProvider";
    }
}
