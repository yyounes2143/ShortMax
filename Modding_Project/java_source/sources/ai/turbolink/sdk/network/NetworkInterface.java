package ai.turbolink.sdk.network;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NetworkInterface.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class NetworkInterface {
    private final ServerResponse processNetworkResponseToServer(TurboLinkNetworkResponse turboLinkNetworkResponse, String str, String str2) {
        String responseData = turboLinkNetworkResponse.getResponseData();
        int responseCode = turboLinkNetworkResponse.getResponseCode();
        ServerResponse serverResponse = new ServerResponse(str, responseCode, str2, "");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("API server returned: status[%d]; Data:[%s]", Arrays.copyOf(new Object[]{Integer.valueOf(responseCode), responseData}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        TurboLinkLogger.v(format);
        try {
            serverResponse.setResponseBody(new JSONObject(responseData));
        } catch (JSONException e10) {
            TurboLinkLogger.v("Json parser exception:" + e10.getMessage());
        }
        return serverResponse;
    }

    public abstract void doGet(@NotNull String str);

    @NotNull
    public abstract TurboLinkNetworkResponse doPost(@NotNull String str, @NotNull JSONObject jSONObject);

    @NotNull
    public final ServerResponse doRestfulPost(@NotNull String url, @NotNull JSONObject payload) {
        String str;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(payload, "payload");
        long currentTimeMillis = System.currentTimeMillis();
        TurboLinkLogger.v("[POST] The submitted post request url is: " + url);
        TurboLinkLogger.v("[POST] The post request body is: " + payload);
        TurboLink.Companion companion = TurboLink.Companion;
        if (companion.getProjectStatus() != 1 && companion.getDeviceStatus() != 10) {
            if (!payload.has("request_id")) {
                str = "";
            } else {
                str = payload.getString("request_id");
                Intrinsics.checkNotNullExpressionValue(str, "payload.getString(\"request_id\")");
            }
            try {
                try {
                    TurboLinkNetworkResponse doPost = doPost(url, payload);
                    ServerResponse processNetworkResponseToServer = processNetworkResponseToServer(doPost, "", doPost.getRequestID());
                    if (companion.getInstance() != null && str.length() != 0) {
                        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                        TurboLink.SessionObj sessionObj = TurboLink.SessionObj.INSTANCE;
                        sessionObj.setPreviousRequestId(str);
                        sessionObj.setPreviousRequestTotalTime(currentTimeMillis2);
                        TurboLinkLogger.i("Request time is: " + currentTimeMillis2 + " ms");
                    }
                    return processNetworkResponseToServer;
                } catch (TurboLinkNetworkException e10) {
                    TurboLinkLogger.e("Exception: " + e10.getTurboLinkErrMessage());
                    ServerResponse serverResponse = new ServerResponse("", e10.getTurboLinkErrCode(), "", e10.getTurboLinkErrMessage());
                    if (TurboLink.Companion.getInstance() != null && str.length() != 0) {
                        long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                        TurboLink.SessionObj sessionObj2 = TurboLink.SessionObj.INSTANCE;
                        sessionObj2.setPreviousRequestId(str);
                        sessionObj2.setPreviousRequestTotalTime(currentTimeMillis3);
                        TurboLinkLogger.i("Request time is: " + currentTimeMillis3 + " ms");
                    }
                    return serverResponse;
                }
            } catch (Throwable th2) {
                if (TurboLink.Companion.getInstance() != null && str.length() != 0) {
                    long currentTimeMillis4 = System.currentTimeMillis() - currentTimeMillis;
                    TurboLink.SessionObj sessionObj3 = TurboLink.SessionObj.INSTANCE;
                    sessionObj3.setPreviousRequestId(str);
                    sessionObj3.setPreviousRequestTotalTime(currentTimeMillis4);
                    TurboLinkLogger.i("Request time is: " + currentTimeMillis4 + " ms");
                }
                throw th2;
            }
        }
        return new ServerResponse("", 2001, "", "Prohibited user.");
    }
}
