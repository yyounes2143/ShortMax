package ai.turbolink.sdk.deeplink;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LinkData.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkData extends JSONArray {
    @NotNull
    public final LinkData addKeyValue(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            put(new JSONObject().put("key", key).put(AppMeasurementSdk.ConditionalUserProperty.VALUE, value));
        } catch (JSONException e10) {
            TurboLinkLogger.w("Exception occurred when adding key:value to the value of a user-defined parameter." + e10.getMessage());
        }
        return this;
    }
}
