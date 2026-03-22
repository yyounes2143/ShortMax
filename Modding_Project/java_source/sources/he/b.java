package he;

import android.net.Uri;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AJConversionDataParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52815d = new a(null);

    /* compiled from: AJConversionDataParser.kt */
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
        return CampaignType.AJ_CONVERSION_DATA;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (!StringsKt.b0(info, "adj_deep_link", false, 2, null) && !StringsKt.b0(info, MBInterstitialActivity.INTENT_CAMAPIGN, false, 2, null)) {
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
        Integer num;
        String obj2;
        Intrinsics.checkNotNullParameter(info, "info");
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "AJConversionDataParser info -> " + info);
        JSONObject jSONObject = new JSONObject(info);
        String str4 = "";
        if (!jSONObject.has("adj_deep_link")) {
            str = "";
        } else {
            str = jSONObject.getString("adj_deep_link");
        }
        if (!jSONObject.has(MBInterstitialActivity.INTENT_CAMAPIGN)) {
            str2 = "";
        } else {
            str2 = jSONObject.getString(MBInterstitialActivity.INTENT_CAMAPIGN);
        }
        if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
            if (str != null && str.length() != 0) {
                String decode = URLDecoder.decode(str);
                logger.e("CampaignNewTag", "AJConversionDataParser decodedDeepLink -> " + decode);
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
                logger.e("CampaignNewTag", "AJConversionDataParser adSource(" + str4 + ") shortsId(" + str3 + ')');
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
                    logger2.e("CampaignNewTag", "AJConversionDataParser shortIdInfo -> " + str5);
                    List split$default = StringsKt.split$default(str5, new String[]{"-"}, false, 0, 6, null);
                    if (split$default.size() > 1 && StringsKt.toIntOrNull((String) split$default.get(1)) != null) {
                        str3 = (String) split$default.get(1);
                        String d10 = v.d(info);
                        logger2.e("CampaignNewTag", "AJConversionDataParser adSource(" + d10 + ") shortsId(" + str3 + ')');
                        i(d10, str5);
                    }
                }
                str3 = null;
            }
            if (str3 != null && (obj2 = StringsKt.v1(str3).toString()) != null) {
                num = StringsKt.toIntOrNull(obj2);
            } else {
                num = null;
            }
            if (num == null) {
                return null;
            }
            return new CampaignInfo(a().getValue(), "", -1, "", num.intValue());
        }
        h("deepLink and campaign is null");
        return null;
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "AJConversionDataParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.AJ_CONVERSION_DATA;
    }
}
