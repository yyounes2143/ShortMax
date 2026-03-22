package he;

import android.net.Uri;
import com.adjust.sdk.Constants;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import java.net.URLDecoder;
import java.util.Iterator;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AFConversionDataParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0766a f52814d = new C0766a(null);

    /* compiled from: AFConversionDataParser.kt */
    @Metadata
    /* renamed from: he.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0766a {
        public /* synthetic */ C0766a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0766a() {
        }
    }

    @Override // he.g
    @NotNull
    public CampaignType a() {
        return CampaignType.AF_CONVERSION_DATA;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (!StringsKt.b0(info, Constants.DEEPLINK, false, 2, null) && !StringsKt.b0(info, "af_dp", false, 2, null) && !StringsKt.b0(info, MBInterstitialActivity.INTENT_CAMAPIGN, false, 2, null)) {
            return false;
        }
        return true;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        String str;
        String str2;
        Object obj;
        String str3;
        Intrinsics.checkNotNullParameter(info, "info");
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AFConversionDataParser info -> " + info);
        JSONObject jSONObject = new JSONObject(info);
        String str4 = "";
        if (jSONObject.has(Constants.DEEPLINK)) {
            str = jSONObject.getString(Constants.DEEPLINK);
        } else if (!jSONObject.has("af_dp")) {
            str = "";
        } else {
            str = jSONObject.getString("af_dp");
        }
        if (!jSONObject.has(MBInterstitialActivity.INTENT_CAMAPIGN)) {
            str2 = "";
        } else {
            str2 = jSONObject.getString(MBInterstitialActivity.INTENT_CAMAPIGN);
        }
        if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
            if (str != null && str.length() != 0) {
                String decode = URLDecoder.decode(str);
                logger.e("CampaignNewTag", "decodedDeepLink -> " + decode);
                Uri parse = Uri.parse(decode);
                String queryParameter = parse.getQueryParameter("shortid");
                if (queryParameter != null) {
                    str3 = StringsKt.v1(queryParameter).toString();
                } else {
                    str3 = null;
                }
                String lastPathSegment = parse.getLastPathSegment();
                if (lastPathSegment != null) {
                    str4 = lastPathSegment;
                }
                logger.e("CampaignNewTag", "adSource(" + str4 + ") shortsId(" + str3 + ')');
                StringBuilder sb2 = new StringBuilder();
                sb2.append("shortid:");
                sb2.append(str3);
                i(str4, sb2.toString());
            } else {
                Intrinsics.checkNotNull(str2);
                Iterator it = StringsKt.split$default(str2, new String[]{"_"}, false, 0, 6, null).iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (StringsKt.b0((String) obj, "shortid", false, 2, null)) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                String str5 = (String) obj;
                if (str5 != null && str5.length() != 0) {
                    Logger logger2 = Logger.f41511a;
                    logger2.e("CampaignNewTag", "shortIdInfo -> " + str5);
                    str3 = (String) StringsKt.split$default(str5, new String[]{"-"}, false, 0, 6, null).get(1);
                    String d10 = v.d(info);
                    logger2.e("CampaignNewTag", "adSource(" + d10 + ") shortsId(" + str3 + ')');
                    i(d10, str5);
                } else {
                    str3 = null;
                }
            }
            if (str3 == null || str3.length() == 0) {
                return null;
            }
            return new CampaignInfo(a().getValue(), "", -1, "", Integer.parseInt(str3));
        }
        h("deepLink and campaign is null");
        return null;
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "AFConversionDataParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.AF_CONVERSION_DATA;
    }
}
