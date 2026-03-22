package he;

import com.huawei.hms.framework.common.ContainerUtils;
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
/* compiled from: GPInstallReferrerParser.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f extends BaseCampaignParser {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52819d = new a(null);

    /* compiled from: GPInstallReferrerParser.kt */
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
        return CampaignType.GP_INSTALL_REFERRER;
    }

    @Override // he.g
    public boolean b(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        return StringsKt.b0(info, "utm_content", false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.Object] */
    @Override // com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser
    @Nullable
    protected CampaignInfo k(@NotNull String info, boolean z10) {
        Object obj;
        ?? r42;
        Intrinsics.checkNotNullParameter(info, "info");
        String decode = URLDecoder.decode(info);
        Logger.f41511a.e("CampaignNewTag", "GPInstallReferrerParser decodedInfo -> " + decode);
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
            Logger.f41511a.e("CampaignNewTag", "utmContentInfo -> " + str2);
            Iterator it2 = StringsKt.split$default(str2, new String[]{"_"}, false, 0, 6, null).iterator();
            while (true) {
                if (it2.hasNext()) {
                    r42 = it2.next();
                    if (StringsKt.b0((String) r42, "shortid", false, 2, null)) {
                        break;
                    }
                } else {
                    r42 = 0;
                    break;
                }
            }
            String str3 = r42;
            Logger.f41511a.e("CampaignNewTag", "shortIdInfo -> " + str3);
            if (str3 != null && str3.length() != 0) {
                i(v.d(info), str3);
                List split$default = StringsKt.split$default(str3, new String[]{"-"}, false, 0, 6, null);
                if (!Intrinsics.areEqual(split$default.get(0), "shortid")) {
                    return null;
                }
                return new CampaignInfo(a().getValue(), "", -1, "", Integer.parseInt(StringsKt.v1((String) split$default.get(1)).toString()));
            }
            if (!StringsKt.b0(info, "fb", false, 2, null) && !StringsKt.b0(info, "facebook", false, 2, null)) {
                h("shortIdInfo is null");
            }
            return null;
        }
        h("keyValue is null");
        return null;
    }

    @Override // he.g
    @NotNull
    public String name() {
        return "GPInstallReferrerParser";
    }

    @Override // he.g
    @NotNull
    public CampaignParserPriority priority() {
        return CampaignParserPriority.GP_INSTALL_REFERRER;
    }
}
