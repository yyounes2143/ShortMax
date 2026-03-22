package sq;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.ss.ttm.player.MediaFormat;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f66576a = new g();

    private g() {
    }

    private final PrivacySheetParams.ActionType a(String str) {
        PrivacySheetParams.ActionType[] values;
        for (PrivacySheetParams.ActionType actionType : PrivacySheetParams.ActionType.values()) {
            if (StringsKt.G(actionType.name(), str, true)) {
                return actionType;
            }
        }
        return null;
    }

    private final Bitmap b(String str) {
        Object d10;
        Bitmap decodeByteArray;
        Bitmap bitmap = null;
        try {
            Result.a aVar = Result.f60901b;
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            byte[] g10 = s.g(bytes, 0, 1, null);
            if (g10 == null) {
                decodeByteArray = null;
            } else {
                decodeByteArray = BitmapFactory.decodeByteArray(g10, 0, g10.length);
            }
            d10 = Result.d(decodeByteArray);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (!Result.i(d10)) {
            bitmap = d10;
        }
        return bitmap;
    }

    @Nullable
    public static final PrivacySheetParams c(@NotNull String json) {
        Object d10;
        Object obj;
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(json, "json");
        g gVar = f66576a;
        try {
            Result.a aVar = Result.f60901b;
            JSONObject jSONObject = new JSONObject(json);
            String title = jSONObject.optString("title");
            String subtitle = jSONObject.optString(MediaFormat.KEY_SUBTITLE);
            JSONArray optJSONArray = jSONObject.optJSONArray("actions");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            } else {
                Intrinsics.checkNotNullExpressionValue(optJSONArray, "rootObject.optJSONArray(\"actions\") ?: JSONArray()");
            }
            ArrayList arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
                String optString = jSONObject2.optString("type");
                Intrinsics.checkNotNullExpressionValue(optString, "actionObject.optString(\"type\")");
                PrivacySheetParams.ActionType a10 = gVar.a(optString);
                if (a10 != null) {
                    String actionTitle = jSONObject2.optString("title");
                    String data = jSONObject2.optString("data");
                    String it = jSONObject2.optString("icon");
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    if (StringsKt.t0(it)) {
                        it = null;
                    }
                    if (it != null) {
                        bitmap = gVar.b(it);
                    } else {
                        bitmap = null;
                    }
                    Intrinsics.checkNotNullExpressionValue(actionTitle, "actionTitle");
                    Intrinsics.checkNotNullExpressionValue(data, "data");
                    arrayList.add(new PrivacySheetParams.a(a10, actionTitle, data, bitmap));
                }
            }
            Intrinsics.checkNotNullExpressionValue(title, "title");
            Intrinsics.checkNotNullExpressionValue(subtitle, "subtitle");
            d10 = Result.d(new PrivacySheetParams(title, subtitle, arrayList));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.i(d10)) {
            obj = null;
        } else {
            obj = d10;
        }
        return (PrivacySheetParams) obj;
    }
}
