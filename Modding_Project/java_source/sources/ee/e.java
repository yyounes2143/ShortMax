package ee;

import android.util.Base64;
import com.startshorts.androidplayer.bean.dns.HttpDNSRequest;
import java.nio.charset.Charset;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestSigner.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRequestSigner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestSigner.kt\ncom/startshorts/androidplayer/manager/api/dns/RequestSigner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"})
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f51342a = new e();

    private e() {
    }

    @NotNull
    public final HttpDNSRequest a(@NotNull String url, @NotNull List<String> domains, long j10, int i10) {
        List<String> list;
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(domains, "domains");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GET/v2/dns/query_multi");
        sb2.append(CollectionsKt.A0(domains, ",", null, null, 0, null, null, 62, null));
        sb2.append(j10);
        String sb3 = sb2.toString();
        try {
            Charset charset = Charsets.UTF_8;
            byte[] bytes = "TX14MLG8Natm31zkswJZYTZ9oZVbyW06".getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] bytes2 = sb3.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            str = Base64.encodeToString(mac.doFinal(bytes2), 2);
        } catch (Exception unused) {
            str = "";
        }
        String str2 = url + "/v2/dns/query_multi?domain=" + CollectionsKt.A0(list, ",", null, null, 0, null, null, 62, null) + "&ts=" + j10 + "&query_type=" + i10;
        Intrinsics.checkNotNull(str);
        return new HttpDNSRequest(str2, str);
    }
}
