package oe;

import android.content.Context;
import com.appsflyer.AdRevenueScheme;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdCountryTierConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e implements me.b<String> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f63183b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f63182a = new e();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static String f63184c = "t1";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static me.a f63185d = new me.a();

    private e() {
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
        boolean z10 = false;
        try {
            JSONArray jSONArray = new JSONArray(str);
            f63185d.b(str);
            String h02 = AccountRepo.f43052a.h0();
            if (h02.length() == 0) {
                h02 = DeviceUtil.f48146a.l().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(h02, "toLowerCase(...)");
                Logger.f41511a.h("AdCountryTierJsonConfigure", "init -> getCountryCodeFromLocaleNoCache=" + h02);
            }
            if (h02.length() == 0) {
                h02 = DeviceUtil.f48146a.m();
                Logger.f41511a.h("AdCountryTierJsonConfigure", "init -> getCountryCodeFromMCC=" + h02);
            }
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                JSONArray jSONArray2 = jSONObject.getJSONArray(AdRevenueScheme.COUNTRY);
                String string = jSONObject.getString("tier");
                String jSONArray3 = jSONArray2.toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray3, "toString(...)");
                if (StringsKt.Z(jSONArray3, '\"' + h02 + '\"', true)) {
                    f63184c = string;
                    Logger.f41511a.h("AdCountryTierJsonConfigure", "init -> tier=" + f63184c + ", on matched");
                } else if (i10 == jSONArray.length() - 1) {
                    f63184c = string;
                    Logger.f41511a.h("AdCountryTierJsonConfigure", "init -> tier=" + f63184c + ", on fallback");
                }
                z10 = true;
                break;
            }
        } catch (Exception e10) {
            Logger.f41511a.e("AdCountryTierJsonConfigure", "init exception -> " + e10.getMessage());
        }
        Boolean a10 = kotlin.coroutines.jvm.internal.a.a(z10);
        boolean booleanValue = a10.booleanValue();
        Logger.f41511a.h("AdCountryTierJsonConfigure", "init -> succeed=" + booleanValue);
        return a10;
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull rs.c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h("adCountryTier_android", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f63183b = z10;
    }

    @Override // me.b
    @Nullable
    public Object d(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = AppConfigureUtil.f42209a.g(context, "adCountryTier_android", this, cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public boolean e() {
        return f63183b;
    }

    @Nullable
    public Object f(@NotNull rs.c<? super Unit> cVar) {
        Object e10 = f63185d.e(this, cVar);
        if (e10 == kotlin.coroutines.intrinsics.a.f()) {
            return e10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    @NotNull
    /* renamed from: g */
    public String value() {
        return f63184c;
    }
}
