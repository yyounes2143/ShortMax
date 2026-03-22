package com.vungle.ads.internal.network;

import androidx.annotation.Keep;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleApi.kt */
@Keep
@Metadata
/* loaded from: classes7.dex */
public interface VungleApi {

    /* compiled from: VungleApi.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Call pingTPAT$default(VungleApi vungleApi, String str, String str2, HttpMethod httpMethod, Map map, RequestBody requestBody, int i10, Object obj) {
            Map map2;
            RequestBody requestBody2;
            if (obj == null) {
                if ((i10 & 4) != 0) {
                    httpMethod = HttpMethod.GET;
                }
                HttpMethod httpMethod2 = httpMethod;
                if ((i10 & 8) != 0) {
                    map2 = null;
                } else {
                    map2 = map;
                }
                if ((i10 & 16) != 0) {
                    requestBody2 = null;
                } else {
                    requestBody2 = requestBody;
                }
                return vungleApi.pingTPAT(str, str2, httpMethod2, map2, requestBody2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pingTPAT");
        }
    }

    @Nullable
    Call<AdPayload> ads(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody);

    @Nullable
    Call<ConfigPayload> config(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody);

    @NotNull
    Call<Void> pingTPAT(@NotNull String str, @NotNull String str2, @NotNull HttpMethod httpMethod, @Nullable Map<String, String> map, @Nullable RequestBody requestBody);

    @Nullable
    Call<Void> ri(@NotNull String str, @NotNull String str2, @NotNull CommonRequestBody commonRequestBody);

    @NotNull
    Call<Void> sendAdMarkup(@NotNull String str, @NotNull RequestBody requestBody);

    @NotNull
    Call<Void> sendErrors(@NotNull String str, @NotNull String str2, @NotNull RequestBody requestBody);

    @NotNull
    Call<Void> sendMetrics(@NotNull String str, @NotNull String str2, @NotNull RequestBody requestBody);
}
