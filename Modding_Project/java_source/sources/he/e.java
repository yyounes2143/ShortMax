package he;

import android.net.Uri;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import java.net.URLDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GADeeplinkParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52818d = new a(null);

    /* compiled from: GADeeplinkParser.kt */
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
        return CampaignType.GA_DEEPLINK;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return StringsKt.b0(info, "shortid", false, 2, null);
    }

    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        String str;
        Intrinsics.checkNotNullParameter(info, "info");
        String decode = URLDecoder.decode(info);
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "GADeeplinkParser decodedDeepLink -> " + decode);
        Uri parse = Uri.parse(decode);
        String queryParameter = parse.getQueryParameter("shortid");
        if (queryParameter != null) {
            str = StringsKt.v1(queryParameter).toString();
        } else {
            str = null;
        }
        String lastPathSegment = parse.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        logger.e("CampaignNewTag", "adSource(" + lastPathSegment + ") shortsId(" + str + ')');
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shortid:");
        sb2.append(str);
        i(lastPathSegment, sb2.toString());
        if (str == null || str.length() == 0) {
            return null;
        }
        return new CampaignInfo(a().getValue(), "", -1, "", Integer.parseInt(str));
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "GADeeplinkParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.GA_DEEPLINK;
    }
}
