package pe;

import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.configure.BlackDeviceController;
import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import me.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import rs.c;
/* compiled from: BlackDeviceJsonConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements b<BlackDeviceController> {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f64856b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f64855a = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final BlackDeviceController f64857c = new BlackDeviceController(CollectionsKt.t("PIC-LX9", "TAS-L29", "MRD-LX2", "MRD-LX1F", "JKM-LX1", "JKM-LX2", "INE-LX2", "LDN-L21", "DUB-LX1", "DUB-LX2", "DUB-LX3", "VIE-L29", "MGA-LX9", "EVA-L19", "LM-K200"));

    private a() {
    }

    private final void f(JSONObject jSONObject, BlackDeviceController blackDeviceController) {
        JSONArray optJSONArray = jSONObject.optJSONArray(Constants.PUSH);
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                String optString = optJSONArray.optString(i10);
                if (optString != null && optString.length() != 0) {
                    arrayList.add(optString);
                }
            }
            if (!arrayList.isEmpty()) {
                blackDeviceController.setPush(arrayList);
            }
        }
    }

    private final boolean g(String str) {
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("BlackDeviceJsonConfigure", "update failed -> json is blank");
            return false;
        }
        try {
            f64855a.f(new JSONObject(str), f64857c);
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BlackDeviceJsonConfigure", "update failed " + e10);
            return false;
        }
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(g(str));
    }

    @Override // me.b
    public void c(boolean z10) {
        f64856b = z10;
    }

    @Override // me.b
    public boolean e() {
        return f64856b;
    }

    @Override // me.b
    @NotNull
    /* renamed from: h */
    public BlackDeviceController value() {
        return f64857c;
    }
}
