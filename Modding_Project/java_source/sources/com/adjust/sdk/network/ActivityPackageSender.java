package com.adjust.sdk.network;

import android.content.Context;
import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.adjust.sdk.ActivityKind;
import com.adjust.sdk.ActivityPackage;
import com.adjust.sdk.AdjustFactory;
import com.adjust.sdk.AdjustSigner;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.PackageBuilder;
import com.adjust.sdk.ResponseData;
import com.adjust.sdk.SharedPreferencesManager;
import com.adjust.sdk.TrackingState;
import com.adjust.sdk.Util;
import com.adjust.sdk.network.IActivityPackageSender;
import com.adjust.sdk.network.UtilNetworking;
import com.adjust.sdk.scheduler.SingleThreadCachedScheduler;
import com.adjust.sdk.scheduler.ThreadExecutor;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ActivityPackageSender implements IActivityPackageSender {
    private String basePath;
    private String clientSdk;
    private int connectionTimeout;
    private Context context;
    private String gdprPath;
    private String purchaseVerificationPath;
    private String subscriptionPath;
    private UrlStrategy urlStrategy;
    private ILogger logger = AdjustFactory.getLogger();
    private ThreadExecutor executor = new SingleThreadCachedScheduler("ActivityPackageSender");
    private UtilNetworking.IHttpsURLConnectionProvider httpsURLConnectionProvider = AdjustFactory.getHttpsURLConnectionProvider();
    private UtilNetworking.IConnectionOptions connectionOptions = AdjustFactory.getConnectionOptions();

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IActivityPackageSender.ResponseDataCallbackSubscriber f4344a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ ActivityPackage f4345b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Map f4346c;

        public a(IActivityPackageSender.ResponseDataCallbackSubscriber responseDataCallbackSubscriber, ActivityPackage activityPackage, Map map) {
            this.f4344a = responseDataCallbackSubscriber;
            this.f4345b = activityPackage;
            this.f4346c = map;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4344a.onResponseDataCallback(ActivityPackageSender.this.sendActivityPackageSync(this.f4345b, this.f4346c));
        }
    }

    public ActivityPackageSender(List<String> list, boolean z10, String str, String str2, String str3, String str4, String str5, int i10, Context context) {
        this.basePath = str;
        this.gdprPath = str2;
        this.subscriptionPath = str3;
        this.purchaseVerificationPath = str4;
        this.clientSdk = str5;
        this.connectionTimeout = i10;
        this.context = context;
        this.urlStrategy = new UrlStrategy(AdjustFactory.getBaseUrl(), AdjustFactory.getGdprUrl(), AdjustFactory.getSubscriptionUrl(), AdjustFactory.getPurchaseVerificationUrl(), list, z10);
    }

    private DataOutputStream configConnectionForGET(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        return null;
    }

    private DataOutputStream configConnectionForPOST(HttpsURLConnection httpsURLConnection, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        httpsURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
        httpsURLConnection.setUseCaches(false);
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setDoOutput(true);
        String generatePOSTBodyString = generatePOSTBodyString(map, map2, map3);
        if (generatePOSTBodyString == null) {
            return null;
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        dataOutputStream.writeBytes(generatePOSTBodyString);
        return dataOutputStream;
    }

    private String errorMessage(Throwable th2, String str, ActivityPackage activityPackage) {
        return Util.formatString("%s. (%s)", activityPackage.getFailureMessage(), Util.getReasonString(str, th2));
    }

    private static String extractAuthorizationHeader(Map<String, String> map) {
        return map.remove("authorization");
    }

    private static String extractTargetUrl(Map<String, String> map, ActivityKind activityKind, UrlStrategy urlStrategy) {
        String remove = map.remove("endpoint");
        if (remove != null) {
            return remove;
        }
        return urlStrategy.targetUrlByActivityKind(activityKind);
    }

    private String generatePOSTBodyString(Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        StringBuilder sb2 = new StringBuilder();
        if (map3 != null && !map3.isEmpty()) {
            injectParametersToPOSTStringBuilder(map3, sb2);
        } else {
            if (map != null && !map.isEmpty()) {
                injectParametersToPOSTStringBuilder(map, sb2);
            }
            if (map2 != null && !map2.isEmpty()) {
                injectParametersToPOSTStringBuilder(map2, sb2);
            }
        }
        if (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) == '&') {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    private String generateUrlStringForGET(ActivityKind activityKind, String str, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        URL url = new URL(urlWithExtraPathByActivityKind(activityKind, extractTargetUrl(map3, activityKind, this.urlStrategy)));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(url.getProtocol());
        builder.encodedAuthority(url.getAuthority());
        builder.path(url.getPath());
        builder.appendPath(str);
        this.logger.debug("Making request to url: %s", builder.toString());
        if (map3 != null && !map3.isEmpty()) {
            for (Map.Entry<String, String> entry : map3.entrySet()) {
                builder.appendQueryParameter(entry.getKey(), entry.getValue());
            }
        } else {
            if (map != null) {
                for (Map.Entry<String, String> entry2 : map.entrySet()) {
                    builder.appendQueryParameter(entry2.getKey(), entry2.getValue());
                }
            }
            if (map2 != null) {
                for (Map.Entry<String, String> entry3 : map2.entrySet()) {
                    builder.appendQueryParameter(entry3.getKey(), entry3.getValue());
                }
            }
        }
        return builder.build().toString();
    }

    private String generateUrlStringForPOST(ActivityKind activityKind, String str, Map<String, String> map) {
        String formatString = Util.formatString("%s%s", urlWithExtraPathByActivityKind(activityKind, extractTargetUrl(map, activityKind, this.urlStrategy)), str);
        this.logger.debug("Making request to url : %s", formatString);
        return formatString;
    }

    private void injectParametersToPOSTStringBuilder(Map<String, String> map, StringBuilder sb2) {
        String str;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String encode = URLEncoder.encode(entry.getKey(), "UTF-8");
                String value = entry.getValue();
                if (value != null) {
                    str = URLEncoder.encode(value, "UTF-8");
                } else {
                    str = "";
                }
                sb2.append(encode);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(str);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
    }

    private void localError(Throwable th2, String str, ResponseData responseData, int i10) {
        String errorMessage = errorMessage(th2, str, responseData.activityPackage);
        this.logger.error(errorMessage, new Object[0]);
        responseData.message = errorMessage;
        responseData.willRetry = false;
        responseData.activityPackage.addError(i10);
    }

    private void parseResponse(ResponseData responseData, String str) {
        JSONObject jSONObject;
        if (str.length() == 0) {
            this.logger.error("Empty response string", new Object[0]);
            return;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e10) {
            this.logger.error(errorMessage(e10, "Failed to parse JSON response", responseData.activityPackage), new Object[0]);
            jSONObject = null;
        }
        if (jSONObject == null) {
            return;
        }
        responseData.jsonResponse = jSONObject;
        responseData.message = UtilNetworking.extractJsonString(jSONObject, "message");
        responseData.adid = UtilNetworking.extractJsonString(jSONObject, "adid");
        responseData.timestamp = UtilNetworking.extractJsonString(jSONObject, "timestamp");
        String extractJsonString = UtilNetworking.extractJsonString(jSONObject, "tracking_state");
        if (extractJsonString != null && extractJsonString.equals("opted_out")) {
            responseData.trackingState = TrackingState.OPTED_OUT;
        }
        responseData.askIn = UtilNetworking.extractJsonLong(jSONObject, "ask_in");
        responseData.retryIn = UtilNetworking.extractJsonLong(jSONObject, "retry_in");
        responseData.continueIn = UtilNetworking.extractJsonLong(jSONObject, "continue_in");
        responseData.attribution = Util.attributionFromJson(jSONObject.optJSONObject("attribution"), Util.getSdkPrefixPlatform(this.clientSdk));
        responseData.resolvedDeeplink = UtilNetworking.extractJsonString(jSONObject, "resolved_click_url");
        responseData.controlParams = jSONObject.optJSONObject("control_params");
    }

    private void remoteError(Throwable th2, String str, ResponseData responseData, Integer num) {
        String str2 = errorMessage(th2, str, responseData.activityPackage) + " Will retry later";
        this.logger.error(str2, new Object[0]);
        responseData.message = str2;
        responseData.willRetry = true;
        responseData.activityPackage.addError(num.intValue());
    }

    private boolean shouldRetryToSendWithUrlStrategy(ResponseData responseData) {
        if (responseData.jsonResponse != null) {
            this.logger.debug("Will not retry with current url strategy, already got a valid json response", new Object[0]);
            this.urlStrategy.resetAfterSuccess();
            return false;
        } else if (this.urlStrategy.shouldRetryAfterFailure(responseData.activityKind)) {
            this.logger.error("Failed with current url strategy, but it will retry with new", new Object[0]);
            return true;
        } else {
            this.logger.error("Failed with current url strategy and it will not retry", new Object[0]);
            return false;
        }
    }

    private Map<String, String> signParameters(ActivityPackage activityPackage, Map<String, String> map) {
        HashMap hashMap = new HashMap(activityPackage.getParameters());
        if (map != null) {
            hashMap.putAll(map);
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put("client_sdk", activityPackage.getClientSdk());
        hashMap2.put("activity_kind", activityPackage.getActivityKind().toString());
        hashMap2.put("endpoint", this.urlStrategy.targetUrlByActivityKind(activityPackage.getActivityKind()));
        JSONObject controlParamsJson = SharedPreferencesManager.getDefaultInstance(this.context).getControlParamsJson();
        if (controlParamsJson != null) {
            Iterator<String> keys = controlParamsJson.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    if (controlParamsJson.get(next) instanceof String) {
                        hashMap2.put(next, (String) controlParamsJson.get(next));
                    }
                } catch (JSONException unused) {
                    this.logger.error("JSONException while iterating control params", new Object[0]);
                }
            }
        }
        return AdjustSigner.sign(hashMap, hashMap2, this.context, this.logger);
    }

    private void tryToGetResponse(ResponseData responseData) {
        boolean z10;
        String generateUrlStringForPOST;
        DataOutputStream configConnectionForPOST;
        boolean z11;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                String extractAuthorizationHeader = extractAuthorizationHeader(responseData.signedParameters);
                                this.logger.verbose("authorizationHeader: %s", extractAuthorizationHeader);
                                boolean z12 = true;
                                if (responseData.activityPackage.getActivityKind() == ActivityKind.ATTRIBUTION) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z10) {
                                    generateUrlStringForPOST = generateUrlStringForGET(responseData.activityPackage.getActivityKind(), responseData.activityPackage.getPath(), responseData.activityPackage.getParameters(), responseData.sendingParameters, responseData.signedParameters);
                                } else {
                                    generateUrlStringForPOST = generateUrlStringForPOST(responseData.activityPackage.getActivityKind(), responseData.activityPackage.getPath(), responseData.signedParameters);
                                }
                                HttpsURLConnection generateHttpsURLConnection = this.httpsURLConnectionProvider.generateHttpsURLConnection(new URL(generateUrlStringForPOST));
                                this.connectionOptions.applyConnectionOptions(generateHttpsURLConnection, this.clientSdk, this.connectionTimeout);
                                if (extractAuthorizationHeader != null) {
                                    generateHttpsURLConnection.setRequestProperty("Authorization", extractAuthorizationHeader);
                                }
                                if (z10) {
                                    configConnectionForPOST = configConnectionForGET(generateHttpsURLConnection);
                                } else {
                                    configConnectionForPOST = configConnectionForPOST(generateHttpsURLConnection, responseData.activityPackage.getParameters(), responseData.sendingParameters, responseData.signedParameters);
                                }
                                Integer readConnectionResponse = readConnectionResponse(generateHttpsURLConnection, responseData);
                                if (responseData.jsonResponse != null && responseData.retryIn == null && readConnectionResponse != null && readConnectionResponse.intValue() == 200) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                responseData.success = z11;
                                JSONObject jSONObject = responseData.jsonResponse;
                                if (jSONObject != null && responseData.retryIn == null) {
                                    z12 = false;
                                }
                                responseData.willRetry = z12;
                                if (jSONObject == null) {
                                    responseData.activityPackage.addError(1000);
                                } else if (responseData.retryIn != null) {
                                    responseData.activityPackage.addError(1001);
                                }
                                if (configConnectionForPOST != null) {
                                    try {
                                        configConnectionForPOST.flush();
                                        configConnectionForPOST.close();
                                    } catch (IOException e10) {
                                        this.logger.error(errorMessage(e10, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                                    }
                                }
                            } catch (Throwable th2) {
                                if (0 != 0) {
                                    try {
                                        dataOutputStream.flush();
                                        dataOutputStream.close();
                                    } catch (IOException e11) {
                                        this.logger.error(errorMessage(e11, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                                    }
                                }
                                throw th2;
                            }
                        } catch (IOException e12) {
                            remoteError(e12, "Request failed", responseData, 1007);
                            if (0 != 0) {
                                try {
                                    dataOutputStream.flush();
                                    dataOutputStream.close();
                                } catch (IOException e13) {
                                    this.logger.error(errorMessage(e13, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                                }
                            }
                        }
                    } catch (MalformedURLException e14) {
                        localError(e14, "Malformed URL", responseData, 1003);
                        if (0 != 0) {
                            try {
                                dataOutputStream.flush();
                                dataOutputStream.close();
                            } catch (IOException e15) {
                                this.logger.error(errorMessage(e15, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                            }
                        }
                    }
                } catch (ProtocolException e16) {
                    localError(e16, "Protocol Error", responseData, 1004);
                    if (0 != 0) {
                        try {
                            dataOutputStream.flush();
                            dataOutputStream.close();
                        } catch (IOException e17) {
                            this.logger.error(errorMessage(e17, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                        }
                    }
                }
            } catch (SSLHandshakeException e18) {
                remoteError(e18, "Certificate failed", responseData, 1006);
                if (0 != 0) {
                    try {
                        dataOutputStream.flush();
                        dataOutputStream.close();
                    } catch (IOException e19) {
                        this.logger.error(errorMessage(e19, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                localError(th3, "Sending SDK package", responseData, 1100);
                if (0 != 0) {
                    try {
                        dataOutputStream.flush();
                        dataOutputStream.close();
                    } catch (IOException e20) {
                        this.logger.error(errorMessage(e20, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                    }
                }
            }
        } catch (UnsupportedEncodingException e21) {
            localError(e21, "Failed to encode parameters", responseData, 1002);
            if (0 != 0) {
                try {
                    dataOutputStream.flush();
                    dataOutputStream.close();
                } catch (IOException e22) {
                    this.logger.error(errorMessage(e22, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                }
            }
        } catch (SocketTimeoutException e23) {
            remoteError(e23, "Request timed out", responseData, 1005);
            if (0 != 0) {
                try {
                    dataOutputStream.flush();
                    dataOutputStream.close();
                } catch (IOException e24) {
                    this.logger.error(errorMessage(e24, "Flushing and closing connection output stream", responseData.activityPackage), new Object[0]);
                }
            }
        }
    }

    private Map<String, String> updateSendingParameters(Map<String, String> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        PackageBuilder.addString(map, "sent_at", Util.dateFormatter.format(Long.valueOf(System.currentTimeMillis())));
        return map;
    }

    private String urlWithExtraPathByActivityKind(ActivityKind activityKind, String str) {
        if (activityKind == ActivityKind.GDPR) {
            if (this.gdprPath != null) {
                return str + this.gdprPath;
            }
        } else if (activityKind == ActivityKind.SUBSCRIPTION) {
            if (this.subscriptionPath != null) {
                return str + this.subscriptionPath;
            }
        } else if (activityKind == ActivityKind.PURCHASE_VERIFICATION) {
            if (this.purchaseVerificationPath != null) {
                return str + this.purchaseVerificationPath;
            }
        } else if (this.basePath != null) {
            return str + this.basePath;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
        if (r7 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer readConnectionResponse(javax.net.ssl.HttpsURLConnection r7, com.adjust.sdk.ResponseData r8) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            r2 = 0
            r7.connect()     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            int r3 = r7.getResponseCode()     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            java.lang.Integer r2 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            r4 = 400(0x190, float:5.6E-43)
            if (r3 < r4) goto L20
            java.io.InputStream r3 = r7.getErrorStream()     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            goto L24
        L1b:
            r8 = move-exception
            goto Lb2
        L1e:
            r3 = move-exception
            goto L38
        L20:
            java.io.InputStream r3 = r7.getInputStream()     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
        L24:
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
        L2e:
            java.lang.String r4 = r3.readLine()     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            if (r4 == 0) goto L49
            r0.append(r4)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1e
            goto L2e
        L38:
            java.lang.String r4 = "Connecting and reading response"
            com.adjust.sdk.ActivityPackage r5 = r8.activityPackage     // Catch: java.lang.Throwable -> L1b
            java.lang.String r3 = r6.errorMessage(r3, r4, r5)     // Catch: java.lang.Throwable -> L1b
            com.adjust.sdk.ILogger r4 = r6.logger     // Catch: java.lang.Throwable -> L1b
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L1b
            r4.error(r3, r5)     // Catch: java.lang.Throwable -> L1b
            if (r7 == 0) goto L4c
        L49:
            r7.disconnect()
        L4c:
            int r7 = r0.length()
            if (r7 != 0) goto L5c
            com.adjust.sdk.ILogger r7 = r6.logger
            java.lang.Object[] r8 = new java.lang.Object[r1]
            java.lang.String r0 = "Empty response string buffer"
            r7.error(r0, r8)
            return r2
        L5c:
            int r7 = r2.intValue()
            r3 = 429(0x1ad, float:6.01E-43)
            if (r7 != r3) goto L6e
            com.adjust.sdk.ILogger r7 = r6.logger
            java.lang.Object[] r8 = new java.lang.Object[r1]
            java.lang.String r0 = "Too frequent requests to the endpoint (429)"
            r7.error(r0, r8)
            return r2
        L6e:
            java.lang.String r7 = r0.toString()
            com.adjust.sdk.ILogger r0 = r6.logger
            java.lang.Object[] r1 = new java.lang.Object[]{r7}
            java.lang.String r3 = "Response string: %s"
            r0.debug(r3, r1)
            r6.parseResponse(r8, r7)
            org.json.JSONObject r7 = r8.controlParams
            if (r7 == 0) goto L8f
            android.content.Context r7 = r6.context
            com.adjust.sdk.SharedPreferencesManager r7 = com.adjust.sdk.SharedPreferencesManager.getDefaultInstance(r7)
            org.json.JSONObject r0 = r8.controlParams
            r7.saveControlParams(r0)
        L8f:
            java.lang.String r7 = r8.message
            if (r7 != 0) goto L94
            goto Lb1
        L94:
            int r8 = r2.intValue()
            r0 = 200(0xc8, float:2.8E-43)
            java.lang.String r1 = "Response message: %s"
            if (r8 != r0) goto La8
            com.adjust.sdk.ILogger r8 = r6.logger
            java.lang.Object[] r7 = new java.lang.Object[]{r7}
            r8.info(r1, r7)
            goto Lb1
        La8:
            com.adjust.sdk.ILogger r8 = r6.logger
            java.lang.Object[] r7 = new java.lang.Object[]{r7}
            r8.error(r1, r7)
        Lb1:
            return r2
        Lb2:
            if (r7 == 0) goto Lb7
            r7.disconnect()
        Lb7:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.network.ActivityPackageSender.readConnectionResponse(javax.net.ssl.HttpsURLConnection, com.adjust.sdk.ResponseData):java.lang.Integer");
    }

    @Override // com.adjust.sdk.network.IActivityPackageSender
    public void sendActivityPackage(ActivityPackage activityPackage, Map<String, String> map, IActivityPackageSender.ResponseDataCallbackSubscriber responseDataCallbackSubscriber) {
        this.executor.submit(new a(responseDataCallbackSubscriber, activityPackage, map));
    }

    @Override // com.adjust.sdk.network.IActivityPackageSender
    public ResponseData sendActivityPackageSync(ActivityPackage activityPackage, Map<String, String> map) {
        ResponseData buildResponseData;
        do {
            Map<String, String> updateSendingParameters = updateSendingParameters(map);
            buildResponseData = ResponseData.buildResponseData(activityPackage, updateSendingParameters, signParameters(activityPackage, updateSendingParameters));
            tryToGetResponse(buildResponseData);
        } while (shouldRetryToSendWithUrlStrategy(buildResponseData));
        return buildResponseData;
    }
}
