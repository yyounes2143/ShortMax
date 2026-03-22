package he;

import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import fk.u;
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
/* compiled from: MetaInstallReferrerParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52820d = new a(null);

    /* compiled from: MetaInstallReferrerParser.kt */
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
        return CampaignType.META_INSTALL_REFERRER;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return StringsKt.b0(info, "data", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v9, types: [java.lang.Object] */
    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        Object obj;
        ?? r72;
        Intrinsics.checkNotNullParameter(info, "info");
        String decode = URLDecoder.decode(info);
        Logger.f41511a.e("CampaignNewTag", "MetaInstallReferrerParser decodedInfo -> " + decode);
        Intrinsics.checkNotNull(decode);
        Iterator it = StringsKt.split$default(decode, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6, null).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (StringsKt.b0((String) obj, "utm_content", false, 2, null)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        String str = (String) obj;
        if (str != null && str.length() != 0) {
            String str2 = (String) StringsKt.split$default(str, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, null).get(1);
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "utmContentInfo -> " + str2);
            JSONObject jSONObject = new JSONObject(str2).getJSONObject("source");
            String a10 = hk.a.a(u.f51776a.d(R$string.fb_parse_key), jSONObject.getString("nonce"), jSONObject.getString("data"));
            logger.e("CampaignNewTag", "MetaInstallReferrerParser decrypt result -> " + a10);
            if (a10 != null && a10.length() != 0) {
                String string = new JSONObject(a10).getString("campaign_group_name");
                Intrinsics.checkNotNull(string);
                Iterator it2 = StringsKt.split$default(string, new String[]{"_"}, false, 0, 6, null).iterator();
                while (true) {
                    if (it2.hasNext()) {
                        r72 = it2.next();
                        if (StringsKt.b0((String) r72, "shortid", false, 2, null)) {
                            break;
                        }
                    } else {
                        r72 = 0;
                        break;
                    }
                }
                String str3 = r72;
                Logger.f41511a.e("CampaignNewTag", "shortIdInfo -> " + str3);
                if (str3 != null && str3.length() != 0) {
                    if (z10) {
                        i(v.d(info), str3);
                    }
                    List split$default = StringsKt.split$default(str3, new String[]{"-"}, false, 0, 6, null);
                    if (!Intrinsics.areEqual(split$default.get(0), "shortid")) {
                        return null;
                    }
                    return new CampaignInfo(a().getValue(), "", -1, "", Integer.parseInt(StringsKt.v1((String) split$default.get(1)).toString()));
                }
                if (z10) {
                    h("shortIdInfo is null");
                }
                return null;
            }
            if (z10) {
                h("decryptResult is null");
            }
            return null;
        }
        if (z10) {
            h("keyValue is null");
        }
        return null;
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "MetaInstallReferrerParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.META_INSTALL_REFERRER;
    }
}
