package ai.turbolink.sdk.campaign.properties;

import ai.turbolink.sdk.deeplink.LinkDataProperties;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ClientRewardsProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClientRewardsProperties {
    @NotNull
    private List<ListenerRewardsProperties> rewards = new ArrayList();

    @NotNull
    public final List<ListenerRewardsProperties> getRewards() {
        return this.rewards;
    }

    public final void responseDataToProperties(@NotNull JSONObject responseData) {
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        try {
            if (!responseData.isNull("rewards")) {
                JSONArray jSONArray = responseData.getJSONArray("rewards");
                if (jSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                        JSONArray jSONArray2 = jSONObject.getJSONArray("kv_data");
                        ArrayList arrayList2 = new ArrayList();
                        int length2 = jSONArray2.length();
                        for (int i11 = 0; i11 < length2; i11++) {
                            JSONObject jSONObject2 = jSONArray2.getJSONObject(i11);
                            LinkDataProperties linkDataProperties = new LinkDataProperties();
                            String string = jSONObject2.getString("key");
                            Intrinsics.checkNotNullExpressionValue(string, "kvData.getString(\"key\")");
                            LinkDataProperties key = linkDataProperties.setKey(string);
                            String string2 = jSONObject2.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            Intrinsics.checkNotNullExpressionValue(string2, "kvData.getString(\"value\")");
                            arrayList2.add(key.setValue(string2));
                        }
                        if (jSONObject.has("hash_id") && jSONObject.has("created_at")) {
                            ListenerRewardsProperties listenerRewardsProperties = new ListenerRewardsProperties();
                            String string3 = jSONObject.getString("hash_id");
                            Intrinsics.checkNotNullExpressionValue(string3, "rewardsObj.getString(\"hash_id\")");
                            arrayList.add(listenerRewardsProperties.setHashId(string3).setCreateAt(jSONObject.getInt("created_at")).setKVData(arrayList2));
                        }
                    }
                    try {
                        setRewards(arrayList);
                    } catch (JSONException e10) {
                        e = e10;
                        TurboLinkLogger.w("The parser request returns occurred exception." + e.getMessage());
                    } catch (Exception e11) {
                        e = e11;
                        TurboLinkLogger.w("parser request returns occurred exception." + e.getMessage());
                    }
                }
            }
        } catch (JSONException e12) {
            e = e12;
        } catch (Exception e13) {
            e = e13;
        }
    }

    @NotNull
    public final ClientRewardsProperties setRewards(@NotNull List<ListenerRewardsProperties> rewards) {
        Intrinsics.checkNotNullParameter(rewards, "rewards");
        this.rewards = rewards;
        return this;
    }
}
