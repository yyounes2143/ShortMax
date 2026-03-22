package he;

import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import jk.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UploadCampaignInfoResultParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class i extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52821d = new a(null);

    /* compiled from: UploadCampaignInfoResultParser.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // he.g
    @NotNull
    public CampaignType a() {
        return CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return StringsKt.b0(info, CallAppDataKey.KEY_SHORT_PLAY_ID, false, 2, null);
    }

    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        Integer num;
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.e("CampaignNewTag", "UploadCampaignInfoResultParser info -> " + info);
        UploadCampaignInfoResult uploadCampaignInfoResult = (UploadCampaignInfoResult) l.b(info, UploadCampaignInfoResult.class);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shortPlayId:");
        if (uploadCampaignInfoResult != null) {
            num = Integer.valueOf(uploadCampaignInfoResult.getShortPlayId());
        } else {
            num = null;
        }
        sb2.append(num);
        i("", sb2.toString());
        if (uploadCampaignInfoResult == null) {
            return null;
        }
        return new CampaignInfo(a().getValue(), "", -1, "", uploadCampaignInfoResult.getShortPlayId());
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "LPInfoParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.UPLOAD_CAMPAIGN_INFO_RESULT;
    }
}
