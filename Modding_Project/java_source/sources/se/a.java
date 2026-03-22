package se;

import androidx.webkit.ProxyConfig;
import com.startshorts.androidplayer.bean.configure.UrlController;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.p;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import me.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import rs.c;
/* compiled from: UrlJsonConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements b<UrlController> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f66347b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f66346a = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final UrlController f66348c = new UrlController("https://h5.shorttv.live/share01.html", "https://h5.shorttv.live/share02.html", CollectionsKt.t("https://api.shorttv.app"));

    private a() {
    }

    private final boolean f(String str) {
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("UrlJsonConfigure", "update failed -> json is blank");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            UrlController urlController = f66348c;
            urlController.setShareUrl(jSONObject.optString("shareUrl"));
            JSONArray optJSONArray = jSONObject.optJSONArray("alternateDomainGroup");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                int length = optJSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    String optString = optJSONArray.optString(i10);
                    if (optString != null && optString.length() != 0 && StringsKt.b0(optString, ProxyConfig.MATCH_HTTP, false, 2, null)) {
                        arrayList.add(optString);
                    }
                }
                if (!arrayList.isEmpty()) {
                    urlController.setAlternateDomainGroup(arrayList);
                    p.a aVar = p.f41802a;
                    List<String> t10 = CollectionsKt.t(aVar.c());
                    t10.addAll(arrayList);
                    aVar.j(t10);
                }
            }
            return true;
        } catch (Exception e10) {
            Logger.f41511a.e("UrlJsonConfigure", "update failed " + e10);
            return false;
        }
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(f(str));
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h("url_product_android", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f66347b = z10;
    }

    @Override // me.b
    public boolean e() {
        return f66347b;
    }

    @Override // me.b
    @NotNull
    /* renamed from: g */
    public UrlController value() {
        return f66348c;
    }
}
