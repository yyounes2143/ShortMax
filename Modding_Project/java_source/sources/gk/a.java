package gk;

import com.huawei.hms.framework.common.ContainerUtils;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import fk.u;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: MetaInstallReferrerUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetaInstallReferrerUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetaInstallReferrerUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MetaInstallReferrerUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,158:1\n739#2,9:159\n37#3:168\n36#3,3:169\n*S KotlinDebug\n*F\n+ 1 MetaInstallReferrerUtil.kt\ncom/startshorts/androidplayer/utils/campaign/MetaInstallReferrerUtil\n*L\n136#1:159,9\n136#1:168\n136#1:169,3\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52405a = new a();

    private a() {
    }

    private final String a(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (Intrinsics.areEqual(key, "utm_content")) {
                value = str;
            }
            if (sb2.length() > 0) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            sb2.append(key);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(value);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    private final Map<String, String> b(String str) {
        List n10;
        String[] strArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<String> q10 = new Regex(ContainerUtils.FIELD_DELIMITER).q(str, 0);
        if (!q10.isEmpty()) {
            ListIterator<String> listIterator = q10.listIterator(q10.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().length() != 0) {
                    n10 = CollectionsKt.V0(q10, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        n10 = CollectionsKt.n();
        for (String str2 : (String[]) n10.toArray(new String[0])) {
            int q02 = StringsKt.q0(str2, ContainerUtils.KEY_VALUE_DELIMITER, 0, false, 6, null);
            String substring = str2.substring(0, q02);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            String substring2 = str2.substring(q02 + 1);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            linkedHashMap.put(substring, substring2);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String c(@NotNull String info) {
        String str;
        Intrinsics.checkNotNullParameter(info, "info");
        String decode = URLDecoder.decode(info);
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "parseReferrerInfo decodedInfo -> " + decode);
        Intrinsics.checkNotNull(decode);
        Map<String, String> b10 = b(decode);
        String str2 = b10.get("utm_content");
        if (str2 == null) {
            str2 = "";
        }
        JSONObject jSONObject = new JSONObject(str2);
        String str3 = b10.get("utm_source");
        String str4 = null;
        if (str3 != null && !StringsKt.b0(str3, "facebook", false, 2, null) && (str = b10.get("utm_source")) != null && !StringsKt.b0(str, "instagram", false, 2, null)) {
            return "";
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("source");
        String a10 = hk.a.a(u.f51776a.d(R$string.fb_parse_key), jSONObject2.getString("nonce"), jSONObject2.getString("data"));
        logger.e("CampaignNewTag", "parseReferrerInfo decrypt result -> " + a10);
        if (a10 != null && a10.length() != 0) {
            String string = new JSONObject(a10).getString("campaign_group_name");
            Intrinsics.checkNotNull(string);
            Iterator it = StringsKt.split$default(string, new String[]{"_"}, false, 0, 6, null).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (StringsKt.b0((String) next, "shortid", false, 2, null)) {
                    str4 = next;
                    break;
                }
            }
            String str5 = str4;
            Logger logger2 = Logger.f41511a;
            logger2.e("CampaignNewTag", "shortIdInfo -> " + str5);
            if (str5 != null && str5.length() != 0 && Intrinsics.areEqual(StringsKt.split$default(str5, new String[]{"-"}, false, 0, 6, null).get(0), "shortid")) {
                try {
                    jSONObject2.put("data", a10);
                    jSONObject.put("source", jSONObject2);
                    String jSONObject3 = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject3, "toString(...)");
                    return a(b10, jSONObject3);
                } catch (Exception unused) {
                }
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.bean.campaign.MetaInstallReferrer d() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gk.a.d():com.startshorts.androidplayer.bean.campaign.MetaInstallReferrer");
    }
}
